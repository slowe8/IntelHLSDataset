import os
import sys

template_file = open(sys.argv[1], 'r')

components = []
arrs = []
partition_factors = []
loops = {}


while True:
    try:
        
        line = template_file.readline()

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

        elif 'pipeline,' in line: #change to something more generic? this assumes pipelining every time
            line_s = line.split(',')
            if '/' in line_s[1]:
                loopNames = line_s[1].split('/')
            else:
                loopNames = [line_s[1]]
            factors = line_s[4].replace('[', '')
            factors = factors.replace(']','')
            factors = factors.split()
            for name in loopNames:
                loops[name] = factors
        
            




    except EOFError:
        break


#loops.sort()