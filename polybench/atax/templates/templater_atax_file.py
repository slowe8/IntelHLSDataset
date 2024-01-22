# Authored by:  Sean Lowe
# Description:  This is a python script that generates design iterations for
#               a Jinja2 tagged C/C++ design
#
# **NOTE**: This script is subject to change a lot depending on discussions
#           with Dr. Arora and Dr. Zhigang. Right not I have just used it
#           to generate some hand written design iterations automatically
#           Only includes a set of directives for atax.* benchmark

import sys
import os
import math

#############################################################

working_directory = os.getcwd()

# adapted from the PowerGear auto_run.py script
def gen_strategy(partition_factor, unroll_factor):
    lp_d = []

    for iob in partition_factor: # io/buffer partition
        if iob == 1:
            buff_p = ['d2']
        else:
            buff_p = ['d2', 'd1d2']

        lp1_d = []
        for out_p in ['n', 'p']:  # lp1
            if out_p == 'p':
                for i in unroll_factor:
                    if i <= iob:
                        lp1_d.append([out_p, str(i), 'n', '1'])
            else:
                for in_p in ['n', 'p']:
                    for i in unroll_factor:
                        if i <= iob:
                            lp1_d.append(['n', '1', in_p, str(i)])

        lp2_d = []
        for out_p in ['n', 'p']:  # lp2
            if out_p == 'p':
                for i in unroll_factor:
                    if i <= iob:
                        lp2_d.append([out_p, str(i), 'n', '1'])
            else:
                for in_p in ['n', 'p']:
                    for i in unroll_factor:
                        if i <= iob:
                            lp2_d.append(['n', '1', in_p, str(i)])

        for lp1 in lp1_d:
            for lp2 in lp2_d:
                for bp in buff_p:
                    lp_d.append([iob, lp1[0], lp1[1], lp1[2], lp1[3], lp2[0], lp2[1], lp2[2], lp2[3], bp])
    
    lp_d = sorted(lp_d, key = lambda x: x[0], reverse = False)
    
    return lp_d

def build_directives(lp_d):
	directives = []
	for spec in lp_d:
		if spec[9] == 'd1d2':
			 continue # ignore second dimension partition for now
		directive = {"buff_A": "\0","buff_x": "\0","buff_y_out": "\0","tmp1":"\0","lprd_1":"#pragma disable_loop_pipelining\n#pragma unroll 1\n", "lprd_2":"\0", "lp1":"\0", "lp2":"\0","lp3":"\0", "lp4":"\0", "lpwr_1":"\0"}
		
        bankbits = "("
        top_bit = math.ceil(math.log(spec[0],2)) - 1
        for i in range(top_bit + 1):
            if i == top_bit:
                bankbits = bankbits + str(i) + ")"
            else:
                bankbits = bankbits + str(i) + ","
        
        directive["buff_A"] = "hls_numbanks " + str(spec[0]) + "\nhls_bankbits" + bankbits + "\n"
        directive["buff_x"] = "hls_numbanks " + str(spec[0]) + "\nhls_bankbits" + bankbits + "\n"
        directive["buff_y_out"] = "hls_numbanks " + str(spec[0]) + "\nhls_bankbits" + bankbits + "\n"
        directive["tmp1"] = "hls_numbanks " + str(spec[0]) + "\nhls_bankbits" + bankbits + "\n"
        directive["lprd_2"] = "#pragma unroll " + str(spec[0]) + '\n'
		directive["lpwr_1"] = "#pragma unroll " + str(spec[0]) + '\n'
		if spec[1] == 'n':
			directive["lp1"] = "#pragma disable_loop_pipelining\n#pragma unroll " + spec[2] + '\n'
		else :
			directive["lp1"] = "#pragma unroll " + spec[2] + '\n'

		if spec[3] == 'n':
			directive["lp2"] = "#pragma disable_loop_pipelining\n#pragma unroll " + spec[4] + '\n'
		else :
			directive["lp2"] = "#pragma unroll " + spec[4] + '\n'

		if spec[5] == 'n':
			directive["lp3"] = "#pragma disable_loop_pipelining\n#pragma unroll " + spec[6] + '\n'
		else :
			directive["lp3"] = "#pragma unroll " + spec[6] + '\n'

		if spec[7] == 'n':
			directive["lp4"] = "#pragma disable_loop_pipelining\n#pragma unroll " + spec[8] + '\n'
		else :
			directive["lp4"] = "#pragma unroll " + spec[8] + '\n'
		
		directives.append(directive)
	
	return directives

atax = open(f'{working_directory}/atax.c', 'r')

loops = [ 'lprd_1', 'lprd_2', 'lpwr_1', 'lp1', 'lp2', 'lp3', 'lp4']
arrs =  ['buff_A', 'buff_x', 'buff_y_out', 'tmp1']


# Specify the environment and template for the given benchmark (from cmdline args)
# env = Environment(loader=FileSystemLoader(f"{working_dir}/polybench/atax/templates"))
# template = env.get_template(f"atax_template.c")

partition_factor = [1,2,4,8]
unroll_factor = [1,2,4,8]
lp_d = gen_strategy(partition_factor, unroll_factor)
directives = build_directives(lp_d)


count = 0
for directive in directives:
    atax.seek(0,0)
    filename = '../src/atax_' + str(count) + '.c'
    new_atax = open(filename, 'a+')

    for line in atax:
        new_line = line
        for loop in loops:
            if loop in line:
                new_atax.write(directive[loop])

                to_remove = loop + ': '
                new_line = new_line.replace(to_remove, '')
        for arr in arrs:
            if ("DATA_TYPE " + arr) in line:
                new_atax.write(directive[arr])

        new_atax.write(new_line)
    
    new_atax.close()
    count += 1

atax.close()
print("\ntemplating complete.")
