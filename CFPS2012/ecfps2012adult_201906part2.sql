drop table if exists ecfps2012adult_201906part2;

create table ecfps2012adult_201906part2(
    pid int,
    qec503 varchar(30),
    qec504y varchar(30),
    qec504m varchar(30),
    qec601 varchar(30),
    qec602y varchar(30),
    qec602m varchar(30),
    qec603 varchar(30),
    qec604y varchar(30),
    qec604m varchar(30),
    qec701 varchar(30),
    qec702y varchar(30),
    qec702m varchar(30),
    qec703 varchar(30),
    qec704y varchar(30),
    qec704m varchar(30),
    qec705 varchar(30),
    qec801 varchar(30),
    qec802y varchar(30),
    qec802m varchar(30),
    qf1_a_1 varchar(30),
    qf1_a_2 varchar(30),
    qf1_a_3 varchar(30),
    qf1_a_4 varchar(30),
    qf1_a_5 varchar(30),
    qf1_a_6 varchar(30),
    qf1_a_7 varchar(30),
    qf1_a_8 varchar(30),
    qf1_a_9 varchar(30),
    qf1_a_10 varchar(30),
    qf2_s_1 varchar(30),
    qf2_s_2 varchar(30),
    qf2_s_3 varchar(30),
    qf2_s_4 varchar(30),
    qf2_s_5 varchar(30),
    qf201_s_1 varchar(30),
    qf201_s_2 varchar(30),
    qf201_s_3 varchar(30),
    qf201_s_4 varchar(30),
    qf201_s_5 varchar(30),
    qf201_s_6 varchar(30),
    qf201_s_7 varchar(30),
    qf201_s_8 varchar(30),
    qf201_s_9 varchar(30),
    qf201_s_10 varchar(30),
    qf201_s_11 varchar(30),
    qf201_s_12 varchar(30),
    qf201_s_13 varchar(30),
    qf201_s_14 varchar(30),
    qf201_s_15 varchar(30),
    qf201_s_16 varchar(30),
    qf201_s_17 varchar(30),
    qf201_s_18 varchar(30),
    qf201_s_19 varchar(30),
    qf201_s_20 varchar(30),
    qf201_s_21 varchar(30),
    qf201_s_22 varchar(30),
    qf201_s_23 varchar(30),
    qf201_s_24 varchar(30),
    qf201_s_25 varchar(30),
    qf201_s_26 varchar(30),
    qf201_s_27 varchar(30),
    qf201_s_28 varchar(30),
    qf201_s_29 varchar(30),
    qf201_s_30 varchar(30),
    qf201_s_31 varchar(30),
    qf201_s_32 varchar(30),
    qf201_s_33 varchar(30),
    qf201_s_34 varchar(30),
    qf201_s_35 varchar(30),
    qf201_s_36 varchar(30),
    qf201_s_37 varchar(30),
    qf201_s_38 varchar(30),
    qf201_s_39 varchar(30),
    qf201_s_40 varchar(30),
    qf3_s_1 varchar(30),
    qf3_s_2 varchar(30),
    qf3_s_3 varchar(30),
    qf3_s_4 varchar(30),
    qf3_s_5 varchar(30),
    qf301_s_1 varchar(30),
    qf301_s_2 varchar(30),
    qf301_s_3 varchar(30),
    qf301_s_4 varchar(30),
    qf301_s_5 varchar(30),
    qf301_s_6 varchar(30),
    qf301_s_7 varchar(30),
    qf301_s_8 varchar(30),
    qf301_s_9 varchar(30),
    qf301_s_10 varchar(30),
    qf301_s_11 varchar(30),
    qf301_s_12 varchar(30),
    qf301_s_13 varchar(30),
    qf301_s_14 varchar(30),
    qf301_s_15 varchar(30),
    qf301_s_16 varchar(30),
    qf301_s_17 varchar(30),
    qf301_s_18 varchar(30),
    qf301_s_19 varchar(30),
    qf301_s_20 varchar(30),
    qf301_s_21 varchar(30),
    qf301_s_22 varchar(30),
    qf301_s_23 varchar(30),
    qf301_s_24 varchar(30),
    qf301_s_25 varchar(30),
    qf301_s_26 varchar(30),
    qf301_s_27 varchar(30),
    qf301_s_28 varchar(30),
    qf301_s_29 varchar(30),
    qf301_s_30 varchar(30),
    qf301_s_31 varchar(30),
    qf301_s_32 varchar(30),
    qf301_s_33 varchar(30),
    qf301_s_34 varchar(30),
    qf301_s_35 varchar(30),
    qf301_s_36 varchar(30),
    qf301_s_37 varchar(30),
    qf301_s_38 varchar(30),
    qf301_s_39 varchar(30),
    qf301_s_40 varchar(30),
    jobblastdate_a_1 varchar(30),
    jobblastdate_a_2 varchar(30),
    jobblastdate_a_3 varchar(30),
    jobblastdate_a_4 varchar(30),
    jobblastdate_a_5 varchar(30),
    jobblastdate_a_6 varchar(30),
    jobblastdate_a_7 varchar(30),
    jobblastdate_a_8 varchar(30),
    jobblastdate_a_9 varchar(30),
    jobblastdate_a_10 varchar(30),
    jobc1lastdate_a_1 varchar(30),
    jobc1lastdate_a_2 varchar(30),
    jobc1lastdate_a_3 varchar(30),
    jobc1lastdate_a_4 varchar(30),
    jobc1lastdate_a_5 varchar(30),
    jobc1lastdate_a_6 varchar(30),
    jobc1lastdate_a_7 varchar(30),
    jobc1lastdate_a_8 varchar(30),
    jobc1lastdate_a_9 varchar(30),
    jobc1lastdate_a_10 varchar(30),
    jobc2lastdate_a_1 varchar(30),
    jobc2lastdate_a_2 varchar(30),
    jobc2lastdate_a_3 varchar(30),
    jobc2lastdate_a_4 varchar(30),
    jobc2lastdate_a_5 varchar(30),
    jobc2lastdate_a_6 varchar(30),
    jobc2lastdate_a_7 varchar(30),
    jobc2lastdate_a_8 varchar(30),
    jobc2lastdate_a_9 varchar(30),
    jobc2lastdate_a_10 varchar(30),
    jobbcn varchar(30),
    jobc1cn varchar(30),
    qg101 varchar(30),
    qg102 varchar(30),
    qg103 varchar(30),
    qg104y varchar(30),
    qg104m varchar(30),
    qg105 varchar(30),
    qg108 varchar(30),
    qg109 varchar(30),
    qg106 varchar(30),
    qg107 varchar(30),
    qg110 varchar(30),
    qg1011 varchar(30),
    qg201 varchar(30),
    qg202 varchar(30),
    qg203 varchar(30),
    qg204 varchar(30),
    qg205 varchar(30),
    qg206 varchar(30),
    qg301 varchar(30),
    qg303 varchar(30),
    qg304 varchar(30),
    qg305 varchar(30),
    qg310 varchar(30),
    qg310ccode varchar(30),
    qg401 varchar(30),
    qg402 varchar(30),
    qg404 varchar(30),
    qg406 varchar(30),
    qg408_a_1 varchar(30),
    qg408ccode_a_1 varchar(30),
    qg4121y_a_1 varchar(30),
    qg4121m_a_1 varchar(30),
    qg4122y_a_1 varchar(30),
    qg4122m_a_1 varchar(30),
    qg413_a_1 varchar(30),
    qg414_a_1 varchar(30),
    qg415_s_1 varchar(30),
    qg415_s_2 varchar(30),
    qg415_s_3 varchar(30),
    qg415_s_4 varchar(30),
    qg415_s_5 varchar(30),
    qg416_a_1 varchar(30),
    qg416_a_2 varchar(30),
    qg416_a_3 varchar(30),
    qg417_a_1 varchar(30),
    qg419_s_1 varchar(30),
    qg419_s_2 varchar(30),
    qg419_s_3 varchar(30),
    qg419_s_4 varchar(30),
    qg419_s_5 varchar(30),
    qg419_s_6 varchar(30),
    qg420_a_1 varchar(30),
    qg420_a_2 varchar(30),
    qg420_a_3 varchar(30),
    qg420_a_4 varchar(30),
    qg420_a_5 varchar(30),
    qg421_s_1 varchar(30),
    qg421_s_2 varchar(30),
    qg421_s_3 varchar(30),
    qg421_s_4 varchar(30),
    qg421_s_5 varchar(30),
    qg421_s_6 varchar(30),
    qg422_a_1 varchar(30),
    qg423_a_1 varchar(30),
    qg424_a_1 varchar(30),
    qg408_a_2 varchar(30),
    qg408ccode_a_2 varchar(30),
    qg4121y_a_2 varchar(30),
    qg4121m_a_2 varchar(30),
    qg4122y_a_2 varchar(30),
    qg4122m_a_2 varchar(30),
    qg413_a_2 varchar(30),
    qg414_a_2 varchar(30),
    qg415_s_6 varchar(30),
    qg415_s_7 varchar(30),
    qg415_s_8 varchar(30),
    qg415_s_9 varchar(30),
    qg415_s_10 varchar(30),
    qg416_a_4 varchar(30),
    qg416_a_5 varchar(30),
    qg416_a_6 varchar(30),
    qg417_a_2 varchar(30),
    qg419_s_7 varchar(30),
    qg419_s_8 varchar(30),
    qg419_s_9 varchar(30),
    qg419_s_10 varchar(30),
    qg419_s_11 varchar(30),
    qg419_s_12 varchar(30),
    qg420_a_6 varchar(30),
    qg420_a_7 varchar(30),
    qg420_a_8 varchar(30),
    qg420_a_9 varchar(30),
    qg420_a_10 varchar(30),
    qg421_s_7 varchar(30),
    qg421_s_8 varchar(30),
    qg421_s_9 varchar(30),
    qg421_s_10 varchar(30),
    qg421_s_11 varchar(30),
    qg421_s_12 varchar(30),
    qg422_a_2 varchar(30),
    qg423_a_2 varchar(30),
    qg424_a_2 varchar(30),
    qg408_a_3 varchar(30),
    qg408ccode_a_3 varchar(30),
    qg4121y_a_3 varchar(30),
    qg4121m_a_3 varchar(30),
    qg4122y_a_3 varchar(30),
    qg4122m_a_3 varchar(30),
    qg413_a_3 varchar(30),
    qg414_a_3 varchar(30),
    qg415_s_11 varchar(30),
    qg415_s_12 varchar(30),
    qg415_s_13 varchar(30),
    qg415_s_14 varchar(30),
    qg415_s_15 varchar(30),
    qg416_a_7 varchar(30),
    qg416_a_8 varchar(30),
    qg416_a_9 varchar(30),
    qg417_a_3 varchar(30),
    qg419_s_13 varchar(30),
    qg419_s_14 varchar(30),
    qg419_s_15 varchar(30),
    qg419_s_16 varchar(30),
    qg419_s_17 varchar(30),
    qg419_s_18 varchar(30),
    qg420_a_11 varchar(30),
    qg420_a_12 varchar(30),
    qg420_a_13 varchar(30),
    qg420_a_14 varchar(30),
    qg420_a_15 varchar(30),
    qg421_s_13 varchar(30),
    qg421_s_14 varchar(30),
    qg421_s_15 varchar(30),
    qg421_s_16 varchar(30),
    qg421_s_17 varchar(30),
    qg421_s_18 varchar(30),
    qg422_a_3 varchar(30),
    qg423_a_3 varchar(30),
    qg424_a_3 varchar(30),
    qg408_a_4 varchar(30),
    qg408ccode_a_4 varchar(30),
    qg4121y_a_4 varchar(30),
    qg4121m_a_4 varchar(30),
    qg4122y_a_4 varchar(30),
    qg4122m_a_4 varchar(30),
    qg413_a_4 varchar(30),
    qg414_a_4 varchar(30),
    qg415_s_16 varchar(30),
    primary key (pid)
)engine = myISAM;

load data local infile '/Users/alpha/Downloads/CFPSDATA/CFPS2012/ecfps2012adult_201906part2.csv'
into table ecfps2012adult_201906part2
fields terminated by ',' optionally enclosed by '"' escaped by '"'
lines terminated by '\n';