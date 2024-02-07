SELECT
    registration_state,
    COUNT(summons_number) AS ticket_count,
FROM
    {{ref('silver_viol_vehicles')}}
WHERE
    registration_state != 'NY'
GROUP BY
    registration_state
ORDER BY
    ticket_count DESC