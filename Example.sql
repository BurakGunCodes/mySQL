
-- veri tabanı oluşturuldu
 create database firstDB;

-- default veri tabanı olarak seçildi
use firstDB;

-- Table oluşturuldu
-- Primary Key ile tabloya özgü parametre atandı. 
-- TAblo içinde hiç bir clientID değeri aynı olamaz, farklı olmak zorunda
CREATE TABLE firstTable (
    clientID   INT primary key,
    clientName VARCHAR(30),
    clientAddr VARCHAR(30),
    clientFact VARCHAR(30)
);

-- Table silmek için kullanılır
DROP TABLE firstTable;

-- TAblodan veri çekmek için kullanılır
select * from firstTable;

-- oluşturulan tabloyu görmek için
describe firstTable;

-- tabloya veri eklemek için 
INSERT into firstTable 
values (8,'burak','sakaya','TRS') ;

-- tabloya veri eklemek için 
INSERT into firstTable 
values (7,'bugra','sakaya','TRS') ;

-- tabloya veri eklemek için 
INSERT into firstTable 
values (12,'burçak','sakaya','TRS') ;

-- tabloya veri eklemek için 
INSERT into firstTable 
values (18,'burçin','sakaya','TRS') ;

INSERT into firstTable 
values (5,'melih','bursa','ASL') ;

INSERT into firstTable 
values (4,'sezer','bolu','MKE') ;

INSERT into firstTable 
values (34,'seburka','bolu','MKE') ;

INSERT into firstTable 
values (84,'deburla','bolu','MKE') ;

-- TAblodan veri çekmek için kullanılır
select * from firstTable where clientID = 5 ;

-- TAblodan veri çekmek için kullanılır
select * from firstTable where clientName = 'burak' ;

-- TAblodan veri çekmek için kullanılır. 
SELECT 
    *
FROM
    firstTable
WHERE
    clientID < 8 OR clientName = 'burak';
    
---------------------------------------------
-- tabloda alan güncellemek için;
UPDATE firstTable 
SET 
    clientName = 'murat'
WHERE
    clientID = 5;
    
---------------------------------------------

-- TAblodan belirli sütünları seçmek için ;
SELECT 
    clientName, clientID
FROM
    firstTAble
ORDER BY clientID; -- clientID ye göre tabloyu sıralar

---------------------------------------------

INSERT into firstTable 
VALUES ( 55, 'deniz', NULL, 'TURASAS' ) ;



UPDATE firstTable 
SET 
    clientName = 'birol', clientAddr = 'van'
WHERE
    clientID = 2;

-- % yerinde ifade olacak diye düşünebiliriz
-- '%bur'  -->  bur ile BİTEN    ifadeler için sorgu yapar
-- 'bur%'  -->  bur ile BAŞLAYAN ifadeler için sorgu yapar
-- '%bur%' -->  bur     İÇEREN   ifadeler için sorgu yapar
SELECT 
    *
FROM
    firstTable
WHERE
    clientName LIKE 'bur%';

-- '%bur%' --> aranan ifade içinde 'bur' arar
SELECT 
    *
FROM
    firstTable
WHERE
    clientName LIKE '%bur%';

 SELECT
	 clientAddr, count(*)
FROM
	firstTable 
GROUP BY
clientAddr ;


-- update sırasında sorun çıktığı için safe modu kapattık
-- SET SQL_SAFE_UPDATES = 1; kapatmak için
SET SQL_SAFE_UPDATES = 0;

-- tablo içerisinde 'sakaya' ile yanlış yazdığım verileri 'sakarya' olarak değiştirdim
UPDATE firstTable 
SET 
    clientAddr = 'sakarya'
WHERE
    clientAddr = 'sakaya' ;

UPDATE firstTable 
SET 
    clientAddr = 'edirne'
WHERE
    clientID = 12;

UPDATE firstTable 
SET 
    clientFact = 'TURASAS'
WHERE
    clientFact = 'TRS';

-- count ile veri sayısı sayılır
-- as ile ismi değiştirilebilir
SELECT 
    clientAddr, clientFact, COUNT(*) AS countName
FROM
    firstTable
WHERE
    clientAddr IS NOT NULL
        AND clientFact IS NOT NULL
GROUP BY clientAddr , clientFact;

-- NULL olan adres bilgisini güncelle
UPDATE firstTable 
SET 
    clientAddr = 'sivas'
WHERE
    clientID = 55;

-- tabloya yeni sütün eklemek için, 
-- default koymasaydım NULL değer atayacaktı
alter table firstTable
add clientAge int(3) default 10 ;

-- Tablodan sütün silmek için,
alter table firstTable
drop clientAge;



UPDATE firstTable 
SET 
    clientAddr = 'şırnak'
WHERE
    clientID = 45 ;

-- limit ile kaç adet veri geri dönüşü olacağı belirlenir
SELECT 
    clientName
FROM
    firstTAble
LIMIT 3;

-- seçilen sütündaki en küçük/büyük değeri bulur min(), max()
select min(clientID)
from firstTable;


-- IN, OR fonksiyonu için alternatif olarak kullanılabilir
-- avg, sum, count
SELECT 
	sum(clientID)
FROM
    firstTable
WHERE
 -- clientAddr IN('sakarya', 'şırnak');
	clientAddr = 'şırnak' OR clientAddr = 'sakarya'; 

select * from firstTable;


show databases ;

