
SELECT title,name
FROM movie JOIN movieexec ON producer=cert
WHERE name = (SELECT name
               FROM movie JOIN movieexec ON producer=cert
                WHERE title LIKE 'Star Wars');


SELECT DISTINCT name
FROM (movieexec JOIN movie ON producer=cert) JOIN starsin ON title=movietitle
WHERE starname LIKE 'Harrison Ford';


SELECT DISTINCT studioname,starname
FROM movie JOIN starsin ON title=movietitle
ORDER BY studioname;


SELECT DISTINCT starname,networth,title
FROM (movieexec JOIN movie ON producer=cert) JOIN starsin ON title=movietitle
WHERE networth = (SELECT MAX(networth)
                   FROM movieexec)
ORDER BY title;


SELECT name,movietitle
FROM moviestar LEFT JOIN starsin ON name = starname
WHERE movietitle IS NULL;
