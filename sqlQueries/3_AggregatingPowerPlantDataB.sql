WITH renewable_power_plants AS (
    SELECT
        region,
        COUNT(*) AS num_renewable_power_plants
    FROM
        intel.power_plants
    WHERE
        fuel_types LIKE '%SUN%'
        OR fuel_types LIKE '%WND%'
        OR fuel_types LIKE '%HYD%'
    GROUP BY
        region
) 
SELECT
    region,
    num_renewable_power_plants
FROM
  renewable_power_plants
ORDER BY
  num_renewable_power_plants DESC;
  -- The region with the most renewable power plants is the Northwest region with 539 renewable energy power plants.