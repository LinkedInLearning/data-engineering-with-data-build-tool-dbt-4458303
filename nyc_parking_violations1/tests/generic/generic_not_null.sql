{% test generic_not_null(model, column_name) %}



    select *
    from {{ model }}
    WHERE    {{ column_name }} is null

  


{% endtest %}