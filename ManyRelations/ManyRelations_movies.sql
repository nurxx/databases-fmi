SELECT name
FROM moviestar JOIN starsin ON name=starname
WHERE gender LIKE 'M' AND movietitle LIKE 'The Usual Suspects';


SELECT starname
FROM starsin JOIN movie ON title=movietitle
WHERE studioname LIKE 'MGM' AND movieyear = 1995;


SELECT DISTINCT name
FROM movie JOIN movieexec ON producer=cert
WHERE studioname LIKE 'MGM';


SELECT m2.title
FROM movie AS m1, movie AS m2
WHERE  m1.length < m2.length AND m1.title LIKE 'Star Wars';


SELECT m2.name
FROM movieexec AS m1,movieexec AS m2
WHERE m1.networth < m2.networth AND m1.name LIKE 'Stephen Spielberg';


SELECT movie.title
FROM movieexec AS m1,movieexec AS m2 JOIN movie ON m2.cert=movie.producer
WHERE m1.networth < m2.networth AND m1.name LIKE 'Stephen Spielberg';