# -*-coding:utf-8-*- 
import os
import pandas as pd

for root, dirs, files in os.walk('/Users/alpha/Downloads/CFPSDTA'): 
    for file in files: 
        if not 'dta' in file:
            continue
        dtaFile = file
        txtFile = file[0:-4] + 'alt.txt'
        reader = pd.io.stata.StataReader(root + '/' + dtaFile)
        header = reader.variable_labels()
        txtFileWriter = open(root + '/' + txtFile, 'w+')
        for var in header:
            name = var
            label = header[name]
            txtFileWriter.write(label + '\n')
        txtFileWriter.close()