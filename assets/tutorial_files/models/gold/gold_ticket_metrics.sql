SELECT
    violation_code,
    COUNT(summons_number) AS ticket_count,
    SUM(fee_usd) AS total_revenue_usd
FROM
    {{ref('silver_violation_tickets')}}
GROUP BY
    violation_code
ORDER BY
    total_revenue_usd DESC