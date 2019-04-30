SELECT *
FROM ships JOIN classes ON ships.class=classes.class;


SELECT *
FROM classes LEFT JOIN ships ON ships.class=classes.class;


SELECT classes.country,ships.name
FROM (ships LEFT JOIN outcomes ON ships.name=outcomes.ship) JOIN classes ON ships.class = classes.class
WHERE outcomes.battle IS NULL
ORDER BY classes.country;


SELECT ships.name AS 'Ship Name'
FROM ships join classes on ships.class = classes.class
WHERE ships.launched = 1916 AND classes.numguns>=7;


SELECT outcomes.ship,outcomes.battle, battles.date
FROM outcomes JOIN battles ON outcomes.battle = battles.name
WHERE outcomes.result LIKE 'sunk'
ORDER BY outcomes.battle;


SELECT classes.class,classes.type,classes.country,classes.numguns,classes.bore,classes.displacement
FROM classes LEFT JOIN ships on ships.class = classes.class
WHERE ships.launched IS NULL;


SELECT ships.name,classes.displacement,classes.numguns,outcomes.result
FROM (ships JOIN classes ON ships.class=classes.class) JOIN outcomes ON ships.name=outcomes.ship
WHERE outcomes.battle LIKE 'North Atlantic';