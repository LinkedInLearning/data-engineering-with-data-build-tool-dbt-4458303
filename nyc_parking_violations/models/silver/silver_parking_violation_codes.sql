with manhattan_violation_codes as (
  select 
    violation_code, 
    definition, 
    TRUE as is_manhattan_96th_st_below,
    manhattan_96th_st_below as fee_usd
  from 
    {{ref('bronze_parking_violation_codes')}}
),

all_other_violation_codes as (
  select 
    violation_code, 
    definition, 
    FALSE as is_manhattan_96th_st_below,
    all_other_areas as fee_usd
  from 
    {{ref('bronze_parking_violation_codes')}}
)

select * from manhattan_violation_codes
union all
select * from all_other_violation_codes
order by violation_code asc

