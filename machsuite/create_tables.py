import sys
import os
import pandas as pd

def getDevice(prjpath):

    json = open(f'./{prjpath}/reports/lib/json/info.json', 'r')

    info = pd.read_json(json)


    device = info.iloc[0,0][0]['family'].split()[1]

    return device

def get_post_hls_data(data_file):
    json = pd.read_json(data_file)

    header = json.iloc[1,1]

    row = json.iloc[2,1]

    name = row[0]['name']
    data = row[0]['data']

    df = {}
    df[header[0]] = [name]
    for i in range(1, len(header)):
        df[header[i]] = [data[i-1]]

    df = pd.DataFrame(df)

    return df

def get_post_impl_data(data_file):

    json = pd.read_json(data_file)

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

    timing_summary = timing_report[0]
    for m in timing_summary:
        timing_summary[m] = [timing_summary[m]]

    timing_summary.pop('name')
    timing_summary.pop('type')
    timing_summary.pop('details')

    timingTable = pd.DataFrame(timing_summary)

    post_impl = {}
    post_impl.update(fitting_summary)
    post_impl.update(timing_summary)

    post_impl_table = pd.DataFrame(post_impl)
    
    return post_impl_table

benchmark = sys.argv[1]
path_project = sys.argv[2]

device = getDevice(path_project)

post_hls_data = 0
post_impl_data = 0

if device not in os.listdir(benchmark):
    os.mkdir(f'./{benchmark}/{device}')

path_post_hls_data = f'./{benchmark}/{device}/post_hls.csv' 
path_post_impl_data = f'./{benchmark}/{device}/post_implementation.csv'
   
post_hls_data = open(path_post_hls_data, 'w+')
post_impl_data = open(path_post_impl_data, 'w+')

summary_path = f'./{path_project}/reports/lib/json/summary.json'

if os.stat(path_post_hls_data).st_size > 0:
    pd.read_csv(post_hls_data).append(get_post_hls_data(summary_path)).to_csv(path_post_hls_data)
else:
    get_post_hls_data(summary_path).to_csv(path_post_hls_data)
                    
quartus_path = f'./{path_project}/reports/lib/json/quartus.json'

if os.stat(path_post_impl_data).st_size > 0:
    pd.read_csv(post_impl_data).append(get_post_impl_data(quartus_path)).to_csv(path_post_impl_data)
else:
    get_post_impl_data(quartus_path).to_csv(path_post_impl_data)
    

