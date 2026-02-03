
  
  create view "prod_nyc_parking_violations"."main"."silver_violation_tickets__dbt_tmp" as (
    with __dbt__cte__silver_parking_violations as (
SELECT
    summons_number,
    registration_state,
    plate_type,
    issue_date,
    violation_code,
    vehicle_body_type,
    vehicle_make,
    issuing_agency,
    vehicle_expiration_date,
    violation_location,
    violation_precinct,
    issuer_precinct,
    issuer_code,
    issuer_command,
    issuer_squad,
    violation_time,
    violation_county,
    violation_legal_code,
    vehicle_color,
    vehicle_year,
    CASE WHEN
        violation_county == 'MN'
        THEN TRUE
        ELSE FALSE
        END AS is_manhattan_96th_st_below
FROM
    "prod_nyc_parking_violations"."main"."bronze_parking_violations"
),  __dbt__cte__silver_parking_violation_codes as (
WITH manhattan_violation_codes AS (
    SELECT
        violation_code,
        definition,
        TRUE AS is_manhattan_96th_st_below,
        manhattan_96th_st_below AS fee_usd,
    FROM
        "prod_nyc_parking_violations"."main"."bronze_parking_violation_codes"
),

all_other_violation_codes AS (
    SELECT
        violation_code,
        definition,
        FALSE AS is_manhattan_96th_st_below,
        all_other_areas AS fee_usd,
    FROM
        "prod_nyc_parking_violations"."main"."bronze_parking_violation_codes"
)

SELECT * FROM manhattan_violation_codes
UNION ALL
SELECT * FROM all_other_violation_codes
ORDER BY violation_code ASC
) SELECT
    violations.summons_number,
    violations.issue_date,
    violations.violation_code,
    violations.is_manhattan_96th_st_below,
    violations.issuing_agency,
    violations.violation_location,
    violations.violation_precinct,
    violations.issuer_precinct,
    violations.issuer_code,
    violations.issuer_command,
    violations.issuer_squad,
    violations.violation_time,
    violations.violation_county,
    violations.violation_legal_code,
    codes.fee_usd
FROM
    __dbt__cte__silver_parking_violations AS violations
LEFT JOIN
    __dbt__cte__silver_parking_violation_codes AS codes ON
    violations.violation_code = codes.violation_code AND
    violations.is_manhattan_96th_st_below = codes.is_manhattan_96th_st_below
  );
