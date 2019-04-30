SELECT s.name
FROM ships AS s JOIN classes AS c ON s.class=c.class
WHERE c.displacement > 50000; 


SELECT s.name,c.displacement,c.numguns
FROM (ships AS s JOIN classes AS c ON s.class=c.class) JOIN outcomes ON s.name=ship
WHERE battle LIKE 'Guadalcanal';


SELECT country
FROM classes
WHERE type NOT LIKE 'bb' AND type NOT LIKE 'cc';

