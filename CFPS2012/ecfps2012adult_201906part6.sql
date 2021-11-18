drop table if exists ecfps2012adult_201906part6;

create table ecfps2012adult_201906part6(
    pid int,
    qp508_a_8 varchar(30),
    qp503_a_9 varchar(30),
    qp504_a_9 varchar(30),
    qp506_a_9 varchar(30),
    qp507_a_9 varchar(30),
    qp508_a_9 varchar(30),
    qp503_a_10 varchar(30),
    qp504_a_10 varchar(30),
    qp506_a_10 varchar(30),
    qp507_a_10 varchar(30),
    qp508_a_10 varchar(30),
    qp503_a_11 varchar(30),
    qp504_a_11 varchar(30),
    qp506_a_11 varchar(30),
    qp507_a_11 varchar(30),
    qp508_a_11 varchar(30),
    qp503_a_12 varchar(30),
    qp504_a_12 varchar(30),
    qp506_a_12 varchar(30),
    qp507_a_12 varchar(30),
    qp508_a_12 varchar(30),
    qp501followuptotal varchar(30),
    qp509a varchar(30),
    qp510 varchar(30),
    qp511 varchar(30),
    qp512 varchar(30),
    qp601 varchar(30),
    qp602 varchar(30),
    qp603 varchar(30),
    qp604 varchar(30),
    qp605_s_1 varchar(30),
    qp605_s_2 varchar(30),
    qp605_s_3 varchar(30),
    qp605_s_4 varchar(30),
    qp605_s_5 varchar(30),
    qp605_s_6 varchar(30),
    qp701 varchar(30),
    qp801_s_1 varchar(30),
    qp801_s_2 varchar(30),
    qp801_s_3 varchar(30),
    qp801_s_4 varchar(30),
    qp801_s_5 varchar(30),
    qp801_s_6 varchar(30),
    qp801_s_7 varchar(30),
    qp801_s_8 varchar(30),
    qp801_s_9 varchar(30),
    qq101_s_1 varchar(30),
    qq101_s_2 varchar(30),
    qq101_s_3 varchar(30),
    qq101_s_4 varchar(30),
    qq101_s_5 varchar(30),
    qq101_s_6 varchar(30),
    qq101_s_7 varchar(30),
    qq101_s_8 varchar(30),
    qq102_a_1 varchar(30),
    qq102_a_2 varchar(30),
    qq102_a_3 varchar(30),
    qq102_a_4 varchar(30),
    qq102_a_5 varchar(30),
    qq102_a_6 varchar(30),
    qq102_a_7 varchar(30),
    qq201 varchar(30),
    qq2011 varchar(30),
    qq202 varchar(30),
    qq203 varchar(30),
    qq204 varchar(30),
    qq205 varchar(30),
    qq301 varchar(30),
    qq3011 varchar(30),
    qq302_s_1 varchar(30),
    qq302_s_2 varchar(30),
    qq302_s_3 varchar(30),
    qq303_a_1 varchar(30),
    qq304_a_1 varchar(30),
    qq303_a_2 varchar(30),
    qq304_a_2 varchar(30),
    qq303_a_3 varchar(30),
    qq304_a_3 varchar(30),
    qq305 varchar(30),
    qq306 varchar(30),
    qq401 varchar(30),
    qq402 varchar(30),
    qq403a varchar(30),
    qq403b varchar(30),
    qq501 varchar(30),
    qq701 varchar(30),
    qn12011 varchar(30),
    qn12012 varchar(30),
    qn12013 varchar(30),
    qn12014 varchar(30),
    qn1001 varchar(30),
    qn10021 varchar(30),
    qn10022 varchar(30),
    qn10023 varchar(30),
    qn10024 varchar(30),
    qn10025 varchar(30),
    qn10026 varchar(30),
    qq6011 varchar(30),
    qq6012 varchar(30),
    qq6013 varchar(30),
    qq6014 varchar(30),
    qq6015 varchar(30),
    qq6016 varchar(30),
    qq6017 varchar(30),
    qq6018 varchar(30),
    qq6019 varchar(30),
    qq60110 varchar(30),
    qq60111 varchar(30),
    qq60112 varchar(30),
    qq60113 varchar(30),
    qq60114 varchar(30),
    qq60115 varchar(30),
    qq60116 varchar(30),
    qq60117 varchar(30),
    qq60118 varchar(30),
    qq60119 varchar(30),
    qq60120 varchar(30),
    qz1 varchar(30),
    qz101_s_1 varchar(30),
    qz101_s_2 varchar(30),
    qz102_s_1 varchar(30),
    qz102_s_2 varchar(30),
    qz102_s_3 varchar(30),
    qz102_s_4 varchar(30),
    qz103 varchar(30),
    qz202 varchar(30),
    qz203 varchar(30),
    qz204 varchar(30),
    qz205 varchar(30),
    qz206 varchar(30),
    qz208 varchar(30),
    qz210 varchar(30),
    qz5 varchar(30),
    qg410code_a_1 varchar(30),
    qg411code_a_1 varchar(30),
    qg410code_a_2 varchar(30),
    qg411code_a_2 varchar(30),
    qg410code_a_3 varchar(30),
    qg411code_a_3 varchar(30),
    qg410code_a_4 varchar(30),
    qg411code_a_4 varchar(30),
    qg410code_a_5 varchar(30),
    qg411code_a_5 varchar(30),
    qg410code_a_6 varchar(30),
    qg411code_a_6 varchar(30),
    qg410code_a_7 varchar(30),
    qg411code_a_7 varchar(30),
    qg410code_a_8 varchar(30),
    qg411code_a_8 varchar(30),
    qg410code_a_9 varchar(30),
    qg411code_a_9 varchar(30),
    qg410code_a_10 varchar(30),
    qg411code_a_10 varchar(30),
    qg509code_a_1 varchar(30),
    qg510code_a_1 varchar(30),
    qg509code_a_2 varchar(30),
    qg510code_a_2 varchar(30),
    qg509code_a_3 varchar(30),
    qg510code_a_3 varchar(30),
    qg509code_a_4 varchar(30),
    qg510code_a_4 varchar(30),
    qg509code_a_5 varchar(30),
    qg510code_a_5 varchar(30),
    qg509code_a_6 varchar(30),
    qg510code_a_6 varchar(30),
    qg509code_a_7 varchar(30),
    qg510code_a_7 varchar(30),
    qg509code_a_8 varchar(30),
    qg510code_a_8 varchar(30),
    qg509code_a_9 varchar(30),
    qg510code_a_9 varchar(30),
    qg509code_a_10 varchar(30),
    qg510code_a_10 varchar(30),
    qg608code_a_1 varchar(30),
    qg609code_a_1 varchar(30),
    qg608code_a_2 varchar(30),
    qg609code_a_2 varchar(30),
    qg608code_a_3 varchar(30),
    qg609code_a_3 varchar(30),
    qg608code_a_4 varchar(30),
    qg609code_a_4 varchar(30),
    qg608code_a_5 varchar(30),
    qg609code_a_5 varchar(30),
    qg608code_a_6 varchar(30),
    qg609code_a_6 varchar(30),
    qg608code_a_7 varchar(30),
    qg609code_a_7 varchar(30),
    qg608code_a_8 varchar(30),
    qg609code_a_8 varchar(30),
    qg608code_a_9 varchar(30),
    qg609code_a_9 varchar(30),
    qg608code_a_10 varchar(30),
    qg609code_a_10 varchar(30),
    qa1 varchar(30),
    sn401 varchar(30),
    sw1r varchar(30),
    sqg310ccode varchar(30),
    sg400 varchar(30),
    sg401 varchar(30),
    sg4101 varchar(30),
    sg413 varchar(30),
    sg414 varchar(30),
    sg417 varchar(30),
    qn802r varchar(30),
    qn803r varchar(30),
    cfps2012_gender_best varchar(30),
    cfps2012_birthy_best varchar(30),
    subpopulation varchar(30),
    subsample varchar(30),
    job2012mn_occu varchar(30),
    qv203code_best varchar(30),
    qv203_isco varchar(30),
    qv103code_best varchar(30),
    qv103_isco varchar(30),
    qe209bcode_best varchar(30),
    qe209b_isco varchar(30),
    sg410code varchar(30),
    sg411code_best varchar(30),
    sg411_isco varchar(30),
    income float,
    income_adj float,
    employ varchar(30),
    sch2012 varchar(30),
    edu2012 varchar(30),
    eduy2012 float,
    typecomm varchar(30),
    urbancomm varchar(30),
    iwr1 varchar(30),
    iwr2 varchar(30),
    iwr varchar(30),
    dwr varchar(30),
    ns_g float,
    ns_w float,
    ns_wse float,
    cageyog varchar(30),
    nchd1 int,
    nchd2 int,
    nchd3 int,
    pid_f varchar(30),
    pid_m varchar(30),
    coremember varchar(30),
    genetype varchar(30),
    rswt_natcs12 float,
    rswt_rescs12 float,
    rswt_natpn1012 float,
    rswt_respn1012 float,
    releaseversion float,
    interviewerid int,
    primary key (pid)
)engine = myISAM;

load data local infile '/Users/alpha/Downloads/CFPSDATA/CFPS2012/ecfps2012adult_201906part6.csv'
into table ecfps2012adult_201906part6
fields terminated by ',' optionally enclosed by '"' escaped by '"'
lines terminated by '\n';
