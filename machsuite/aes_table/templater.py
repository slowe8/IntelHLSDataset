import os
import sys


template_file = open(sys.argv[1], 'r')
bench = open(sys.argv[2], 'r')
bench_name = sys.argv[3]

components = []
arrs = []
partition_factors = []
loop_names = []
loop_factors = []
loop_pipeline = []


class Node:
    def __init__(self) :
        self.name = "\0"
        self.value = 0
        self.visited = 0
        self.children = []
        self.parent = None
    
def populate(parent, names, factors, level, factorNum):
    newNode = Node()
    if parent is not None:
        newNode.parent = parent
        newNode.name = names[level - 1]
        newNode.value = factorNum
    if level is len(names):
        return newNode
    for factor in factors[level]:
        child = populate(newNode, names, factors, level + 1, factor)
        newNode.children.append(child)
    return newNode

def create_factors(node, factor_list, level, total):
    if node.visited is 1:
        return False
    for child in node.children:
        if create_factors(child, factor_list, (level+1), total):
            factor_list[child.name] = child.value
            return True
    node.visited = 1
    if level == total:
        return True
    else :
        return False


isLoop = False
while True:
    line = template_file.readline()
    if not line:
        break

    if 'inline' in line:
        line_s = line.split()
        components.append(line_s[1])
    elif 'array_partition,' in line:
        line_s = line.split(',')
        num_arrs = int(line_s[1])
        factors = line_s[2].replace('[', '')
        factors = factors.replace(']', '')
        factors = factors.split()

        partition_factors.append([])
        for n in factors:
            partition_factors[-1].append(int(n))

    elif 'loop_opt,' in line:
        isLoop = True
        continue

    elif isLoop: 
        line_s = line.split(',')
        if line_s[2] == 'pipeline':
            pipelined = True
        else :
            pipelined = False

        if '/' in line_s[1]:
            loopNamesTemp = line_s[1].split('/')
        else:
            loopNamesTemp = [line_s[1]]
        factors = line_s[-1].replace('[', '')
        factors = factors.replace(']','')
        factors = factors.split()
        for name in loopNamesTemp:
            loop_names.append(name)
            loop_factors.append(factors)
            loop_pipeline.append(pipelined)
        isLoop = False


root = populate(None, loop_names, loop_factors, 0, 0)
all_factors = []
factor_list = dict()
i = 0
try:
    while create_factors(root, factor_list, 0, len(loop_names)):
        all_factors.append(factor_list)
        factor_list = dict()
except IndexError:
    print("index error here idk why\n")



count = 1
for factor_list in all_factors:
    bench.seek(0,0)
    filename = f'' + bench_name + '_' + str(count) + '.c'
    
    if os.path.isfile(filename):
        os.remove(filename)

    new_bench = open(filename, 'a+')

    for line in bench:
        new_line = line
        for name in factor_list:
            nameString = name + " : "
            if nameString in line:
                if not loop_pipeline[loop_names.index(name)] :
                    new_bench.write("#pragma disable_loop_pipelining\n")

                new_bench.write("#pragma unroll " + factor_list[name] + '\n')
                new_line = new_line.replace(nameString, '')

        new_bench.write(new_line)
    
    new_bench.close()
    count += 1


    

#loops.sort()