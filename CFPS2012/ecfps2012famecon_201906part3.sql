drop table if exists ecfps2012famecon_201906part3;

create table ecfps2012famecon_201906part3(
    fid12 int,
    food float,
    dress float,
    house float,
    daily float,
    med float,
    trco float,
    eec float,
    other float,
    eptran float,
    epwelf float,
    mortage float,
    expense float,
    urbancomm varchar(30),
    typecomm varchar(30),
    familysize int,
    gene_n int,
    core_n int,
    fswt_natcs12 float,
    fswt_rescs12 float,
    fswt_natpn1012 float,
    fswt_respn1012 float,
    releaseversion float,
    interviewerid int,
    primary key (fid12)
)engine = myISAM;

load data local infile '/Users/alpha/Downloads/CFPSDATA/CFPS2012/ecfps2012famecon_201906part3.csv'
into table ecfps2012famecon_201906part3
fields terminated by ',' optionally enclosed by '"' escaped by '"'
lines terminated by '\n';
