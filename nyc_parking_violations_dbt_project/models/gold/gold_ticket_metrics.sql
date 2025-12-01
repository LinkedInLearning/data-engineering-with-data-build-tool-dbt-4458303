select
  violation_code,
  count(summons_number) as no_of_tickets_issued,
  sum(fee_usd) as total_amount_collected_usd
from
  {{ref('silver_parking_violation_tickets')}}
group by
  violation_code
order by
  total_amount_collected_usd desc