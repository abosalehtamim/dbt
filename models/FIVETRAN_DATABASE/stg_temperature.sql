WITH WEATHER_DATA AS (
    -- Update the 'City' column within the CTE
    SELECT
        CASE WHEN LOCATION = 'Schiphol' THEN 'Amsterdam' ELSE LOCATION END AS City,
        TO_DATE(DATE, 'dd/mm/yyyy') AS Date,
        cast(REPLACE(AVG_TEMPERATURE_C_, ',', '.') as decimal)  AS Avg_temperature,
        cast(REPLACE(MINIMUM_TEMPERATURE_C_, ',', '.') as decimal) AS Min_temperature,
        cast(REPLACE(MAXIMUM_TEMPERATURE_C_, ',', '.') as decimal) AS Max_temperature,
        cast(REPLACE(SUN_HOURS, ',', '.') as decimal) as SUN_HOURS

    FROM FIVETRAN_DATABASE.WEATHER_DATA1.WEATHER_DATA
)

-- Select the updated data
SELECT * FROM WEATHER_DATA

