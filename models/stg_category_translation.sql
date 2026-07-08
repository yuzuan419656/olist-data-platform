select
    col0 as product_category_name,
    col1 as product_category_name_english
from {{ source('olist_source', 'raw_product_category_name_translation') }}
