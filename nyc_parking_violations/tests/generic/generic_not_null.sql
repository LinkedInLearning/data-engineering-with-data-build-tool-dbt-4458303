{% test generic_not_null(model, column_name) %}

SELECT *
FROM {{ model }}
WHERE {{ column_name }} IS NULL

{% endtest %}