 INSERT INTO classes
 VALUES ('Nelson','bb','Gt.Britain',9,16,34000);
 INSERT INTO ships
 VALUES ('Nelson','Nelson',1927),('Rodney','Nelson',1927);


 DELETE FROM ships
 WHERE ships.name IN (SELECT outcomes.ship
                        FROM outcomes
                        WHERE outcomes.result LIKE 'sunk');


UPDATE classes
SET bore = bore/2.5,displacement = displacement*1.1;
