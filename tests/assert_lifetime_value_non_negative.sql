select
    customer_id
from {{ ref('dim_customers') }}
WHERE lifetime_value < 0