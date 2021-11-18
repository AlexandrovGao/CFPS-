drop table if exists ecfps2016child_201906part3;

create table ecfps2016child_201906part3(
    pid int,
    cesd20sc varchar(30),
    iwr1 varchar(30),
    iwr2 varchar(30),
    iwr varchar(30),
    dwr varchar(30),
    ns_g varchar(30),
    ns_w varchar(30),
    ns_wse varchar(30),
    kz103_b_2 varchar(30),
    kz201_b_2 varchar(30),
    kz202_b_2 varchar(30),
    kz203_b_2 varchar(30),
    kz204_b_2 varchar(30),
    kz205_b_2 varchar(30),
    kz206_b_2 varchar(30),
    kz207_b_2 varchar(30),
    kz208_b_2 varchar(30),
    kz209_b_2 varchar(30),
    kz210_b_2 varchar(30),
    kz211_b_2 varchar(30),
    kz212_b_2 varchar(30),
    kz5_b_2 varchar(30),
    subsample varchar(30),
    subpopulation varchar(30),
    rswt_natcs16 float,
    rswt_rescs16 float,
    rswt_natpn1016 float,
    rswt_respn1016 float,
    cfps2016edu varchar(30),
    cfps2016sch varchar(30),
    cfps2016eduy float,
    cfps2016eduy_im float,
    releaseversion float,
    interviewerid int,
    primary key (pid)
)engine = myISAM;

load data local infile '/Users/alpha/Downloads/CFPSDATA/CFPS2016/ecfps2016child_201906part3.csv'
into table ecfps2016child_201906part3
fields terminated by ',' optionally enclosed by '"' escaped by '"'
lines terminated by '\n';
