with
    ice_cream_data as (

        select
            sales_ as sales,
            (quantity_gal * 3.78) as quantity_kg,
            product,
            time,
            date,
            FAVORITE_FLAVOR,
            trim(split_part(location, ' ', -1)) as city

        from fivetran_database.ice_cream_data.ice_cream_data_sheet
    )

select * from ice_cream_data
