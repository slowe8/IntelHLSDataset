import pandas as pd
import numpy as np

input_file = open('gemm.prj/reports/lib/json/summary.json', encoding='utf-8')

json = pd.read_json(input_file)

print(json)

header = json.iloc[1,1]

print(header)

row = json.iloc[2,1]

print(row[0]['name'])

name = row[0]['name']
data = row[0]['data']

df = {}
df[header[0]] = [name]
for i in range(1, len(header)):
    df[header[i]] = [data[i-1]]

print(df)

df = pd.DataFrame(df)

print(df)
