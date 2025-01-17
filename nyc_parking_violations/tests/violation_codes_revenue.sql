{{config(severity = 'warn')}}
SELECT violation_code
      ,sum(fee_usd) as total_revenue_usd
FROM 
   {{ref('silver_parking_violation_codes')}}
GROUP BY 
   violation_code
HAVING 
   NOT((total_revenue_usd >=1))
