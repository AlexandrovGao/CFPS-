drop table if exists ecfps2014famconf_170630part2;

create table ecfps2014famconf_170630part2(
    fid14 int,
    kz1pid varchar(30),
    kz101pid_1 varchar(30),
    kz101pid_2 varchar(30),
    cyear int,
    cmonth int,
    kz103 varchar(30),
    releaseversion float,
    primary key (fid14)
)engine = myISAM;

load data local infile '/Users/alpha/Downloads/CFPSDATA/CFPS2014/ecfps2014famconf_170630part2.csv'
into table ecfps2014famconf_170630part2
fields terminated by ',' optionally enclosed by '"' escaped by '"'
lines terminated by '\n';
