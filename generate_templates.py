#!/usr/bin/python3

# This script is for generating the sets of directives for a given benchmark. By using file manipulation we can directly format the templater files for each of
# benchmarks

import sys
import os
from jinja2 import Environment, FileSystemLoader, meta, nodes

benchmark_set = sys.argv[1]
benchmark = sys.argv[2]

env = Environment(loader=FileSystemLoader(f"./{benchmark_set}/{benchmark}/templates"))
template = env.get_template(f"{benchmark}_template.c")
parsed_content = env.parse(open(f'./{benchmark_set}/{benchmark}/templates/{benchmark}_template.c','r').read())


objects = []
for node in parsed_content.body[0].nodes:
    if type(node) is nodes.Name:
        objects.append(node.name)


template_path = f'./{benchmark_set}/{benchmark}/templates/templater.py'

os.remove(template_path)

template_head = open('template_head.txt', 'r')
template = open(template_path, 'a+')
template_tail = open('template_tail.txt', 'r')

template.write(template_head.read())

total_cases = 

context_dict = 'directives = {\n'
for name in objects:
     

