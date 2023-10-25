with
    weather_data as (select * from {{ ref("stg_temperature") }}),

    ice_cream_data as (select * from {{ ref("stg_ice_cream") }}),

    final as (

        select
            weather_data.City,
            weather_data.AVG_TEMPERATURE,
            weather_data.MINIMUM_TEMPERATURE,
            weather_data.MAXIMUM_TEMPERATURE,
            weather_data.sun_hours,
            ice_cream_data.sales,
            ice_cream_data.quantity_kg,
            ice_cream_data.product,
            ice_cream_data.time,
            ice_cream_data.date,
            ice_cream_data.FAVORITE_FLAVOR


        from weather_data

        inner join ice_cream_data using (date, city)

    )

select * from final
