select violations.*, codes.fee_usd
from 
  {{ref('silver_parking_violations')}} as violations
left join 
  {{ref('silver_parking_violation_codes')}} as codes on
  violations.violation_code = codes.violation_code and 
  violations.is_manhattan_96th_st_below = codes.is_manhattan_96th_st_below