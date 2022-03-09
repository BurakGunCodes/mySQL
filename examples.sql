

-- create database StockManagement ;

CREATE TABLE Customers (
    ID 		INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
    cName 	VARCHAR(10),
    Age 	INT,
    Salary 	INT
);

INSERT INTO Customers 
VALUES(1, 'Burak', 25, 15000);

INSERT INTO Customers 
VALUES(2, 'Şakir', 18, 8000);

INSERT INTO Customers 
VALUES(3, 'Kuzey', 55, 13000);

INSERT INTO Customers 
VALUES(4, 'Metin', 12, 0);

INSERT INTO Customers 
VALUES(5, 'Kemal', 35, 6500);

SELECT * FROM Customers;

-- TAbloyu silmek için kullanılır
DROP TABLE Customers;

-- TAblo içerisindeki verileri silmek için kullanılır
TRUNCATE TABLE Customers;


CREATE TABLE Orders (
    ID 			INT,
    cDate       INT,
    Amount 		INT,
    cID         INT, -- customerID
    FOREIGN KEY(cID) REFERENCES Customers(ID)
);

DROP TABLE Orders;

SELECT * FROM Orders;

INSERT INTO Orders
VALUES(223, 2019, 25, 1);

INSERT INTO Orders
VALUES(224, 2019, 45, 2);

INSERT INTO Orders
VALUES(225, 2019, 12, 4);

INSERT INTO Orders
VALUES(226, 2019, 1, 2);

INSERT INTO Orders
VALUES(227, 2519, 67, 45);




CREATE table people(
	firstName varchar(50) NOT NULL DEFAULT 'undefined',
    surName   varchar(50) NOT NULL DEFAULT 'undefined',
	age		  INT NOT NULL DEFAULT 0 
);

DROP table people;

Insert into people 
values('burak', 'gün', 25), ('ahmet', 'can', 45);

--
insert into people(firstName, surname, age) values('mehmet', 'kul', 77);

-- tablo içerisindeki verileri sıralaması değişik şekilde de yerleştirebiliriz. age,surname,firstname
insert into people(age, surname, firstname) values(13,'vadi','kerem');

insert into people() values();

select * from  people ;

desc people;
