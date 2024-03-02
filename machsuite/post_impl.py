import pandas as pd
import numpy as np

input_file = open('gemm_blocked/gemm_blocked_1.prj/reports/lib/json/quartus.json', encoding='utf-8')

json = pd.read_json(input_file)

print(json)

fitting_summary = json.iloc[0,1]

#print(fitting_summary)

timing_report = json.iloc[0,0]

#print(timing_report)i

component_summary = fitting_summary[0]
for m in component_summary:
    component_summary[m] = [component_summary[m]]

keys = list(component_summary.keys())
for key in keys:
    if key != 'type' and key != 'id' and key != 'name':
        component_summary[key + '_' + component_summary['type'][0]] = component_summary.pop(key)

component_summary.pop('type')
component_summary.pop('id')
component_summary.pop('name')

system_summary = fitting_summary[1]
for m in system_summary:
    system_summary[m] = [system_summary[m]]

keys = list(system_summary.keys())
for key in keys:
    if key != 'type' and key != 'id' and key != 'name':
        system_summary[key + '_' + system_summary['type'][0]] = system_summary.pop(key)

system_summary.pop('type')
system_summary.pop('id')
system_summary.pop('name')

fitting_summary = {}
fitting_summary.update(component_summary)
fitting_summary.update(system_summary)

fittingTable = pd.DataFrame(fitting_summary)

print(fittingTable)

print(timing_report[0])

timing_summary = timing_report[0]
for m in timing_summary:
    timing_summary[m] = [timing_summary[m]]

timing_summary.pop('name')
timing_summary.pop('type')
timing_summary.pop('details')

timingTable = pd.DataFrame(timing_summary)
print(timingTable)

post_impl = {}
post_impl.update(fitting_summary)
post_impl.update(timing_summary)

post_impl_table = pd.DataFrame(post_impl)
print(post_impl_table)

