{{config(severity='warn')}}

select 
  violation_code,
  sum(fee_usd) as total_revenue_usd
from
  {{ref('silver_parking_violation_codes')}}
group by 
  violation_code
having 
  not(total_revenue_usd>=1)