--this test works in this way:
-- we're gonna get the total revenue per violation code
-- then we're gonna filter to only those violation codes where the total revenue is less than $1,
-- meaning that there should always be a fee associated to them
-- if any rows are returned, the test will fail
{{config(severity='warn')}}      --we could have also set it to 'error' to make the test fail hard, but like this it's just a warning
SELECT
  violation_code,
  SUM(fee_usd) AS total_revenue_usd
FROM
  {{ ref('silver_parking_violation_codes') }}
GROUP BY
  violation_code
HAVING
  NOT(total_revenue_usd >= 1)