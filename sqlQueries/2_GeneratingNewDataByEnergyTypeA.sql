SELECT 
  date,
  region,
  (hydropower_and_pumped_storage + solar + wind) AS energy_generated_mw
FROM
  intel.energy_data;