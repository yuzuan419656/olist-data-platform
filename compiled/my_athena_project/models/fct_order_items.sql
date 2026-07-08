with order_items as (
    select * from "awsdatacatalog"."olist_raw_db"."stg_order_items"
)

select
    order_id,
    order_item_id,
    product_id,
    seller_id,
    shipping_limit_date,
    price,
    freight_value,
    (price + freight_value) as total_item_value
from order_items