SE master
GO
if exists (select * from sysdatabases where name='FLIGHTS')
	DROP DATABASE FLIGHTS
GO

CREATE DATABASE FLIGHTS
GO
USE FLIGHTS
GO

/* CREATE TABLES */

CREATE TABLE AIRLINES(
    CODE CHAR(2) NOT NULL,
    NAME VARCHAR(20) UNIQUE NOT NULL,
    COUNTRY VARCHAR(50) NOT NULL,
    PRIMARY KEY (CODE)
);

CREATE TABLE AIRPORTS(
    CODE CHAR(3) NOT NULL,
    NAME VARCHAR(50) UNIQUE NOT NULL,
    COUNTRY VARCHAR(50) NOT NULL,
    CITY VARCHAR(50) NOT NULL,
    PRIMARY KEY (CODE)
);

CREATE TABLE AIRPLANES(
    CODE CHAR(3) NOT NULL,
    TYPE VARCHAR(30) NOT NULL,
    SEATS INT NOT NULL,
    YEAR INT NOT NULL,
    PRIMARY KEY (CODE)
 );

CREATE TABLE FLIGHTS(
    FNUMBER CHAR(10) NOT NULL PRIMARY KEY,
    AIRLINE_OPERATOR CHAR(2) NOT NULL REFERENCES AIRLINES(CODE),
    DEP_AIRPORT CHAR(3) NOT NULL REFERENCES AIRPORTS(CODE),
    ARR_AIRPORT CHAR(3) NOT NULL REFERENCES AIRPORTS(CODE),
    FLIGHT_TIME TIME NOT NULL,
    FLIGHT_DURATION INT NOT NULL,
    AIRPLANE CHAR(3) NOT NULL REFERENCES AIRPLANES(CODE)
 );

CREATE TABLE CUSTOMERS(
    ID INT NOT NULL PRIMARY KEY,
    FNAME VARCHAR(50) NOT NULL,
    LNAME VARCHAR(50) NOT NULL,
    EMAIL VARCHAR(50)
);

CREATE TABLE AGENCIES(
    NAME VARCHAR(100) NOT NULL PRIMARY KEY,
    COUNTRY VARCHAR(50) NOT NULL,
    CITY VARCHAR(50) NOT NULL,
    PHONE VARCHAR(50)
 );

CREATE TABLE BOOKINGS(
    CODE CHAR(6) NOT NULL PRIMARY KEY,
    AGENCY VARCHAR(100) NOT NULL REFERENCES AGENCIES(NAME),
    AIRLINE_CODE CHAR(2) NOT NULL REFERENCES AIRLINES(CODE),
    FLIGHT_NUMBER CHAR(10) NOT NULL REFERENCES FLIGHTS(FNUMBER),
    CUSTOMER_ID INT NOT NULL REFERENCES CUSTOMERS(ID),
    BOOKING_DATE DATE NOT NULL,
    FLIGHT_DATE DATE NOT NULL,
    PRICE DECIMAL (9,2) NOT NULL,
    STATUS INT NOT NULL
);

/* INSERT DATA */

INSERT INTO AIRLINES
  VALUES ('AZ', 'Alitalia', 'Italy');

INSERT INTO AIRLINES
  VALUES ('BA', 'British Airways', 'United Kingdom');

INSERT INTO AIRLINES
  VALUES ('LH', 'Lufthansa', 'Germany');

INSERT INTO AIRLINES
  VALUES ('SR', 'Swissair', 'Switzerland');

INSERT INTO AIRLINES
  VALUES ('FB', 'Bulgaria Air', 'Bulgaria');

INSERT INTO AIRLINES
  VALUES ('SU', 'Aeroflot', 'Russian Federation');

INSERT INTO AIRLINES
  VALUES ('AF', 'Air France', 'France');

INSERT INTO AIRLINES
  VALUES ('TK', 'Turkish Airlines', 'Turkey');

INSERT INTO AIRLINES
  VALUES ('AA', 'American Airlines', 'United States');

INSERT INTO AIRLINES
  VALUES ('OA', 'Olympic Air', 'Greece');

INSERT INTO AIRLINES
  VALUES ('A3', 'Aegean Airlines', 'Greece');

