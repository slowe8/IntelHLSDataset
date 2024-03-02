# Authors: Allison Seigler (UT-Austin), Sean Lowe (ASU)
# Description: Parses a Vitis .tcl file with specifications for HLS compilation, turns those into
#              equivalent Intel i++ source files with inserted pragmas
# Arguments:
#           1. template tcl file to pull from (ex "opt_template.tcl")
#           2. source file to replicate (ex "atax/src/atax.c")
#           3. name of benchmark we are working with (ex "atax")
# Example call: "python3 templater_polybench.py opt_template.tcl atax/src/atax.c atax"


import os
import sys

templateFile = open(sys.argv[1], 'r')
bench = open(sys.argv[2], 'r')
benchName = sys.argv[3]

components = []
partitionFactors = []
partitionNames = []
partitionLoopNames = []
loopNames = []
loopFactors = []
partitionPipelines = []
partitions = False


# Nodes are for creating all permutations we need of different loop names and factors
class Node:
    def __init__(self) :
        self.name = "\0"
        self.factor = 0
        self.pipelined = False
        self.visited = 0
        self.children = []
        self.parent = None
    
def Populate(parent, sections, name, pipelined, factor, level):
    newNode = Node()
    if parent is not None:
        newNode.parent = parent
        newNode.name = name
        newNode.factor = factor
        newNode.pipelined = pipelined
    if level is len(sections):
        return newNode
    for loop in sections[level]:
        for factor in loop["factors"]:
            child = Populate(newNode, sections, loop["name"], loop["pipelined"], factor, level + 1)
            newNode.children.append(child)
    return newNode

def CreateFactors(node, factorList, level, total):
    if node.visited == 1:
        return False
    for child in node.children:
        if CreateFactors(child, factorList, (level+1), total):
            factorList.append({"name": child.name, "factor": child.factor, "pipelined":child.pipelined})
            return True
    node.visited = 1
    if level == total:
        return True
    else :
        return False


isLoop = False
newLoopSection = False
currSection = -1
loopSections = list()
while True:
    line = templateFile.readline()
    if not line:
        break

    line = line.strip()
    if 'inline' in line: # does nothing currently
        line_s = line.split()
        components.append(line_s[1])
    elif 'array_partition,' in line: # indicates beginning of array partition specifications
        line_s = line.split(',')
        factors = line_s[2].replace('[', '')
        factors = factors.replace(']', '')
        factors = factors.split()

        for n in factors:
            partitionFactors.append(int(n))
        partitions = True
        continue
    elif partitions: # getting names of arrays to partition and array-related loops whose unroll factors
                     # always match array partitions
        if "set_directive_array_partition" in line:
            line_s = line.split(" ")
            partitionNames.append(line_s[-1])
            partitionNames[-1] = partitionNames[-1].replace("\n", "")
        elif "set_directive_unroll" in line:
            line_s = line.split(" ")
            partitionLoopName = line_s[-1].split("/")[-1]
            partitionLoopName = partitionLoopName.replace("\"", "")
            partitionLoopName = partitionLoopName.replace("\n", "")
            partitionLoopNames.append(partitionLoopName)
            partitionPipelines.append(False)
        elif "set_directive_pipeline" in line:
            line_s = line.split(" ")
            partitionLoopName = line_s[-1].split("/")[-1]
            partitionLoopName = partitionLoopName.replace("\"", "")
            partitionLoopName = partitionLoopName.replace("\n", "")
            partitionPipelines[partitionLoopNames.index(partitionLoopName)] = True
        elif "loop_opt" in line: # indicates beginning of a loop section
            partitions = False
            isLoop = True
            newLoopSection = True
    elif "loop_opt" in line:
        isLoop = True
        newLoopSection = True
    elif isLoop: # we are parsing loop sections here, starting a new section every time we encounter loop_opt
                 # only one loop optimization is selected from each loop section for each file
        if newLoopSection:
            loopSections.append([])
            currSection += 1
            newLoopSection = False
        if "set_directive" in line:
            isLoop = False
            continue

        line_s = line.split(',')
        name = line_s[1]
        factors = line_s[-1].replace('[', '')
        factors = factors.replace(']','')
        factors = factors.split()
        pipelined = False
        if line_s[2] == "pipeline":
            pipelined = True
        newLoop = {}
        newLoop["name"] = name
        newLoop["factors"] = factors
        newLoop["pipelined"] = pipelined
        loopSections[currSection].append(newLoop)


root = Populate(None, loopSections, "\0", False, 0, 0)
allFactors = []
factorList = list()
i = 0
try:
    while CreateFactors(root, factorList, 0, len(loopSections)):
        allFactors.append(factorList)
        factorList = list()
except IndexError:
    print("index error here idk why\n")


count = 1
isPartitionLoop = False

for partitionFactor in partitionFactors:
    for factorList in allFactors:
        #print(factorList)
        bench.seek(0,0)
        filename = f'' + benchName + '/intelversions/' + benchName + '_' + str(count) + '.c'
        
        if os.path.isfile(filename):
            os.remove(filename)

        newBench = open(filename, 'a+')

        for line in bench:
            newLine = line
            isPartitionLoop = False
            if 'DATA_TYPE' in line:
                if benchName not in line:
                    array = line.split(" ")[-1]
                    array = array.split("[")[0]
                    if array in partitionNames:
                        newBench.write("hls_numbanks(" + str(partitionFactor) + ")\n") # we can add bankbits or bankwidth here too, just not sure about the state of things
            else:
                for partitionLoopName in partitionLoopNames:
                    if partitionLoopName in line and ":" in line:
                        if not partitionPipelines[partitionLoopNames.index(partitionLoopName)]:
                            newBench.write("#pragma disable_loop_pipelining\n")
                        newBench.write("#pragma unroll " + str(partitionFactor) + "\n")
                        lineParsed = line.split(":")
                        newLine = lineParsed[1]
                        isPartitionLoop = True
                if not isPartitionLoop:
                    for loop in factorList:
                        if loop["name"] in line and ":" in line:
                            if not loop["pipelined"]:
                                newBench.write("#pragma disable_loop_pipelining\n")
                            newBench.write("#pragma unroll " + loop["factor"] + '\n')
                            lineParsed = line.split(":")
                            newLine = lineParsed[1]
            if "register" in newLine:
                newLine = newLine.replace("register", "")

            newBench.write(newLine)

        newBench.close()
        count += 1

