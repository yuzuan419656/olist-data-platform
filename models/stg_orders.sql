SELECT
    col0 AS order_id,
    col1 AS customer_id,
    col2 AS order_status,
    col3 AS order_purchase_timestamp,
    col4 AS order_approved_at,
    col5 AS order_delivered_carrier_date,
    col6 AS order_delivered_customer_date,
    col7 AS order_estimated_delivery_date
FROM {{ source('olist_source', 'raw_orders') }}
