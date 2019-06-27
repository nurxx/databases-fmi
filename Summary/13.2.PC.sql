SELECT DISTINCT maker
FROM product
WHERE type='Printer' AND maker IN(SELECT maker
								  FROM product
								  WHERE type='Laptop');

(SELECT maker
FROM product
WHERE type='Printer')
INTERSECT
(SELECT maker
FROM product
WHERE type='Laptop');
/*
UPDATE pc
SET price=price*0.95
WHERE model IN (SELECT product.model
				FROM product JOIN pc ON product.model=pc.model
				GROUP BY maker,product.model
				HAVING AVG(pc.price)>800) 
*/
SELECT hd,MIN(price)
FROM pc
WHERE hd>=10 AND hd<30
GROUP BY hd;