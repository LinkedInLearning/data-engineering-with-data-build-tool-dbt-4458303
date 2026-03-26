WITH manhattan_violation_codes AS (
    SELECT
        violation_code,
        definition,
        TRUE AS is_manhattan_96th_st_below,-- create a boolean
        manhattan_96th_st_below AS fee_usd,
    FROM
        {{ref('bronze_parking_violation_codes')}}
),
-- The above code is making each violation code separate line, 
-- so doubling rows and have blanks
all_other_violation_codes AS (
    SELECT
        violation_code,
        definition,
        FALSE AS is_manhattan_96th_st_below, -- false for boolean
        all_other_areas AS fee_usd,
    FROM
        {{ref('bronze_parking_violation_codes')}}
)

SELECT * FROM manhattan_violation_codes
UNION ALL
SELECT * FROM all_other_violation_codes
ORDER BY violation_code ASC