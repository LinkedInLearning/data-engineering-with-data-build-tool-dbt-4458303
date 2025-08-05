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
    {{ref('bronze_parking_violations')}}