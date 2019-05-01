SELECT COUNT(class) AS number_of_classes
FROM classes
WHERE type LIKE 'bb';


SELECT class,AVG(numguns)
FROM classes
WHERE type LIKE 'bb'
GROUP BY class;


SELECT CAST(AVG(numguns) AS INT) AS avg_numguns
FROM classes
WHERE type LIKE 'bb';


SELECT class,MIN(launched) AS firstYear,MAX(launched) AS lastYear
FROM ships
GROUP BY class;


SELECT ships.class, COUNT(outcomes.result) AS number_of_sunk
FROM outcomes JOIN ships ON outcomes.ship = ships.name
WHERE outcomes.result LIKE 'sunk'
GROUP BY ships.class;


SELECT ships.class,COUNT(ships.name) AS No_Sunk
FROM ships JOIN outcomes on ships.name=outcomes.ship
WHERE outcomes.result LIKE 'sunk'
GROUP BY ships.class
HAVING COUNT(ships.name) > 2;


SELECT classes.country, AVG(classes.bore) AS avg_bore
FROM classes JOIN ships ON classes.class = ships.class
GROUP BY classes.country;