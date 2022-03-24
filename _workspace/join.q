set spark.sql.shuffle.partitions = 2;
set spark.sql.autoBroadcastJoinThreshold = -1;
set spark.sql.join.preferSortMergeJoin = false;

-- warm up
-- #select count(*) from bigint_10m_1;
-- #select count(*) from bigint_10m_2;

-- expect number of output rows = 200000
select
    t1.md5_value,
    t2.md5_value
from (
    select md5(concat(n, "Some Salt")) as md5_value
    from bigint_10m_1
    where n < 10000000 and n % 5 <= 2
) t1
join (
    select md5(concat(n, "Some Salt")) as md5_value
    from bigint_10m_2
    where n < 10000000 and n % 5 >= 2
) t2 on
    t2.md5_value = t1.md5_value;