INSERT INTO AIRLINES
  VALUES ('ET', 'Ethiopian Airlines', 'Ethiopia');

INSERT INTO AIRLINES
  VALUES ('U2', 'EasyJet', 'United Kingdom');

INSERT INTO AIRLINES
  VALUES ('DL', 'Delta Air Lines', 'France');

INSERT INTO AIRPORTS
  VALUES ('SVO', 'Sheremetyevo', 'Russian Federation', 'Moscow');

INSERT INTO AIRPORTS
  VALUES ('DME', 'Domodedovo', 'Russian Federation', 'Moscow');

INSERT INTO AIRPORTS
  VALUES ('SOF', 'Sofia International', 'Bulgaria', 'Sofia');

INSERT INTO AIRPORTS
  VALUES ('BOJ', 'Burgas International', 'Bulgaria', 'Burgas');

INSERT INTO AIRPORTS
  VALUES ('CDG', 'Charles De Gaulle', 'France', 'Paris');

INSERT INTO AIRPORTS
  VALUES ('ORY', 'Orly', 'France', 'Paris');

INSERT INTO AIRPORTS
  VALUES ('LBG', 'Le Bourget', 'France', 'Paris');

INSERT INTO AIRPORTS
  VALUES ('JFK', 'John F Kennedy International', 'United States',
    'New York');

INSERT INTO AIRPORTS
  VALUES ('ORD', 'Chicago O''Hare International', 'United States',
    'Chicago');

INSERT INTO AIRPORTS
  VALUES ('IST', 'Ataturk International', 'Turkey', 'Istanbul');

INSERT INTO AIRPORTS
  VALUES ('ESB', 'Esenboga International', 'Turkey', 'Ankara');

INSERT INTO AIRPORTS
  VALUES ('AHN', 'Athens', 'Greece', 'Athens');

INSERT INTO AIRPORTS
  VALUES ('FKB', 'Karlsruhe', 'Germany', 'Karlsruhe');

INSERT INTO AIRPORTS
  VALUES ('TXL', 'Tegel', 'Germany', 'Berlin');

INSERT INTO AIRPORTS
  VALUES ('BER', 'Berlin Metropolitan Area', 'Germany', 'Berlin');

INSERT INTO AIRPORTS
  VALUES ('MUC', 'Franz Josef Strauss', 'Germany', 'Munich');

INSERT INTO AIRPORTS
  VALUES ('GVA', 'Geneve-Cointrin', 'Switzerland', 'Geneve');

INSERT INTO AIRPORTS
  VALUES ('BRN', 'Belp', 'Switzerland', 'Berne');

INSERT INTO AIRPORTS
  VALUES ('FCO', 'Leonardo da Vinci International', 'Italy', 'Rome');

INSERT INTO AIRPORTS
  VALUES ('LIN', 'Linate', 'Italy', 'Milan');

INSERT INTO AIRPORTS
  VALUES ('LHR', 'London Heathrow', 'United Kingdom', 'London');

INSERT INTO AIRPLANES
  VALUES ('319', 'Airbus A319', 150, 1993);

INSERT INTO AIRPLANES
  VALUES ('320', 'Airbus A320', 280, 1984);

INSERT INTO AIRPLANES
  VALUES ('321', 'Airbus A321', 150, 1989);

INSERT INTO AIRPLANES
  VALUES ('100', 'Fokker 100', 80, 1991);

INSERT INTO AIRPLANES
  VALUES ('738', 'Boeing 737-800', 90, 1997);

INSERT INTO AIRPLANES
  VALUES ('735', 'Boeing 737-800', 90, 1995);

INSERT INTO AIRPLANES
  VALUES ('AT5', 'ATR 42?0', 50, 1995);

INSERT INTO AIRPLANES
  VALUES ('DH4', 'De Havilland DHC-8-400', 70, 1992);

INSERT INTO FLIGHTS
  VALUES ('FB1363', 'SU', 'SOF', 'SVO', '12:45', 100, '738');

INSERT INTO FLIGHTS
  VALUES ('FB1364', 'SU', 'SVO', 'SOF', '10:00', 120, '321');

INSERT INTO FLIGHTS
  VALUES ('SU2060', 'SU', 'SVO', 'SOF', '11:10', 110, '738');

