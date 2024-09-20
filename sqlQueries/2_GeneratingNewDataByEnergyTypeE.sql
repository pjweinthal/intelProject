SELECT 
    date,
    region,
    (hydropower_and_pumped_storage + solar + wind) AS energy_generated_mw,'renewable energy' AS energy_type
FROM
    intel.energy_data
UNION
SELECT 
    date,
    region, ( all_petroleum_products + coal + natural_gas + nuclear + other_fuel_sources) AS energy_generated_mw, 'fossil fuel' AS energy_type
FROM
    intel.energy_data;