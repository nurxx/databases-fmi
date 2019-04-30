SELECT maker ,speed
FROM product AS p JOIN laptop AS l ON p.model=l.model
WHERE l.hd >= 9;


SELECT laptop.model,laptop.price
FROM product,laptop
WHERE product.maker LIKE 'B' AND product.model=laptop.model
UNION
SELECT pc.model,pc.price
FROM product,pc
WHERE product.maker LIKE 'B' AND product.model=pc.model
UNION
SELECT printer.model,printer.price
FROM product,printer
WHERE product.maker LIKE 'B' AND product.model=printer.model

SELECT maker
FROM product
WHERE type LIKE 'laptop'
EXCEPT 
SELECT maker
FROM product
WHERE type LIKE 'pc'


SELECT DISTINCT p1.hd
FROM pc AS p1,pc AS p2
WHERE p1.hd=p2.hd AND p1.code!=p2.code;


SELECT DISTINCT product.maker
FROM pc p1,pc p2 JOIN product ON p2.model=product.model
WHERE p1.model=p2.model AND p1.speed>=400 AND p2.speed >=400 and p1.code!=p2.code;