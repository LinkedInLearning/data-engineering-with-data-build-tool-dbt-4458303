WITH manhattan_violation_codes AS(
  SELECT
    violation_code,
    definition,
    TRUE AS is_manhattan_96th_streets,
    manhattan_96th_streets as fee_usd
  FROM
    {{ref('bronze_parking_violation_codes')}}
),

all_other_violation_codes AS(
  SELECT
    violation_code,
    definition,
    FALSE AS is_manhattan_96th_streets,
    other_areas as fee_usd
  FROM
    {{ref('bronze_parking_violation_codes')}}
)

select * from manhattan_violation_codes
union all
select * from all_other_violation_codes
order by violation_code asc