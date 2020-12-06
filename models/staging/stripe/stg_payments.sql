SELECT
    id,
    orderid AS order_id,
    paymentmethod as payment_method,
    status,
    amount / 100 as amount,
    created
FROM `dbt-tutorial`.stripe.payment