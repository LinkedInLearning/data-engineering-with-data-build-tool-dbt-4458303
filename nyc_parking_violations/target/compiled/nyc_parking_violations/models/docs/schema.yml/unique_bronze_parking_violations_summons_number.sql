
    
    

select
    summons_number as unique_field,
    count(*) as n_records

from "prod_nyc_parking_violations"."main"."bronze_parking_violations"
where summons_number is not null
group by summons_number
having count(*) > 1


