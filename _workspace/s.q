use ks_tpcds_1g_parquet;

-- expected result:
SELECT count(*)
FROM store_sales, household_demographics
WHERE
    ss_hdemo_sk = household_demographics.hd_demo_sk
    AND hd_dep_count = 7;
