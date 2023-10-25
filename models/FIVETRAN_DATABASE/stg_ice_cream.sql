with
    ICE_CREAM_DATA as (

        select
            sales_ as sales,
            (quantity_gal * 3.78) as quantity_kg,
            product,
            time,
            date,
            FAVORITE_FLAVOR,
            trim(split_part(location, ' ', -1)) as city

        from SANDBOX_TAMIMABOSALEH.FIVETRAN_PARTNER.ICE_CREAM_DATA
    )

select * from ICE_CREAM_DATA
