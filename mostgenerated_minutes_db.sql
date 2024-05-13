-- This file contains SQL queries used for data transformation

-- Calculate total minutes for each patient
SELECT p.Patient_id,
       p.First_name,
       p.Last_name,
       p.Country,
       COALESCE(SUM(s.Steps) * 0.002, 0) + COALESCE(SUM(e.Minutes), 0) AS total_minutes
FROM patients p
LEFT JOIN (
    SELECT External_id, SUM(Steps) AS Steps
    FROM steps
    GROUP BY External_id
) s ON p.Patient_id = s.External_id
LEFT JOIN (
    SELECT External_id, SUM(Minutes) AS Minutes
    FROM exercises
    GROUP BY External_id
) e ON p.Patient_id = e.External_id
GROUP BY p.Patient_id
ORDER BY total_minutes DESC;