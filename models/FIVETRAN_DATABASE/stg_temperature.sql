WITH WEATHER_DATA AS (
    -- Update the 'City' column within the CTE
    SELECT
        CASE WHEN LOCATION = 'Schiphol' THEN 'Amsterdam' ELSE LOCATION END AS City,
        TO_DATE(DATE, 'dd/mm/yyyy') AS Date,
        cast(REPLACE("Avg Temperature (°C)", ',', '.') as decimal)  AS AVG_TEMPERATURE,
        cast(REPLACE("Minimum Temperature (°C)", ',', '.') as decimal) AS MINIMUM_TEMPERATURE,
        cast(REPLACE("Maximum Temperature (°C)", ',', '.') as decimal) AS MAXIMUM_TEMPERATURE,
        cast(REPLACE("Sun Hours", ',', '.') as decimal) as SUN_HOURS

    FROM SANDBOX_TAMIMABOSALEH.FIVETRAN_PARTNER.WEATHER_DATA
)

SELECT * FROM WEATHER_DATA

