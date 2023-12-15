# Authored by:  Sean Lowe
# Description:  This is a python script that generates design iterations for
#               a Jinja2 tagged C/C++ design
#
# **NOTE**: This script is subject to change a lot depending on discussions
#           with Dr. Arora and Dr. Zhigang. Right not I have just used it
#           to generate some hand written design iterations automatically
#           Only includes a set of directives for atax.* benchmark

from jinja2 import Environment, FileSystemLoader
import sys

benchmark_family = sys.argv[1]
benchmark = sys.argv[2]

if benchmark_family == "polybench" and benchmark == "atax":
	directives = [	{"lprd_1":"\n", "lprd_2":"#pragma unroll 4", "lp1":"\n", "lp2":"\n", "lp3":"\n", "lp4":"#pragma unroll 1", "lpwr_1":"#pragma unroll 1"},
			{"lprd_1":"\n", "lprd_2":"#pragma unroll 4", "lp1":"\n", "lp2":"\n", "lp3":"\n", "lp4":"#pragma unroll 1", "lpwr_1":"#pragma unroll 1"},
			{"lprd_1":"\n", "lprd_2":"#pragma unroll 4", "lp1":"\n", "lp2":"\n", "lp3":"\n", "lp4":"#pragma unroll 1", "lpwr_1":"#pragma unroll 1"},
			{"lprd_1":"\n", "lprd_2":"#pragma unroll 4", "lp1":"\n", "lp2":"\n", "lp3":"\n", "lp4":"#pragma unroll 1", "lpwr_1":"#pragma unroll 1"},
			{"lprd_1":"\n", "lprd_2":"#pragma unroll 4", "lp1":"\n", "lp2":"\n", "lp3":"\n", "lp4":"#pragma unroll 2", "lpwr_1":"#pragma unroll 2"},
			{"lprd_1":"\n", "lprd_2":"#pragma unroll 4", "lp1":"\n", "lp2":"\n", "lp3":"\n", "lp4":"#pragma unroll 2", "lpwr_1":"#pragma unroll 2"},
			{"lprd_1":"\n", "lprd_2":"#pragma unroll 4", "lp1":"\n", "lp2":"\n", "lp3":"\n", "lp4":"#pragma unroll 2", "lpwr_1":"#pragma unroll 2"},
			{"lprd_1":"\n", "lprd_2":"#pragma unroll 4", "lp1":"\n", "lp2":"\n", "lp3":"\n", "lp4":"#pragma unroll 2", "lpwr_1":"#pragma unroll 2"},
			{"lprd_1":"\n", "lprd_2":"#pragma unroll 8", "lp1":"\n", "lp2":"\n", "lp3":"\n", "lp4":"#pragma unroll 4", "lpwr_1":"#pragma unroll 4"},
			{"lprd_1":"\n", "lprd_2":"#pragma unroll 8", "lp1":"\n", "lp2":"\n", "lp3":"\n", "lp4":"#pragma unroll 4", "lpwr_1":"#pragma unroll 4"},
			{"lprd_1":"\n", "lprd_2":"#pragma unroll 8", "lp1":"\n", "lp2":"\n", "lp3":"\n", "lp4":"#pragma unroll 4", "lpwr_1":"#pragma unroll 4"},
			{"lprd_1":"\n", "lprd_2":"#pragma unroll 8", "lp1":"\n", "lp2":"\n", "lp3":"\n", "lp4":"#pragma unroll 4", "lpwr_1":"#pragma unroll 4"},
			{"lprd_1":"\n", "lprd_2":"#pragma unroll 8", "lp1":"\n", "lp2":"\n", "lp3":"\n", "lp4":"#pragma unroll 8", "lpwr_1":"#pragma unroll 8"},
			{"lprd_1":"\n", "lprd_2":"#pragma unroll 8", "lp1":"\n", "lp2":"\n", "lp3":"\n", "lp4":"#pragma unroll 8", "lpwr_1":"#pragma unroll 8"},
			{"lprd_1":"\n", "lprd_2":"#pragma unroll 8", "lp1":"\n", "lp2":"\n", "lp3":"\n", "lp4":"#pragma unroll 8", "lpwr_1":"#pragma unroll 8"},
			{"lprd_1":"\n", "lprd_2":"#pragma unroll 8", "lp1":"\n", "lp2":"\n", "lp3":"\n", "lp4":"#pragma unroll 8", "lpwr_1":"#pragma unroll 8"}]

# Specify the environment and template for the given benchmark (from cmdline args)
env = Environment(loader=FileSystemLoader(f"./{benchmark_family}/{benchmark}/templates"))
template = env.get_template(f"{benchmark}_template.c")

count = 0 # Design counter for naming convention

# Loop through each set of directives for the given benchmark
for directive in directives:
	filename = f"./{benchmark_family}/{benchmark}/src/{benchmark}_{str(count)}.c"
	content = template.render(directive) # render the design (tag substitution)

        # output the deign to the source directory of the benchmark
	with open(filename, mode="w", encoding="utf-8") as output:
		output.write(content)
		print("... wrote", filename)

	count = count + 1

print("\ntemplating complete.")


