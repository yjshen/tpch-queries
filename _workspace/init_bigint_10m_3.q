create table bigint_10m_3 stored as parquet as
select
    i+1 as n
from
    (select 1) x lateral view posexplode(split(space(10000000),' ')) pe as i, x
;
