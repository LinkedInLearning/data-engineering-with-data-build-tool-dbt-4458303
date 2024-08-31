with __dbt__cte__first_model as (
SELECT * FROM parking_violation_codes
) SELECT 
  COUNT (*) 
FROM 
  __dbt__cte__first_model