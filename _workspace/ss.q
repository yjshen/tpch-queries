
set spark.sql.autoBroadcastJoinThreshold=-1;

use ks_tpcds_1g_parquet;
SELECT c_customer_id AS customer_id,
       concat(c_last_name, ', ', c_first_name) AS customername,
c_current_addr_sk
FROM customer
ORDER BY c_customer_id;
