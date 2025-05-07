-- source: https://docs.getdbt.com/guides/best-practices/writing-custom-generic-tests#generic-tests-with-default-config-values
{% test generic_not_null(model, column_name) %}
    SELECT *
    FROM {{model}}
    WHERE {{column_name}} IS NULL
{% endtest %}