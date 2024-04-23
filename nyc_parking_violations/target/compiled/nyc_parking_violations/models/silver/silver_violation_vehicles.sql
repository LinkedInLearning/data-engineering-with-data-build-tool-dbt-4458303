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
) SELECT
    summons_number,
    registration_state,
    plate_type,
    vehicle_body_type,
    vehicle_make,
    vehicle_expiration_date,
    vehicle_color,
    vehicle_year
FROM
    __dbt__cte__silver_parking_violations