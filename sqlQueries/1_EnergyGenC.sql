SELECT
  region,
  (
    SUM(hydropower_and_pumped_storage + solar + wind) / SUM(net_generation)
  ) * 100 AS renewable_energy_percentage
FROM
  intel.energy_data
GROUP BY
  region
ORDER BY
  renewable_energy_percentage DESC;