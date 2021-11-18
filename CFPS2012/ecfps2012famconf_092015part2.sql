drop table if exists ecfps2012famconf_092015part2;

create table ecfps2012famconf_092015part2(
    pid int,
    alive_a_c10 varchar(30),
    deathreason_c10 int,
    tb3_a12_c10 varchar(30),
    tb4_a12_c10 varchar(30),
    qa301_a12_c10 varchar(30),
    qa302_a12_c10 varchar(30),
    tb6_a12_c10 varchar(30),
    tb601_a12_c10 varchar(30),
    outpers_where12_c10 varchar(30),
    tb602acode_a12_c10 varchar(30),
    leavingtime_y_c10 varchar(30),
    leavingtime_m_c10 varchar(30),
    co_a12_c10 varchar(30),
    cageyog varchar(30),
    nchd1 int,
    nchd2 int,
    nchd3 int,
    genetype varchar(30),
    coremember varchar(30),
    gene_n int,
    core_n int,
    familysize int,
    tf10pid varchar(30),
    subpopulation varchar(30),
    subsample varchar(30),
    fbirth12 varchar(30),
    mbirth12 varchar(30),
    feduc12 varchar(30),
    meduc12 varchar(30),
    generation varchar(30),
    releaseversion int,
    primary key (pid)
)engine = myISAM;

load data local infile '/Users/alpha/Downloads/CFPSDATA/CFPS2012/ecfps2012famconf_092015part2.csv'
into table ecfps2012famconf_092015part2
fields terminated by ',' optionally enclosed by '"' escaped by '"'
lines terminated by '\n';
