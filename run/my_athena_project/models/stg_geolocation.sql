create or replace view
    "awsdatacatalog"."olist_raw_db"."stg_geolocation"
  as
    select * from "awsdatacatalog"."olist_raw_db"."raw_geolocation"
