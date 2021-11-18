# -*-coding:utf-8-*- 
import os
import pandas as pd

#def createSQLScript():

# 初试csv文件分解
def splitCSV(root, csvFile):
    df = pd.read_csv(root + '/' + csvFile, low_memory = False)
    indexList = df.columns.values
    indexListLength = len(indexList)
    df0 = df.iloc[:,0]
    startpos = 1
    endpos = 1
    cnt = 0
    while endpos < indexListLength:
        cnt = cnt + 1
        endpos = min(indexListLength, endpos + 299)
        subdf =  pd.concat([df0,df.iloc[:,startpos:endpos]], axis = 1)
        subdfName = csvFile[0:-4] + 'part' + str(cnt) + '.csv'
        subdf.to_csv(root + '/' + subdfName, index = False)
        startpos = endpos

# 生成SQL脚本
def createSQLScript(root, file):
    fileName = file[0:-4]
    csvFile = file
    #txtFile = file[0:-3] + 'txt'
    sqlFile = file[0:-3] + 'sql'
    curCSV = pd.read_csv(root + '/' + csvFile, low_memory = False)
    indexList = curCSV.columns.values
    DT = curCSV.dtypes
    sqlFileWriter = open(root + '/' + sqlFile, 'w+')
    sqlFileWriter.write('drop table if exists ' + fileName + ';\n\n')
    sqlFileWriter.write('create table ' + fileName + '(\n')
    indexListLength = len(indexList)
    for i in range(0, indexListLength):
        opstr = '    ' + indexList[i]
        if DT[i] == 'int64':
            opstr = opstr + ' int,\n'
        elif DT[i] == 'float64':
            opstr = opstr + ' float,\n'
        else:
            opstr = opstr + ' varchar(30),\n'
        sqlFileWriter.write(opstr)
    sqlFileWriter.write('    primary key (' + indexList[0] + ')\n')
    sqlFileWriter.write(')engine = myISAM;\n\n')
    
    sqlFileWriter.write('load data local infile ' + '\'' + root + '/' + csvFile + '\'\n')
    sqlFileWriter.write('into table ' + fileName + '\n')
    sqlFileWriter.write('fields terminated by \',\' optionally enclosed by \'\"\' escaped by \'\"\'\n')
    sqlFileWriter.write('lines terminated by \'\\n\';\n')
    sqlFileWriter.close()


for root, dirs, files in os.walk('/Users/alpha/Downloads/CFPSDATA'): 
    #for dir in dirs: 
        #print(dirs)
        #print(os.path.join(root,dir).encode('utf-8'))
    for file in files: 
        if 'csv' in file:
            createSQLScript(root, file)

            #fileName = file[0:-4]
            #csvFile = file
            #txtFile = file[0:-3] + 'txt'
            #sqlFile = file[0:-3] + 'sql'
            #splitCSV(root, csvFile)

            #curCSV = pd.read_csv(root + '/' + csvFile, low_memory = False)
            #indexList = curCSV.columns.values
            #DT = curCSV.dtypes
            '''
            sqlFileWriter = open(root + '/' + sqlFile, 'w+')
            sqlFileWriter.write('drop table ' + fileName + ' if exists ' + fileName + ';\n')
            sqlFileWriter.write('create table ' + fileName + '(\n')
            indexListLength = len(indexList)
            for i in range(0, indexListLength):
                opstr = '    ' + indexList[i]
                if DT[i] == 'int64':
                    opstr = opstr + ' int,\n'
                elif DT[i] == 'float64':
                    opstr = opstr + ' float,\n'
                else:
                    opstr = opstr + ' varchar(30),\n'
                sqlFileWriter.write(opstr)
            sqlFileWriter.write('    primary key (' + indexList[0] + ')\n')
            sqlFileWriter.write(')engine = myISAM;\n')
            sqlFileWriter.close()
            '''

            #curCSV.to_csv(root + '/' + csvFile[0:-4] + '_data.csv', index = False)
            #print(root + '/' + file)
        #print(file)


