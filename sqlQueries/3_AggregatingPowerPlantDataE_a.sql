SELECT
    region,
    DATE_PART('hour', time_at_end_of_hour) AS hour_of_day,
    SUM(hydropower_and_pumped_storage + solar + wind) AS total_renewable_energy_generated
FROM
    intel.energy_data
GROUP BY
    region,
    DATE_PART('hour', time_at_end_of_hour)
ORDER BY
    region,
    DATE_PART('hour', time_at_end_of_hour);