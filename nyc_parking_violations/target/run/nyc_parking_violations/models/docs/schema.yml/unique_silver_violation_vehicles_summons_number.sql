select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
        select *
        from "nyc_parking_violations"."main_dbt_test__audit"."unique_silver_violation_vehicles_summons_number"
    
      
    ) dbt_internal_test