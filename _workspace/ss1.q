use ks_tpcds_1g_parquet;

SELECT hd_dep_count, count(*)
FROM store_sales, household_demographics
WHERE ss_hdemo_sk = hd_demo_sk
GROUP BY hd_dep_count
