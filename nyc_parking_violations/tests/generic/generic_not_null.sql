{% test generic_not_null(model, column_name) %}
-- This test checks that there are no NULL values in the specified column of the given model.
-- If any NULL values are found, the test will fail.

    select * 
    from {{ model }}
    where {{ column_name }} is null
{% endtest %}