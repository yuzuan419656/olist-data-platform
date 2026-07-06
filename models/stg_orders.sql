select
    order_id,
    customer_id,
    order_status,
    order_purchase_timestamp
from {{ source('olist_source', 'raw_orders') }}
