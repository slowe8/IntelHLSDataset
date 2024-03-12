# Example call: "python templater.py aes_table/template_table.tcl aes_table/aes_table.c aes_table"

import os
import sys
import re

template_file = open(sys.argv[1], 'r')
bench = open(sys.argv[2], 'r')
bench_name = sys.argv[3]

partitionFactors = []
partitionNames = []
partitionLoopNames = []
partition2Factors = []
partition2Names = []
loopNames = []
loopFactors = []
partitionPipelines = []
loopTemplates = []
activePartition = False

datatype_pattern = r'\b(void|int|float|double|char|long|short|uint8_t|uint16_t|uint32_t|uint64_t|int8_t|int16_t|int32_t|int64_t)\b(?:\s*\*+\s*)?'

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
            child = Populate(newNode, sections, loop["names"], loop["pipelined"], factor, level + 1)
            newNode.children.append(child)
    return newNode

def CreateFactors(node, factorList, level, total):
    if node.visited == 1:
        return False
    for child in node.children:
        if CreateFactors(child, factorList, (level+1), total):
            factorList.append({"names": child.names, "factor": child.factor, "pipelined":child.pipelined})
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
loopnames = list()
partitionsIdx = 0
partitionCount = 0
firstNonTemp = False
nonTempIdx = 0
for line in template_file:
    line = line.strip()
    if not line:
        continue
    if line[0] == "#":
        continue
    if 'array_partition,' in line: # indicates beginning of array partition specifications
        line_s = line.split(',')
        factors = line_s[2].replace('[', '')
        factors = factors.replace(']', '')
        factors = factors.split()

        for n in factors:
            if partitionCount == 1:
                partition2Factors.append(int(n))
            else :
                partitionFactors.append(int(n))
        partitionCount += 1
        activePartition = True
        continue
    elif activePartition: # getting names of arrays to partition and array-related loops whose unroll factors
                     # always match array activePartition
        if "set_directive_array_partition" in line:
            line_s = line.split(" ")
            if partitionCount == 1:
                partitionNames.append(line_s[-1])
                partitionNames[-1] = partitionNames[-1].replace("\n", "")
            elif partitionCount == 2:
                partition2Names.append(line_s[-1])
                partition2Names[-1] = partition2Names[-1].replace("\n", "")

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
            activePartition = False
            isLoop = True
            newLoopSection = True
            loopSections.append([])
            loopTemplates = list() #DECLARE
            continue
    elif "loop_opt" in line:
        isLoop = True
        loopTemplates = list() #DECLARE
        newLoopSection = True
        loopSections.append([])
        continue
    elif isLoop: # we are parsing loop sections here, starting a new section every time we encounter loop_opt
                 # only one loop optimization is selected from each loop section for each file

        if "set_directive_pipeline" in line: #ignoring for now bc all machsuite loops are pipelined and the way i do this now is a pain in the ahh
            if newLoopSection:
                newLoopSection = False
        
        if "set_directive_unroll" in line:
            if newLoopSection:
                newLoopSection = False
            line_s = line.split(" ")

            if "/" in line_s[-1]:
                loopname = line_s[-1].split("/")[-1]
            else:
                loopname = line_s[-1]
            if loopname == "[name]":
                for template in loopTemplates:
                    loopSections[currSection].append({"names": template[0], "factors": template[1], "pipelined": template[2]})
            else :
                if firstNonTemp:
                    for template in loopTemplates:
                        loopSections[currSection].append({"names": [loopname], "factors": template[1], "pipelined": template[2]})
                    firstNonTemp = False
                    nonTempIdx = len(loopSections[currSection]) - len(loopTemplates)
                    continue
                else:
                    i = 0
                    for template in loopTemplates:
                        loopSections[currSection][nonTempIdx + i]["names"].append(loopname)
                        i+=1

        if "loop_opt" in line:
            loopTemplates = list() #DECLARE
            currSection += 1
            isLoop = True
            newLoopSection = True
            loopSections.append([])
            continue
            
        if newLoopSection:
            firstNonTemp = True
            line_s = line.split(",")
            if "/" in line_s[1]:
                loopTemplateNames = line_s[1].split("/")
            else:
                loopTemplateNames = [line_s[1]]
            tempFactors = line_s[-1].replace("[", "")
            tempFactors = tempFactors.replace("]", "")
            loopTemplateFactors = tempFactors.split(" ")
            if "pipeline," in line:
                loopTemplatePipeline = True
            else:
                loopTemplatePipeline = False
            loopTemplates.append([loopTemplateNames, loopTemplateFactors, loopTemplatePipeline])




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


