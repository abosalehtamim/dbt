with WEATHER_DATA as (

    select * from {{ ref('stg_temperature') }}

),

ICE_CREAM_DATA as (

    select * from {{ ref('stg_ice_cream') }}

),


final as (

    select
        WEATHER_DATA.City,
        WEATHER_DATA.Avg_temperature,
        WEATHER_DATA.Min_temperature,
        WEATHER_DATA.Max_temperature,
        WEATHER_DATA.SUN_HOURS,
        ICE_CREAM_DATA.Sales,
        ICE_CREAM_DATA.Quantity_kg,
        ICE_CREAM_DATA.PRODUCT,
        ICE_CREAM_DATA.TIME,
        ICE_CREAM_DATA.DATE

    from WEATHER_DATA

    inner join ICE_CREAM_DATA using (DATE,City)

)

select * from final