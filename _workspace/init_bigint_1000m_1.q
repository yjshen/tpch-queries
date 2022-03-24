create table bigint_100m_1 stored as parquet as
select
    i+1 as n
from
    (select 1) x lateral view posexplode(split(space(100000000),' ')) pe as i, x
;
