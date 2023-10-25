with
    weather_data as (select * from {{ ref("stg_temperature") }}),

    ice_cream_data as (select * from {{ ref("stg_ice_cream") }}),

    final as (

        select
            weather_data.city,
            weather_data.avg_temperature,
            weather_data.minimum_temperature,
            weather_data.maximum_temperature,
            weather_data.sun_hours,
            ice_cream_data.sales,
            ice_cream_data.quantity_kg,
            ice_cream_data.product,
            ice_cream_data.time,
            ice_cream_data.date,
            ice_cream_data."Favorite Flavor"

        from weather_data

        inner join ice_cream_data using (date, city)

    )

select *
from final
