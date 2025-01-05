SELECT DISTINCT
    summons_number,
    registration_state,
    plate_type,
    vehicle_body_type,
    vehicle_make,
    vehicle_expiration_date,
    vehicle_color,
    vehicle_year,
    count(*) as count_violations
FROM
    {{ref('silver_parking_violations')}}
GROUP BY
    ALL