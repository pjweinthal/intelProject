SELECT
  region,
  SUM(net_generation - demand) AS total_energy_produced
FROM
  intel.energy_data
GROUP BY
  region
ORDER BY
  total_energy_produced DESC;

--The region with the highest positive total energy is California, with a total energy produced of 64,939,167.