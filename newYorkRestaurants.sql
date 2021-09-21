-- Task 1:
SELECT * FROM nomnom;

-- The columns are:

--     name
--     neighborhood
--     cuisine
--     review
--     price
--     health

-- Task 2:
SELECT DISTINCT neighborhood
FROM nomnom;

-- The neighborhoods are:

--     Brooklyn
--     Midtown
--     Chinatown
--     Uptown
--     Queens
--     Downtown

-- Task 3:
SELECT DISTINCT cuisine
FROM nomnom;

-- The cuisine types are:

--     Steak
--     Korean
--     Chinese
--     Pizza
--     Ethiopian
--     Vegetarian
--     Italian
--     Japanese
--     American
--     Mediterranean
--     Indian
--     Soul Food
--     Mexican

-- Task 4:
SELECT *
FROM nomnom
WHERE cuisine = 'Chinese';

-- Task 5:
SELECT *
FROM nomnom
WHERE review >= 4;

-- Task 6:
SELECT *
FROM nomnom
WHERE cuisine = 'Italian' AND price = '$$$';

-- Task 7:
SELECT *
FROM nomnom
WHERE name LIKE "%meatball%";

-- Task 8:
SELECT *
FROM nomnom
WHERE neighborhood = 'Midtown'
OR neighborhood = 'Downtown'
OR neighborhood = 'Chinatown';

-- Task 9:
SELECT *
FROM nomnom
WHERE health IS NULL;

-- Task 10:
SELECT *
FROM nomnom
ORDER BY review DESC
LIMIT 10;

-- Task 11:
SELECT name,
 CASE
  WHEN review > 4.5 THEN 'Extraordinary'
  WHEN review > 4 THEN 'Excellent'
  WHEN review > 3 THEN 'Good'
  WHEN review > 2 THEN 'Fair'
  ELSE 'Poor'
 END AS 'Review'
FROM nomnom;