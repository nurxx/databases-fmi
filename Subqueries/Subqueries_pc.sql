SELECT DISTINCT maker
FROM product JOIN pc ON product.model=pc.model
WHERE pc.speed > 500;


SELECT code, model, price
FROM printer
WHERE price = (SELECT MAX(price)
                 FROM printer);


SELECT *
FROM laptop
WHERE laptop.speed < (SELECT MIN(pc.speed)
                        FROM pc);


SELECT laptop.model,laptop.price
FROM laptop
WHERE laptop.price = (SELECT MAX(price)
                        FROM laptop);



SELECT maker
FROM product JOIN printer ON product.model=printer.model
WHERE color  LIKE 'y' and price = (SELECT MIN(price)
                                        FROM printer
                                        WHERE color LIKE 'y');


SELECT maker
FROM product JOIN pc ON product.model=pc.model
WHERE ram = (SELECT MIN(ram)
              FROM pc)
UNION
SELECT maker
FROM product JOIN pc ON product.model=pc.model
WHERE hd = (SELECT MAX(hd)
             FROM pc);