select * from {{ source('olist_source', 'raw_order_payments') }}
