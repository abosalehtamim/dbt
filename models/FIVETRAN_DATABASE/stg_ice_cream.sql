with
    ICE_CREAM_DATA as (

        select
            "Sales €" as sales,
            ("Quantity gal" * 3.78) as quantity_kg,
            PRODUCT,
            TIME,
            DATE,
            "Favorite Flavor",
            trim(split_part(LOCATION, ' ', -1)) as city

        from SANDBOX_TAMIMABOSALEH.FIVETRAN_PARTNER.ICE_CREAM_DATA
    )

select * from ICE_CREAM_DATA
