SELECT DISTINCT player_id, FIRST_VALUE(device_id) OVER(PARTITION BY player_id 
ORDER BY event_date) AS device_id FROM Activity;