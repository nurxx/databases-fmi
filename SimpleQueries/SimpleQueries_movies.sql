SELECT address
FROM STUDIO
WHERE name LIKE 'Disney';

SELECT birthdate
FROM MOVIESTAR
WHERE name LIKE 'Jack Nicholson'

SELECT starname
FROM STARSIN
WHERE movieyear= 1980 OR movietitle LIKE '%Knight%';

SELECT name 
FROM MOVIEEXEC
WHERE networth > 10000000;


SELECT name 
FROM MOVIESTAR
WHERE gender LIKE 'M' OR address LIKE 'Prefect Rd';

