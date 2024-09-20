SELECT 
  date,
  region,
  (hydropower_and_pumped_storage + solar + wind) AS energy_generated_mw,'renewable energy' AS energy_type
FROM
  intel.energy_data;