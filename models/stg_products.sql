select
    product_id,
    product_category_name,
    product_name_lenght,
    product_description_lenght
from {{ source('olist_source', 'raw_products') }}
