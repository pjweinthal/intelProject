SELECT
  region,
  SUM(hydropower_and_pumped_storage + solar + wind) AS total_renewable_energy
FROM
  intel.energy_data
GROUP BY
  region
 
ORDER BY
  total_renewable_energy DESC;

--The top two regions for total renewable energy production are Central with a total renewable energy of 120,536,677 and Midwest with a total renewable energy of 118,303,446.