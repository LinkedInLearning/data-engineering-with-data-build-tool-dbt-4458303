
  
  create view "prod_nyc_parking_violations"."main"."bronze_parking_violation_codes__dbt_tmp" as (
    SELECT
    code AS violation_code,
    definition,
    manhattan_96th_st_below,
    all_other_areas
FROM
    parking_violation_codes
  );
