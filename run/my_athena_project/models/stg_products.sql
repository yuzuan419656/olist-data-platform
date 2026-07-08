create or replace view
    "awsdatacatalog"."olist_raw_db"."stg_products"
  as
    select
    product_id,
    product_category_name,
    product_name_lenght,
    product_description_lenght
from "awsdatacatalog"."olist_raw_db"."raw_products"
