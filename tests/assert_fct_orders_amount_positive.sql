select
    customer_id,
    order_id
from {{ ref('fct_orders') }}
WHERE amount < 0