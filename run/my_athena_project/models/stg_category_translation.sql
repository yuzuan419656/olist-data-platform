create or replace view
    "awsdatacatalog"."olist_raw_db"."stg_category_translation"
  as
    SELECT
    col0 AS product_category_name,
    col1 AS product_category_name_english
FROM "awsdatacatalog"."olist_raw_db"."raw_product_category_name_translation"
