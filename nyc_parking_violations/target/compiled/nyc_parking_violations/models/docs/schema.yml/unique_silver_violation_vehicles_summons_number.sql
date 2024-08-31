
    
    

select
    summons_number as unique_field,
    count(*) as n_records

from "nyc_parking_violations"."main"."silver_violation_vehicles"
where summons_number is not null
group by summons_number
having count(*) > 1


