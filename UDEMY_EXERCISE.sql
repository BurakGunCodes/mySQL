
-- var olan veritabanlarını gösterir
show databases ;

-- kullanılan veritabanını gösterir
SELECT database();

-- veri tabanı oluşturmak için kullanılır
CREATE DATABASE shirts_db;

-- istenilen veri tabanını seçmek için kullanılır
use shirts_db;

-- tabloyu silmek için kullanılır
DROP TABLE shirts;

-- tablo oluşturmak için kullanılır
CREATE TABLE shirts(
	shirts_id   INT  NOT NULL AUTO_INCREMENT,
    article		VARCHAR(255),
    color		VARCHAR(255),
    shirt_size 	VARCHAR(255),
    last_worn	INT,
    
	PRIMARY KEY(shirts_id)
);

-- tablo içindeki verileri silmek için kullanılır
TRUNCATE shirts;

-- tablo içine veri eklemek için kullanılır
INSERT INTO shirts( article, color, shirt_size, last_worn) 
VALUES
	('t-shirt'		, 'white'	, 'S'	, 10	),
	('t-shirt'		, 'green'	, 'S'	, 200	),
	('polo shirt'	, 'black'	, 'M'	, 10	),
	('tank top'		, 'blue'	, 'S'	, 50	),
	('t-shirt'		, 'pink'	, 'S'	, 0		),
	('polo shirt'	, 'red'		, 'M'	, 5		),
	('tank top'		, 'white'	, 'S'	, 200	),
	('tank top'		, 'blue'	, 'M'	, 15	);
	
-- tablo içine veri eklemek için kullanılır    
INSERT INTO shirts( article, color, shirt_size, last_worn) 
VALUES('polo shirt','purple','M', 50  );
    
-- veri tabanındaki bütün verileri göstermek için kullanılır    
SELECT * FROM shirts;
    
SELECT article, color FROM shirts;
 
SELECT * 
FROM shirts 
WHERE shirt_size='M';
 
SELECT article, color, shirt_size, last_worn 
FROM shirts 
WHERE shirt_size='M';



SELECT * FROM shirts WHERE article='polo shirt';
 
UPDATE shirts SET shirt_size='L' WHERE article='polo shirt';
 
SELECT * FROM shirts WHERE article='polo shirt';
 
SELECT * FROM shirts;
 
SELECT * FROM shirts WHERE last_worn=15;
 
UPDATE shirts SET last_worn=0 WHERE last_worn=15;
 
SELECT * FROM shirts WHERE last_worn=15;
 
SELECT * FROM shirts WHERE last_worn=0;
 
SELECT * FROM shirts WHERE color='white';
 
UPDATE shirts SET color='off white', shirt_size='XS' WHERE color='white';
 
SELECT * FROM shirts WHERE color='white';
 
SELECT * FROM shirts WHERE color='off white';
 
SELECT * FROM shirts;

SELECT * FROM shirts;
 
SELECT * FROM shirts WHERE last_worn=200;
 
DELETE FROM shirts WHERE last_worn=200;
 
SELECT * FROM shirts WHERE article='tank top';
 
DELETE FROM shirts WHERE article='tank top';
 
SELECT * FROM shirts WHERE article='tank top';
 
SELECT * FROM shirts;
 
DELETE FROM shirts;
 
SELECT * FROM shirts;
 
DROP TABLE shirts;
 
SHOW tables;
 
DESC shirts;


