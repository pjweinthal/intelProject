SELECT 
  date, 
  region, 
  ( all_petroleum_products + coal + natural_gas + nuclear + other_fuel_sources) AS energy_generated_mw
FROM
  intel.energy_data;