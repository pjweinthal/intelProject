SELECT 
    pp.*, 
    ebpp.* 
FROM
  intel.power_plants AS pp
  JOIN intel.energy_by_plant AS ebpp ON pp.plant_code = ebpp.plant_code;