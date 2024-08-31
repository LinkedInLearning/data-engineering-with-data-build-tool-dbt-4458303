
  
  create view "nyc_parking_violations"."main"."first_model__dbt_tmp" as (
    SELECT * FROM parking_violation_codes
  );
