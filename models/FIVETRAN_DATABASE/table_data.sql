with
    WEATHER_DATA as (select * from {{ ref("stg_temperature") }}),

    ICE_CREAM_DATA as (select * from {{ ref("stg_ice_cream") }}),

    final as (

        select
            WEATHER_DATA.City,
            WEATHER_DATA.AVG_TEMPERATURE,
            WEATHER_DATA.MINIMUM_TEMPERATURE,
            WEATHER_DATA.MAXIMUM_TEMPERATURE,
            WEATHER_DATA.sun_hours,
            ICE_CREAM_DATA.sales,
            ICE_CREAM_DATA.quantity_kg,
            ICE_CREAM_DATA.product,
            ICE_CREAM_DATA.time,
            ICE_CREAM_DATA.date,
            ICE_CREAM_DATA.FAVORITE_FLAVOR


        from WEATHER_DATA

        inner join ICE_CREAM_DATA using (date, city)

    )

select * from final
