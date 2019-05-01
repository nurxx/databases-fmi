SELECT CAST(AVG(speed) AS INT) AS avg_speed 
FROM pc;


SELECT product.maker,AVG(laptop.screen) as avg_laptop_screen
FROM product JOIN laptop ON product.model=laptop.model
GROUP BY product.maker;


SELECT CAST(AVG(speed)  AS INT) AS avg_speed
FROM laptop
WHERE price > 1000;


SELECT product.maker,AVG(pc.speed) AS avg_pc_speed
FROM product JOIN pc ON product.model=pc.model
GROUP BY product.maker
HAVING product.maker='A';


SELECT speed,CAST(AVG(price) AS INT) AS avg_price
FROM pc
GROUP BY speed;

SELECT product.maker,COUNT(pc.code) as number_of_pc
FROM product JOIN pc ON product.model=pc.model
GROUP BY product.maker 
HAVING COUNT(DISTINCT pc.code) >= 3;


SELECT product.maker, pc.price
FROM product JOIN pc ON product.model=pc.model
WHERE pc.price = (SELECT MAX(price)
                    FROM pc);


SELECT speed, AVG(price) AS avg_pc_price
FROM pc
GROUP BY speed
HAVING speed > 800;


SELECT product.maker,AVG(pc.hd) AS AvgHd
FROM product JOIN pc ON product.model = pc.model
WHERE product.maker IN (SELECT product.maker
                           FROM product
                           WHERE product.type LIKE 'Printer');
GROUP BY product.maker