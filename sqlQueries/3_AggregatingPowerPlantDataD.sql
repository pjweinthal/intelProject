WITH solar_pv_power_plants AS (
    SELECT
        region,
        COUNT(*) AS num_solar_pv_power_plants,
        SUM(energy_generated_mw) AS total_energy_generated_mw,
        AVG(energy_generated_mw) AS
        avg_energy_generated_per_plant
    FROM
        intel.power_plants AS pp
    JOIN intel.energy_by_plant AS ebpp ON pp.plant_code = ebpp.plant_code
    WHERE
        pp.primary_technology = 'Solar Photovoltaic'
 
    GROUP BY
        region
    HAVING
        COUNT(*) >= 50
) 
SELECT
  region,
  num_solar_pv_power_plants,
  total_energy_generated_mw,
  avg_energy_generated_per_plant
FROM
  solar_pv_power_plants;
/*Comparing the average energy generated per solar photovoltaic power plant in the Midwest region to other regions such as Florida, California, and Texas reveals a notable difference. 
While the Midwest region has 71 solar photovoltaic power plants with an average energy generation of approximately 116.97 MW per plant, Florida, California, and Texas have significantly higher averages at 293.41 MW, 378.02 MW, and 570.64 MW respectively. 
This suggests that the solar photovoltaic power plants in the Midwest region may be smaller or less efficient on average compared to these other regions.*/
