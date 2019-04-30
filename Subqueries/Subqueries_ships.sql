SELECT distinct country 
FROM classes
WHERE numguns = (SELECT MAX(numguns)
                  FROM classes);	


SELECT DISTINCT ships.class
FROM ships
WHERE ships.class IN (SELECT ships.class
                        FROM outcomes JOIN ships ON ships.name=outcomes.ship
                        WHERE result LIKE 'sunk');


SELECT name,ships.class
FROM classes JOIN ships ON classes.class=ships.class
WHERE bore=16;


SELECT outcomes.battle
FROM (classes JOIN ships ON classes.class=ships.class) JOIN outcomes ON ships.name=outcomes.ship
WHERE ships.class LIKE 'Kongo';


