/*CREATE VIEW v_flight
AS
 SELECT AIRLINES.NAME,FLIGHT_NUMBER,COUNT(CUSTOMER_ID) AS PASSENGERS
 FROM AIRLINES JOIN BOOKINGS ON AIRLINES.CODE=AIRLINE_CODE
 WHERE STATUS=1
 GROUP BY AIRLINES.NAME,FLIGHT_NUMBER;
 
 
CREATE VIEW v_agency
AS
 SELECT CUSTOMERS.FNAME
 FROM CUSTOMERS JOIN BOOKINGS ON ID=CUSTOMER_ID
 GROUP BY AGENCY,CUSTOMERS.FNAME
 HAVING COUNT(CUSTOMER_ID)>=ALL(SELECT COUNT(CUSTOMER_ID)
 FROM CUSTOMERS JOIN BOOKINGS ON ID=CUSTOMER_ID
 GROUP BY AGENCY,CUSTOMERS.FNAME);

CREATE VIEW v_SF_Agencies
AS
 SELECT *
 FROM AGENCIES
 WHERE CITY='Sofia'
WITH CHECK OPTION;

CREATE VIEW v_SF_PH_Agencies
AS
 SELECT *
 FROM AGENCIES
 WHERE PHONE IS NULL
WITH CHECK OPTION;

INSERT INTO v_SF_Agencies  VALUES('T1 Tour', 'Bulgaria', 'Sofia','+359'); 
INSERT INTO v_SF_PH_Agencies  VALUES('T2 Tour', 'Bulgaria', 'Sofia',null); 
INSERT INTO v_SF_Agencies  VALUES('T3 Tour', 'Bulgaria', 'Varna','+359'); 
INSERT INTO v_SF_PH_Agencies  VALUES('T4 Tour', 'Bulgaria', 'Varna',null); 
INSERT INTO v_SF_PH_Agencies  VALUES('T4 Tour', 'Bulgaria', 'Sofia','+359'); 
*/
