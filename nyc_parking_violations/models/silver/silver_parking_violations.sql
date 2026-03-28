select
  summons_number,
  violation_code,
  violation_location,
  violation_precinct,
  issuer_precinct,
  issuing_agency,
  issuer_code,
  issuer_command,
  issuer_squad,
  violation_time,
  violation_county,
  violation_legal_code,
  vehicle_color,
  vehicle_year,
  registration_state,
  plate_type,
  vehicle_body_type,
  vehicle_make,
  vehicle_expiration_date,
  case when
    violation_county == 'MN'
    then TRUE
    else FALSE
    end as is_manhattan_96th_st_below
from {{ref('bronze_parking_violations')}}