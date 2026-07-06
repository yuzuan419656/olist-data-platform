with products as (
    select * from {{ ref('stg_products') }}
),

category_translation as (
    select * from {{ ref('stg_category_translation') }}
)

select
    p.product_id,
    p.product_category_name,
    ct.product_category_name_english,
    p.product_name_lenght,
    p.product_description_lenght
from products p
left join category_translation ct 
  on p.product_category_name = ct.product_category_name
