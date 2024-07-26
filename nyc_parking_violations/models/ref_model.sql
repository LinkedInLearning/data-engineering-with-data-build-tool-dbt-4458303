SELECT
  COUNT(*)
FROM 
  {{ref('first_model')}}
-- This command will run in dbt and show in the db, but won't have the ref statement to how that it's connected
-- to each other and that's what make dbt powerful