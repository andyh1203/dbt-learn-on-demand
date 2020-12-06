select
    customer_id
from {{ ref('dim_customers') }}
WHERE number_of_orders < 0