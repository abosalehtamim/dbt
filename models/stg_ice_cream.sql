with ICE_CREAM_DATA as (
    
    select 
        SALES_ as Sales,
        (QUANTITY_GAL*3.78) as Quantity_kg,
        PRODUCT,
        TIME,
        DATE,
        TRIM(SPLIT_PART(LOCATION, ' ', -1)) AS City

    from FIVETRAN_DATABASE.ICE_CREAM_DATA.ICE_CREAM_DATA_SHEET
)

select * from ICE_CREAM_DATA