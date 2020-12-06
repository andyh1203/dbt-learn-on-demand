WITH payments AS (
    SELECT * FROM {{ref('stg_payments')}}
),
orders AS (
    SELECT * FROM {{ref('stg_orders')}}
),
final AS (
    SELECT 
        order_id,
        customer_id,
        amount,
        order_date
    FROM orders LEFT JOIN payments USING (order_id)
    WHERE payments.status = 'success'
)
SELECT * FROM final