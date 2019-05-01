 INSERT INTO pc
 VALUES (12,'1100',2400,2048,500,'52x',299);
 INSERT INTO product
 VALUES ('C','1100','pc');

 DELETE FROM pc
 WHERE model LIKE '1100';

 DELETE FROM laptop
 WHERE laptop.model IN (SELECT laptop.model 
                           FROM laptop JOIN product ON laptop.model = product.model
                           WHERE product.maker NOT IN (SELECT product.maker
		                                                FROM product
                                                        WHERE type = 'printer'));
	

 UPDATE product 
 SET maker = 'A'
 WHERE maker = 'B';

 UPDATE pc
 SET price = price/2, hd = hd+20 ;


 UPDATE laptop
 SET screen = screen + 1
 WHERE model in (SELECT laptop.model
                 FROM laptop join product on laptop.model=product.model
                 WHERE product.maker like 'B');

 