INSERT INTO FLIGHTS
  VALUES ('SU2061', 'SU', 'SOF', 'SVO', '13:00', 110, '320');

INSERT INTO FLIGHTS
  VALUES ('FB363', 'FB', 'SOF', 'SVO', '15:10', 110, '738');

INSERT INTO FLIGHTS
  VALUES ('FB364', 'FB', 'SVO', 'SOF', '21:05', 120, '738');

INSERT INTO FLIGHTS
  VALUES ('FB437', 'FB', 'SOF', 'MUC', '09:10', 120, '319');

INSERT INTO FLIGHTS
  VALUES ('FB438', 'FB', 'MUC', 'SOF', '12:10', 90, '738');

INSERT INTO FLIGHTS
  VALUES ('TK1027', 'TK', 'IST', 'SOF', '07:00', 100, '738');

INSERT INTO FLIGHTS
  VALUES ('TK1028', 'TK', 'SOF', 'IST', '10:00', 100, 'AT5');

INSERT INTO FLIGHTS
  VALUES ('OA307', 'OA', 'AHN', 'SOF', '09:25', 40, '738');

INSERT INTO FLIGHTS
  VALUES ('OA308', 'OA', 'SOF', 'AHN', '10:25', 40, '738');

INSERT INTO FLIGHTS
  VALUES ('EZY3159', 'U2', 'LHR', 'SOF', '10:05', 90, '738');

INSERT INTO FLIGHTS
  VALUES ('EZY3160', 'U2', 'SOF', 'LHR', '12:45', 90, '738');

INSERT INTO FLIGHTS
  VALUES ('EZY1931', 'U2', 'LHR', 'SOF', '10:15', 90, '738');

INSERT INTO FLIGHTS
  VALUES ('EZY1932', 'U2', 'SOF', 'LHR', '13:05', 90, '738');

INSERT INTO FLIGHTS
  VALUES ('LH1702', 'LH', 'MUC', 'SOF', '10:10', 100, '738');

INSERT INTO FLIGHTS
  VALUES ('LH1703', 'LH', 'SOF', 'MUC', '13:10', 100, '738');

INSERT INTO FLIGHTS
  VALUES ('FB851', 'FB', 'SOF', 'LHR', '13:30', 100, '738');

INSERT INTO FLIGHTS
  VALUES ('FB852', 'FB', 'LHR', 'SOF', '16:30', 100, '100');

INSERT INTO FLIGHTS
  VALUES ('LH1426', 'LH', 'FKB', 'SOF', '11:05', 120, '738');

INSERT INTO FLIGHTS
  VALUES ('LH1427', 'LH', 'SOF', 'FKB', '13:45', 120, '735');

INSERT INTO FLIGHTS
  VALUES ('FB457', 'FB', 'SOF', 'CDG', '09:10', 100, '319');

INSERT INTO FLIGHTS
  VALUES ('FB458', 'FB', 'ORY', 'SOF', '12:10', 100, '738');

INSERT INTO FLIGHTS
  VALUES ('TK1037', 'TK', 'ESB', 'SOF', '07:00', 90, '738');

INSERT INTO FLIGHTS
  VALUES ('TK1038', 'TK', 'SOF', 'ESB', '10:00', 90, 'AT5');

INSERT INTO CUSTOMERS (ID, FNAME, LNAME, EMAIL)
  VALUES (1, 'Petar', 'Milenov', 'petter@mail.com');

INSERT INTO CUSTOMERS (ID, FNAME, LNAME, EMAIL)
  VALUES (2, 'Dimitar', 'Petrov', 'petrov@mail.com');

INSERT INTO CUSTOMERS (ID, FNAME, LNAME, EMAIL)
  VALUES (3, 'Ivan', 'Ivanov', 'ivanov@mail.com');

INSERT INTO CUSTOMERS (ID, FNAME, LNAME, EMAIL)
  VALUES (4, 'Petar', 'Slavov', 'slavov@mail.com');

INSERT INTO CUSTOMERS (ID, FNAME, LNAME, EMAIL)
  VALUES (5, 'Bogdan', 'Bobov', 'bobov@mail.com');

INSERT INTO CUSTOMERS (ID, FNAME, LNAME, EMAIL)
  VALUES (6, 'Petar', 'Kirov', 'pr_kirov@mail.com');

