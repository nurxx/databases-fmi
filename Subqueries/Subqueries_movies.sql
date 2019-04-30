SELECT name
FROM MOVIESTAR
WHERE gender LIKE 'F' AND name IN (SELECT name
                                    FROM MOVIEEXEC
                                    WHERE networth>10000000);

SELECT name
FROM MOVIESTAR
WHERE name NOT IN (SELECT name
                    FROM MOVIEEXEC);

SELECT title
FROM MOVIE m
WHERE m.length > (SELECT length
                     FROM MOVIE
                      WHERE title LIKE 'Star Wars');

SELECT name,title
FROM MOVIEEXEC JOIN MOVIE ON cert=producer
WHERE networth > (SELECT ALL(networth)
                    FROM MOVIEEXEC
                    WHERE name LIKE 'Merv Griffin');