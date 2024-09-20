WITH solar_pv_power_plants AS (
    SELECT
        region,
        COUNT(*) AS num_solar_pv_power_plants,
        SUM(energy_generated_mw) AS total_energy_generated_mw
    FROM
        intel.power_plants AS pp
    JOIN 
        intel.energy_by_plant AS ebpp ON pp.plant_code = ebpp.plant_code
    WHERE
        pp.primary_technology = 'Solar Photovoltaic'
    GROUP BY
        region 
)
SELECT
  region,
  num_solar_pv_power_plants,
  total_energy_generated_mw
FROM
  solar_pv_power_plants;