if partitionCount == 1:
    partition2Factors = [1]

count = 1
isPartitionLoop = False
for partition2Factor in partition2Factors:
    for partitionFactor in partitionFactors:
        for factorList in allFactors:
            bench.seek(0,0)
            filename = f'./' + bench_name + '/intelversions/' + bench_name + '_' + str(count) + '.c'
            
            if os.path.isfile(filename):
                os.remove(filename)

            newBench = open(filename, 'a+')
            isFunctionDecl = False
            for line in bench:
                newLine = line
                line = line.strip()
                isFunctionDecl = False
                isPartitionLoop = False
                firstRun = True
                if partitionCount == 2:
                    for partition2Name in partition2Names:
                        if partition2Name in line:
                            line_s = line.split(" ")
                            if (line_s[0] == 'component') or (line_s[0] == 'void' and ("(" in line_s[1] or (line_s[2][0] == "("))):
                                isFunctionDecl = True
                                split_function = re.split('[()[\]{}\s+]', line)
                                array_idx = 0
                                
                                for i in range(len(split_function)):
                                    if partition2Name == split_function[i]:
                                        break

                                array_type = split_function[i - 1]
                                array_dim = split_function[i + 1]

                                new_line_b = "hls_avalon_slave_memory_argument(" + array_dim + ") "
                                new_line_e = array_type  + " *" + partition2Name

                                directives = "hls_numbanks(" + str(partition2Factor) + ") hls_bankwidth(sizeof(" + array_type + ")) "
                                
                                line_to_replace = array_type + ' ' + partition2Name + '[' + str(array_dim) + ']'
                                newLine = newLine.replace(line_to_replace, new_line_b + directives + new_line_e)
                            elif '(' in line or ')' in line:
                                continue
                            else:
                                isFunctionDecl = False
                                array_type = re.search(datatype_pattern, newLine)
                                if array_type:
                                    newLine = "hls_numbanks(" + str(partition2Factor) + ")\nhls_bankwidth(sizeof(" + array_type.group() + "))\n" + newLine

                                first = line.split(" ")[0]
                                if ("_t" in first) or (first == "TYPE") :
                                    newLine = "hls_numbanks(" + str(partition2Factor) + ")\nhls_bankwidth(sizeof(" + first + "))\n" + newLine
                for partitionName in partitionNames:
                    if partitionName in line:
                        line_s = line.split(" ")
                        if (line_s[0] == 'component') or (line_s[0] == 'void' and ("(" in line_s[1] or (line_s[2][0] == "("))):
                            isFunctionDecl = True
                            split_function = re.split('[()[\]{}\s+]', line)
                            array_idx = 0

                            found = False
                            for i in range(len(split_function)):
                                if partitionName == split_function[i]:
                                    found = True
                                    break

                            if found:
                                array_type = split_function[i - 1]
                                array_dim = split_function[i + 1]

                                new_line_b = "hls_avalon_slave_memory_argument(" + array_dim + ") "
                                new_line_e = array_type  + " *" + partitionName

                                directives = "hls_numbanks(" + str(partitionFactor) + ") hls_bankwidth(sizeof(" + array_type + ")) "
                                
                                line_to_replace = array_type + ' ' + partitionName + '[' + str(array_dim) + ']'
                                newLine = newLine.replace(line_to_replace, new_line_b + directives + new_line_e)
                        elif '(' in line or ')' in line:
                            continue
                        else:
                            isFunctionDecl = False
                            for piece in line.split(" "):
                                if "[" in piece:
                                    if piece.split("[")[0] == partitionName:
                                        array_type = re.search(datatype_pattern, newLine)
                                        if array_type:
                                            newLine = "hls_numbanks(" + str(partitionFactor) + ")\nhls_bankwidth(sizeof(" + array_type.group() + "))\n" + newLine
                                        first = line.split(" ")[0]
                                        if ("_t" in first) or (first == "TYPE"):
                                            newLine = "hls_numbanks(" + str(partition2Factor) + ")\nhls_bankwidth(sizeof(" + first + "))\n" + newLine


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
                            for name in loop["names"]:
                                line_s = line.split(" ")
                                if((line_s[0] == name) and (line_s[1] == ":")) or (line_s[0] == (name + ":")):
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
