# Example call: "python templater.py aes_table/template_table.tcl aes_table/aes_table.c aes_table"

import os
import sys
import re

template_file = open(sys.argv[1], 'r')
bench = open(sys.argv[2], 'r')
bench_name = sys.argv[3]

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
        self.names = []
        self.factor = 0
        self.pipelined = False
        self.visited = 0
        self.children = []
        self.parent = None
    
def Populate(parent, sections, names, pipelined, factor, level):
    newNode = Node()
    if parent is not None:
        newNode.parent = parent
        newNode.names = names
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
            factorList.append({"name": child.names, "factor": child.factor, "pipelined":child.pipelined})
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
for line in template_file:

    if 'inline' in line:
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
            if line_s[-1] != "\n": # fixed error where if the tcl file line ended with "var \n" instead of "var\n" it would mess everything up
                                   # yes i know there is a better way to do this im tired im so tired pls let me see my family (joke)
                partitionNames.append(line_s[-1])
            else:
                partitionNames.append(line_s[-2])
            partitionNames[-1] = partitionNames[-1].replace("\n", "")
        elif "set_directive_unroll" in line: #leaving this in here for now because it doesn't hurt, but we don't need for machsuite
            line_s = line.split(" ")
            partitionLoopName = line_s[-1].split("/")[-1]
            partitionLoopName = partitionLoopName.replace("\"", "")
            partitionLoopName = partitionLoopName.replace("\n", "")
            partitionLoopNames.append(partitionLoopName)
            partitionPipelines.append(False)
        elif "set_directive_pipeline" in line: #leaving this in here for now because it doesn't hurt, but we don'tneed for machsuite
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
        if "/" in line_s[1]:
            loopNamesTemp = line_s[1].split("/")
        else:
            loopNamesTemp = [line_s[1]]
        factors = line_s[-1].replace('[', '')
        factors = factors.replace(']','')
        factors = factors.split()
        pipelined = False
        if line_s[2] == "pipeline":
            pipelined = True
        newLoop = {}
        newLoop["name"] = loopNamesTemp
        newLoop["factors"] = factors
        newLoop["pipelined"] = pipelined
        loopSections[currSection].append(newLoop)

root = Populate(None, loopSections, [], False, 0, 0)
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
        filename = f'./' + bench_name + '/intelversions/' + bench_name + '_' + str(count) + '.c'
        
        if os.path.isfile(filename):
            os.remove(filename)

        newBench = open(filename, 'a+')
        isFunctionDecl = False
        for line in bench:
            newLine = line
            isFunctionDecl = False
            isPartitionLoop = False
            firstRun = True
            #print(partitionNames)
            for partitionName in partitionNames:
                if partitionName in line:
                    if 'component' in line:
                        isFunctionDecl = True
                        split_function = re.split('[()[\]{}\s+]', line)
                        #print(split_function)
                        array_idx = 0
                        

                        for i in range(len(split_function)):
                            if partitionName == split_function[i]:
                                #print(str(i))
                                break

                        array_type = split_function[i - 1]
                        array_dim = split_function[i + 1]

                        new_line_b = "hls_avalon_slave_memory_argument(" + array_dim + ") "
                        new_line_e = array_type  + " *" + partitionName

                        directives = "hls_numbanks(" + str(partitionFactor) + ") hls_bankwidth(sizeof(" + array_type + ")) "
                        
                        line_to_replace = array_type + ' ' + partitionName + '[' + str(array_dim) + ']'
                        newLine = newLine.replace(line_to_replace, new_line_b + directives + new_line_e)
                        #print(newLine)


            if not isFunctionDecl:
                for partitionLoopName in partitionLoopNames:
                    print("machsuite probably shouldn't be here")
                    if partitionLoopName in line and ":" in line:
                        if not partitionPipelines[partitionLoopNames.index(partitionLoopName)]:
                            newBench.write("#pragma disable_loop_pipelining\n")
                        newBench.write("#pragma unroll " + str(partitionFactor) + "\n")
                        lineParsed = line.split(":")
                        newLine = lineParsed[1]
                        isPartitionLoop = True
                if not isPartitionLoop:
                    for loop in factorList:
                        for name in loop["name"]:
                            if name in line and ":" in line:
                                if not loop["pipelined"]:
                                    newBench.write("#pragma disable_loop_pipelining\n")
                                newBench.write("#pragma unroll " + loop["factor"] + '\n')
                                lineParsed = line.split(":")
                                newLine = lineParsed[1]
                if "register" in newLine:
                    newLine = newLine.replace("register", "hls_register")
                if ("hls_hls_register" in newLine):
                    newLine = newLine.replace("hls_hls_register", "hls_register")

            newBench.write(newLine)

        newBench.close()
        count += 1
