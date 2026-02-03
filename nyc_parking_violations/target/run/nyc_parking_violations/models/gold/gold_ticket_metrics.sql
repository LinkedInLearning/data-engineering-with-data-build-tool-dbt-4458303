
  
    
    

    create  table
      "prod_nyc_parking_violations"."main"."gold_ticket_metrics__dbt_tmp"
  
    as (
      SELECT
    violation_code,
    COUNT(summons_number) AS ticket_count,
    SUM(fee_usd) AS total_revenue_usd
FROM
    "prod_nyc_parking_violations"."main"."silver_violation_tickets"
GROUP BY
    violation_code
ORDER BY
    total_revenue_usd DESC
    );
  
  