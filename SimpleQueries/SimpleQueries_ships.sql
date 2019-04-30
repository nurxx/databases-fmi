SELECT class, country
FROM classes
WHERE numguns < 10;

SELECT name AS shipname
FROM ships
WHERE launched < 1918;

SELECT ship, battle
FROM outcomes
WHERE result='sunk';

SELECT name
FROM ships
WHERE name=class;

SELECT name
FROM ships
WHERE name LIKE 'R%';

SELECT name 
FROM SHIPS
WHERE name LIKE '% %' OR name LIKE '% % %';
