with
    ICE_CREAM_DATA as (

        select
            cast(REPLACE("Sales €", ',', '.') as decimal) as sales,
            cast(REPLACE("Quantity gal", ',', '.') as decimal) * 3.78 AS quantity_kg,
            PRODUCT,
            TIME,
            DATE,
            "Favorite Flavor",
            trim(split_part(LOCATION, ' ', -1)) as city

        from SANDBOX_TAMIMABOSALEH.FIVETRAN_PARTNER.ICE_CREAM_DATA
    )

select * from ICE_CREAM_DATA
