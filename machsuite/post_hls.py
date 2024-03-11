import pandas as pd
import numpy as np

input_file = open('aes_table/intelversions/aes_table_11.prj/reports/lib/json/summary.json', encoding='utf-8')

json = pd.read_json(input_file)

print(json['estimatedResources'])

columns = json['estimatedResources'][1]
print(columns)
name = json['estimatedResources'][2][0]['name']
data = json['estimatedResources'][2][0]['data']

print(name)
print(data)

df = {}
df[columns[0]] = [name]
for i in range(1, len(columns)):
    df[columns[i]] = [data[i-1]]

df = pd.DataFrame(df)

print(df)
