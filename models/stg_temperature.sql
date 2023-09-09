WITH WEATHER_DATA AS (
    -- Update the 'City' column within the CTE
    SELECT
        CASE WHEN LOCATION = 'Schiphol' THEN 'Amsterdam' ELSE LOCATION END AS City,
        TO_DATE(DATE, 'dd/mm/yyyy') AS Date,
        AVG_TEMPERATURE_C_ AS Avg_temperature,
        MINIMUM_TEMPERATURE_C_ AS Min_temperature,
        MAXIMUM_TEMPERATURE_C_ AS Max_temperature,
        SUN_HOURS

    FROM FIVETRAN_DATABASE.WEATHER_DATA1.WEATHER_DATA
)

-- Select the updated data
SELECT * FROM WEATHER_DATA
