--1a

DROP TABLE IF EXISTS product;

CREATE TABLE product(
    id INT NOT NULL PRIMARY KEY IDENTITY(1,1),
    model CHAR(4),
    maker CHAR(1),
    type VARCHAR(7)
     );

DROP TABLE IF EXISTS printer;

CREATE TABLE printer(
    id INT NOT NULL PRIMARY KEY IDENTITY(1,1),
    code INT,
    model CHAR(4),
    price DECIMAL(5,2)
    );

--1b

INSERT INTO product(model,maker,type)
   VALUES('1524','A','laptop'),('1527','B','printer');

INSERT INTO printer(code,model,price)
   VALUES(7,'1527',152.33);



--1c

ALTER TABLE printer
ADD type VARCHAR(6) CHECK (type in('matrix','jet','laser'));

ALTER TABLE printer
ADD color CHAR(1) CHECK(color in('y','n'));

--1d

ALTER TABLE printer
DROP COLUMN price;

--1e

DROP TABLE product;

DROP TABLE printer;

--2a
DROP TABLE IF EXISTS users;

CREATE TABLE users(
    id INT NOT NULL PRIMARY KEY,
	email VARCHAR(32),
	pass VARCHAR(30),
	reg_date DATE
);

DROP TABLE IF EXISTS friends;

CREATE TABLE friends(
    friend1 INT,
	friend2 INT
);

DROP TABLE IF EXISTS walls;

CREATE TABLE walls(
    receiver_id INT,
	sender_id INT,
	message VARCHAR(300),
	date DATE
);

DROP TABLE IF EXISTS groups;

CREATE TABLE groups(
	id INT NOT NULL PRIMARY KEY IDENTITY(1,1),
	group_name VARCHAR(10),
	additional VARCHAR(100) DEFAULT ''
);

DROP TABLE IF EXISTS group_members;

CREATE TABLE group_members(
    group_id INT,
	customer_id INT 
);

--2b

INSERT INTO users VALUES(1,'h7865@gmail.com','sha1-7','2016-05-16');

INSERT INTO friends VALUES(1,2);

INSERT INTO walls VALUES(1,2,'Hello!','2019-05-22');

INSERT INTO groups VALUES(1,'panda');

INSERT INTO group_members VALUES(1,1);