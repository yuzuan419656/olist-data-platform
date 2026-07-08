create or replace view
    "awsdatacatalog"."olist_raw_db"."stg_order_payments"
  as
    select * from "awsdatacatalog"."olist_raw_db"."raw_order_payments"