INSERT INTO CUSTOMERS (ID, FNAME, LNAME, EMAIL)
  VALUES (7, 'Vladimir', 'Petrov', 'vladov@mail.com');

INSERT INTO AGENCIES
  VALUES ('Travel One', 'Bulgaria', 'Sofia', '0783482233');

INSERT INTO AGENCIES
  VALUES ('Travel Two', 'Bulgaria', 'Plovdiv', '02882234');

INSERT INTO AGENCIES
  VALUES ('Travel Tour', 'Bulgaria', 'Sofia', NULL);

INSERT INTO AGENCIES
  VALUES ('Aerotravel', 'Bulgaria', 'Varna', '02884233');

INSERT INTO AGENCIES
  VALUES ('Aerofly', 'Bulgaria', 'Sofia', '02882533');

INSERT INTO AGENCIES
  VALUES ('Fly Tour', 'Bulgaria', 'Sofia', '02881233');

INSERT INTO BOOKINGS
  VALUES ('YN298P', 'Travel One', 'FB', 'FB1363', 1, '2013-11-18',
    '2013-12-25', 300, 0);

INSERT INTO BOOKINGS
  VALUES ('YA298P', 'Travel Two', 'FB', 'TK1038', 2, '2013-12-18',
    '2013-12-25', 300, 1);

INSERT INTO BOOKINGS
  VALUES ('YB298P', 'Travel Tour', 'FB', 'TK1037', 3, '2014-01-18',
    '2014-02-25', 400, 0);

INSERT INTO BOOKINGS
  VALUES ('YC298P', 'Travel One', 'FB', 'TK1028', 4, '2014-11-11',
    '2014-11-25', 350, 0);

INSERT INTO BOOKINGS
  VALUES ('YD298P', 'Travel Tour', 'FB', 'TK1028', 1, '2013-11-03',
    '2013-12-20', 250, 1);

INSERT INTO BOOKINGS
  VALUES ('YE298P', 'Aerofly', 'FB', 'TK1027', 2, '2013-11-07',
    '2013-12-21', 150, 0);

INSERT INTO BOOKINGS
  VALUES ('YJ298P', 'Aerofly', 'FB', 'SU2061', 3, '2013-11-05',
    '2013-12-05', 500, 1);

INSERT INTO BOOKINGS
  VALUES ('YS298P', 'Aerofly', 'FB', 'SU2061', 4, '2014-10-04',
    '2014-11-15', 400, 0);

INSERT INTO BOOKINGS
  VALUES ('YK298P', 'Aerofly', 'FB', 'SU2060', 1, '2014-07-07',
    '2014-08-08', 350, 0);

INSERT INTO BOOKINGS
  VALUES ('YM298P', 'Aerotravel', 'FB', 'OA308', 2, '2014-06-09',
    '2014-07-10', 350, 1);

INSERT INTO BOOKINGS
  VALUES ('YN198P', 'Aerotravel', 'FB', 'OA307', 3, '2014-10-18',
    '2014-11-25', 450, 0);

INSERT INTO BOOKINGS
  VALUES ('YN498P', 'Aerofly', 'FB', 'LH1703', 1, '2014-01-05',
    '2014-02-25', 300, 1);

INSERT INTO BOOKINGS
  VALUES ('YN598P', 'Aerotravel', 'FB', 'FB1363', 5, '2014-03-03',
    '2014-06-25', 300, 0);

INSERT INTO BOOKINGS
  VALUES ('YN698P', 'Fly Tour', 'FB', 'FB852', 6, '2014-06-16',
    '2014-07-25', 330, 1);

INSERT INTO BOOKINGS
  VALUES ('YL298P', 'Fly Tour', 'FB', 'FB851', 7, '2014-04-28',
    '2014-05-25', 360, 0);

INSERT INTO BOOKINGS
  VALUES ('YZ298P', 'Fly Tour', 'FB', 'FB458', 1, '2014-03-15',
    '2014-06-25', 380, 1);

INSERT INTO BOOKINGS
  VALUES ('YN268P', 'Fly Tour', 'FB', 'FB457', 2, '2014-02-08',
    '2014-12-21', 390, 0);
