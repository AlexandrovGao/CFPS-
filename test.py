# -*-coding:utf-8-*- 
import os
import pandas as pd
 
for root, dirs, files in os.walk('/Users/alpha/Downloads/CFPSDATA'): 
    #for dir in dirs: 
        #print(dirs)
        #print(os.path.join(root,dir).encode('utf-8'))
    for file in files: 
        if 'csv' in file:
            csvFile = file
            txtFile = file[0:-3] + 'txt'
            curCSV = pd.read_csv(root + '/' + csvFile, low_memory = False)
            L = t.columns.values
            DT = t.dtypes
            f = open(root + '/' + txtFile, 'w+')
            p = len(L)
            for i in range(0, p):
                tmp = L[i]
                if DT[i] == 'int64':
                    tmp = tmp + ' int,\n'
                elif DT[i] == 'float64':
                    tmp = tmp + ' float,\n'
                else:
                    tmp = tmp + ' varchar(30),\n'
                f.write(tmp)
            f.close()
            #print(root + '/' + file)
        #print(file)


