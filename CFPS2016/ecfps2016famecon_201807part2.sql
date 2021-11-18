drop table if exists ecfps2016famecon_201807part2;

create table ecfps2016famecon_201807part2(
    fid16 int,
    nonhousing_debts float,
    otherhousevalue float,
    resivalue float,
    savings int,
    total_asset float,
    fwage_1 int,
    fwage_2 int,
    felse_1 int,
    felse_2 int,
    fincome1 float,
    fincome2 float,
    fincome1_per float,
    fincome1_per_p varchar(30),
    fincome2_per float,
    fincome2_per_p varchar(30),
    foperate_1 int,
    foperate_2 int,
    fproperty_1 int,
    fproperty_2 int,
    ftransfer_1 int,
    ftransfer_2 int,
    subpopulation varchar(30),
    subsample varchar(30),
    fswt_natcs16 int,
    fswt_rescs16 float,
    fswt_natpn1016 float,
    fswt_respn1016 float,
    familysize16 int,
    releaseversion float,
    primary key (fid16)
)engine = myISAM;

load data local infile '/Users/alpha/Downloads/CFPSDATA/CFPS2016/ecfps2016famecon_201807part2.csv'
into table ecfps2016famecon_201807part2
fields terminated by ',' optionally enclosed by '"' escaped by '"'
lines terminated by '\n';
