# 项目需求分析

CFPS重点关注中国居民的经济与非经济福利，以及包括经济活动、教育成果、家庭关系与家庭动态、人口迁移、健康等在内的诸多研究主题。其样本覆盖25个省/市/自治区，目标样本规模为16000户，调查对象包含样本家户中的全部家庭成员。

CFPS在2008、2009两年在北京、上海、广东三地分别开展了初访与追访的测试调查，并于2010年正式开展访问。经2010年基线调查界定出来的所有基线家庭成员及其今后的血缘/领养子女将作为CFPS的基因成员，成为永久追踪对象。

CFPS调查问卷共有四种类型

-   （1）社区问卷
-   （2）家庭问卷
-   （3）成人问卷（长问卷）
-   （4）少儿问卷（短问卷及代答问卷）

每个问卷对应一个数据表。各年份数据表如下

| CFPS2010 | CFPS2012 | CFPS2014 | CFPS2016 | CFPS2018    |
| :------- | -------- | -------- | -------- | ----------- |
| adult    | adult    | adult    | adult    | childproxy  |
| child    | child    | child    | child    | crossyearid |
| comm     | comm     | comm     | famconf  | famconf     |
| famconf  | famconf  | famconf  | famecon  | person      |
| famecon  |          | famecon  |          |             |

表的主键有两种：个人ID（pid）与家庭ID（fid），前者关于后者是一对多的关系。

本项目有两方面的需求：数据存储与数据查询。而总数据量较大且冗余较多，因此有必要设计关系模式来提高数据库管理系统的存储性能与查询效率。

# 数据库总体设计

所有数据按年份入库，共 5 个数据库。由于数据表较大，我们依照关系模式对各表作了拆分，使**各部分包含原表的主键**；经检验，各年数据库均满足 BCNF 范式。

![截屏2021-11-18 上午8.14.59](/Users/alpha/Desktop/截屏2021-11-18 上午8.14.59.png)

以 CFPS2010 为例：

![截屏2021-11-18 上午8.16.56](/Users/alpha/Desktop/截屏2021-11-18 上午8.16.56.png)

各数据库具体情况如下：

## CFPS2010

|            部分表            |         原表（主键）          |
| :--------------------------: | :---------------------------: |
|  ecfps2010adult_202008part1  |  ecfps2010adult_202008 (pid)  |
|  ecfps2010adult_202008part2  |              ……               |
|  ecfps2010adult_202008part3  |              ……               |
|  ecfps2010adult_202008part4  |              ……               |
|  ecfps2010adult_202008part5  |              ……               |
|  ecfps2010child_201906part1  |  ecfps2010child_201906 (pid)  |
|  ecfps2010child_201906part1  |              ……               |
|  ecfps2010child_201906part3  |              ……               |
|  ecfps2010comm_201906part1   |  ecfps2010comm_201906 (cid)   |
| ecfps2010famecon_202008part1 | ecfps2010famecon_202008 (pid) |
| ecfps2010famecon_202008part2 |              ……               |
| ecfps2010famecon_202008part1 | ecfps2010famecon_202008 (fid) |
| ecfps2010famecon_202008part2 |              ……               |
| ecfps2010famecon_202008part3 |              ……               |

## CFPS2012

|            部分表            |         原表（主键）          |
| :--------------------------: | :---------------------------: |
|  ecfps2012adult_201906part1  |  ecfps2012adult_201906 (pid)  |
|  ecfps2012adult_201906part2  |              ……               |
|  ecfps2012adult_201906part3  |              ……               |
|  ecfps2012adult_201906part4  |              ……               |
|  ecfps2012adult_201906part5  |              ……               |
|  ecfps2012adult_201906part6  |              ……               |
|  ecfps2012child_201906part1  |  ecfps2012child_201906 (pid)  |
|  ecfps2012child_201906part2  |              ……               |
|  ecfps2012child_201906part3  |              ……               |
| ecfps2012famconf_092015part1 | ecfps2012famconf_092015 (pid) |
| ecfps2012famconf_092015part2 |              ……               |
| ecfps2012famecon_201906part1 | ecfps2012famecon_201906 (fid) |
| ecfps2012famecon_201906part2 |              ……               |
| ecfps2012famecon_201906part3 |              ……               |

## CFPS2014

|            部分表            |         原表（主键）          |
| :--------------------------: | :---------------------------: |
|  ecfps2014adult_201906part1  |  ecfps2014adult_201906 (pid)  |
|  ecfps2014adult_201906part2  |              ……               |
|  ecfps2014adult_201906part3  |              ……               |
|  ecfps2014adult_201906part4  |              ……               |
|  ecfps2014child_201906part1  |  ecfps2014child_201906 (pid)  |
|  ecfps2014child_201906part2  |              ……               |
|  ecfps2014child_201906part3  |              ……               |
|  ecfps2014comm_201906part1   |  ecfps2014comm_201906 (cid)   |
| ecfps2014famconf_170630part1 | ecfps2014famconf_170630 (pid) |
| ecfps2014famconf_170630part2 |              ……               |
| ecfps2014famecon_201906part1 | ecfps2014famecon_201906 (fid) |
| ecfps2014famecon_201906part2 |              ……               |

## CFPS2016

|            部分表            |         原表（主键）          |
| :--------------------------: | :---------------------------: |
|  ecfps2016adult_201906part1  |  ecfps2016adult_201906 (pid)  |
|  ecfps2016adult_201906part2  |              ……               |
|  ecfps2016adult_201906part3  |              ……               |
|  ecfps2016adult_201906part4  |              ……               |
|  ecfps2016child_201906part1  |  ecfps2016child_201906 (pid)  |
|  ecfps2016child_201906part2  |              ……               |
|  ecfps2016child_201906part3  |              ……               |
| ecfps2016famconf_201804part1 | ecfps2016famconf_201804 (pid) |
| ecfps2016famecon_201807part1 | ecfps2016famecon_201807 (fid) |
| ecfps2016famecon_201807part2 |              ……               |

## CFPS2018

|              部分表              |           原表（主键）            |
| :------------------------------: | :-------------------------------: |
| ecfps2018childproxy_202012part1  | ecfps2018childproxy_202012 (pid)  |
| ecfps2018crossyearid_202104part1 | ecfps2018crossyearid_202104 (cid) |
|   ecfps2018famconf_202008part1   |   ecfps2018famconf_202008 (fid)   |
|   ecfps2018person_202012part1    |   ecfps2018person_202012 (pid)    |
|   ecfps2018person_202012part2    |                ……                 |
|   ecfps2018person_202012part3    |                ……                 |
|   ecfps2018person_202012part4    |                ……                 |
|   ecfps2018person_202012part5    |                ……                 |

**各表的关系模式参见各年分数据库文档**。

# 代码逻辑

构建数据库的代码如下：

```python
# -*-coding:utf-8-*- 
import os
import pandas as pd

#def createSQLScript():

# 初始csv文件分解
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



```

