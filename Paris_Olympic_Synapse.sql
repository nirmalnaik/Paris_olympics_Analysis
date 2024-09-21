-- Athletes per Sport
SELECT discipline, COUNT(*) AS AthletesCount
FROM athletes_transformed
GROUP BY discipline
ORDER BY AthletesCount DESC;

-- Gender Representation by Sport
SELECT discipline, gender, COUNT(*) AS Count
FROM athletes_transformed
GROUP BY discipline, gender
ORDER BY discipline, gender;

-- Medal Distribution by Country
SELECT country_code, COUNT(*) AS TotalMedals
FROM medallists_transformed
GROUP BY country_code
ORDER BY TotalMedals DESC;

-- Top Athletes by Medals
SELECT name, COUNT(*) AS MedalsCount
FROM medallists_transformed
GROUP BY name
ORDER BY MedalsCount DESC;

-- Event Density by Date
SELECT start_date, COUNT(*) AS EventsCount
FROM schedules_transformed
GROUP BY start_date
ORDER BY start_date;

-- Overlapping Events on Same Date and Time
SELECT start_date, event_type, COUNT(*) AS EventCount
FROM schedules_transformed
GROUP BY start_date, event_type
HAVING COUNT(*) > 1
ORDER BY start_date, EventCount DESC;

-- Athlete Representation by Country
SELECT country, COUNT(*) AS AthleteCount
FROM athletes_transformed
GROUP BY country
ORDER BY AthleteCount DESC;

-- Medal Count by Country and Type
SELECT country_code, medal_type, COUNT(*) AS MedalCount
FROM medallists_transformed
GROUP BY country_code, medal_type
ORDER BY country_code, medal_type;

-- Create a view for frequently used complex joins or aggregations if needed
CREATE VIEW AthleteSportGender AS
SELECT discipline, gender, COUNT(*) AS Count
FROM athletes_transformed
GROUP BY discipline, gender;

-- Example of joining two views or tables if necessary for further complex analysis
SELECT a.discipline, a.gender, a.Count, m.MedalCount
FROM AthleteSportGender a
JOIN MedalCount m ON a.discipline = m.discipline AND a.gender = m.gender;
