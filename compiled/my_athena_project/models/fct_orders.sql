with orders as (
    select * from "awsdatacatalog"."olist_raw_db"."stg_orders"
),

payments as (
    select
        order_id,
        sum(payment_value) as total_payment
    from "awsdatacatalog"."olist_raw_db"."stg_order_payments"
    group by order_id
),

reviews as (
    select
        order_id,
        review_score
    from "awsdatacatalog"."olist_raw_db"."stg_order_reviews"
),

final as (
    select
        o.order_id,
        o.customer_id,
        o.order_status,
        o.order_purchase_timestamp,
        p.total_payment,
        r.review_score
    from orders o
    left join payments p on o.order_id = p.order_id
    left join reviews r on o.order_id = r.order_id
)

select * from final