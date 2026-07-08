SELECT
    col0 AS product_category_name,
    col1 AS product_category_name_english
FROM {{ source('olist_source', 'raw_product_category_name_translation') }}
