import sys
import os
import pandas as pd

def getDevice():

    json = open(f'./gemm_blocked/gemm_blocked_1.prj/reports/lib/json/info.json', 'r')

    info = pd.read_json(json)


    device = info.iloc[0,0][0]['family']

    return device


if __name__ == "__main__":
    print(getDevice())
    working_dir = os.listdir()
    for item in working_dir:
        if os.path.isdir(item):
            os.chdir(item)
            working_subdir = os.listdir()
            for subitem in working_subdir:
                if os.path.isdir(item) and '.prj' in subitem:
                    os.chdir(subitem)
                    print(getDevice())
                    
