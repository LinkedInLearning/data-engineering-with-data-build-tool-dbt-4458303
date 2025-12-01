select
  registration_state,
  count(summons_number) as no_of_tickets_issued
from
  {{ref('silver_parking_violation_vehicles')}}
group by
  registration_state
order by
  no_of_tickets_issued desc