set spark.sql.shuffle.partitions=200;
set spark.sql.autoBroadcastJoinThreshold=-1;

use ks_tpcds_1g_parquet;
SELECT c_customer_id AS customer_id,
       concat(c_last_name, ', ', c_first_name) AS customername
FROM customer,
     customer_address
WHERE ca_city = 'Edgewood'
  AND c_current_addr_sk = ca_address_sk
ORDER BY c_customer_id;
