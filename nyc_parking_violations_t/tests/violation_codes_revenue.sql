select 
  violation_code,
  SUM(COALESCE(fee_usd, 0)) as total_revenue_usd
from
  {{ ref('silver_parking_violation_codes')}}
group by 
  violation_code
having
  not (SUM(COALESCE(fee_usd, 0))>=1)

  