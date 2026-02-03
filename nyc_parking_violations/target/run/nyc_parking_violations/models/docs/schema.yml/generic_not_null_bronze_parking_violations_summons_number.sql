select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
        select *
        from "nyc_parking_violations"."main_dbt_test__audit"."generic_not_null_bronze_parking_violations_summons_number"
    
      
    ) dbt_internal_test