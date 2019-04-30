SELECT maker,model,type
FROM product
EXCEPT
SELECT maker,product.model,product.type
FROM product JOIN pc ON product.model=pc.model
EXCEPT
SELECT maker,product.model,product.type
FROM product JOIN laptop ON laptop.model=product.model
EXCEPT
SELECT maker,product.model,product.type
FROM product JOIN printer ON printer.model=product.model;



SELECT DISTINCT t1.maker
FROM product AS t1, product AS t2
WHERE t1.type LIKE 'Laptop' AND t2.type LIKE 'Printer'
INTERSECT
SELECT DISTINCT t1.maker
FROM product AS t1, product AS t2
WHERE t1.type LIKE 'Printer' AND t2.type LIKE 'Laptop';



SELECT DISTINCT t1.hd
FROM laptop AS t1,laptop AS t2
WHERE t1.code <> t2.code AND t1.hd = t2.hd;



SELECT pc.model
FROM  pc LEFT JOIN product ON pc.model = product.model
WHERE maker IS NULL;

