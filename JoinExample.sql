
/*

CREATE TABLE BOOK(
	
	ID INT PRIMARY KEY NOT NULL,
    Title VARCHAR(30),
    AuthorID INT NOT NULL DEFAULT 0,
    EditorID INT NOT NULL DEFAULT 0
    
);

CREATE TABLE AUTHOR (
    ID INT PRIMARY KEY NOT NULL,
    FirstName VARCHAR(30) NOT NULL,
    SurName VARCHAR(30) NOT NULL,
    BookNumber INT DEFAULT 0 NOT NULL
);

CREATE TABLE EDITOR (
    ID INT PRIMARY KEY NOT NULL,
    FirstName VARCHAR(30) NOT NULL,
    SurName VARCHAR(30) NOT NULL
);


truncate BOOK;
INSERT INTO BOOK(ID, Title, AuthorID, EditorID)
VALUES(1, "The Origin of the Species", 100, 2000),
	  (2, "Harry Potter"			 , 101, 2001),
	  (3, "Lord of The Rings"		 , 102, 2002),
      (4, "Bird Box"				 , 103, 2003),
      (5, "The Pale Blue Dot"        , 104, 2004),
      (6, "Cosmos"                   , 104, 2005),
      (7, "Hobbit"                   , 102, 2006);
      
      
      
truncate AUTHOR;
INSERT INTO AUTHOR(ID, FirstName, SurName, BookNumber)
VALUES(100, "Charles"           , "Darwin"   , 6 ),
	  (101, "Joanne Kathleen"   , "Rowling"  , 8 ),
	  (102, "John Ronald Reuel" , "Tolkien"  , 10),
      (103, "Josh"              , "Malerman" , 5 ),
      (104, "Carl"              , "Sagan"    , 12),
      (105, "Charles"           , "Dickens"  , 7 ),
      (106, "Paul"              , "Scott"    , 4 );

truncate EDITOR;
INSERT INTO EDITOR(ID, FirstName, SurName)
VALUES(2000, "John"     , "Clark"  ),
	  (2001, "Anna"     , "Sailor" ),
	  (2002, "Rayn"     , "Weather"),
      (2003, "Jennifer" , "Arnold" ),
      (2004, "Malcom"   , "Five"   ),
      (2005, "Bella"    , "Porche" ),
      (2006, "Crist"    , "Megane" );
      
      
*/

      use firstdb;
     
     
-- anladığım kadarıyla SELECT sorgusu FOR gibi döngü yapıyor. Yani, her bir elemanı döngü halinde seçiyor. JOIN kullanmadığım zaman üstsel olarak sorgu dönüşü oldu
-- Şöyle ki, 7 numara dönmesi gerekirken 7*7 ve hatta 7*7*7 adet dönüş oldu. Ve WHERE ifadesi bu noktada istediğim gibi çalışmadı

  
 
 		SELECT BOOK.ID as BookID, BOOK.Title, AUTHOR.FirstName as AuthorName, AUTHOR.SurName as AuthorsSurname ,  EDITOR.FirstName as EditorName, EDITOR.SurName as EditorSurname
		FROM BOOK 
		LEFT JOIN AUTHOR ON BOOK.AuthorID = AUTHOR.ID
		LEFT JOIN EDITOR ON BOOK.EditorID = EDITOR.ID
		ORDER BY BOOK.ID ASC; 
 
		

     
		-- JOIN ile beraber iki tabloda eşleşen alanlar (ortak alanlar) önümüze getiriliyor
		-- LEFT JOIN ile solda bulunan tablodaki değerleri alıyoruz, sağda hangileri var ise gerekli değerler tabloya ekleniyor, eşleşmeyenler ise NULL olarak kalıyor.

        -- mySQL FULL JOIN desteklemiyor. Bunun yerine UNION ALL kullanılabilir. (LEFT JOIN) UNION ALL (RIGHT JOIN)
        -- FULL JOIN yapıldığı zaman sağdaki tablo ile soldaki tablodaki tüm veriler kesiştirilir.
        
        /*
        -- UNION 	 --> farklı değerleri birleştirir (only unique)
        -- UNION ALL --> bütün değerleri birleştirir  (including duplicates)
        

		SELECT   BOOK.ID, BOOK.Title, AUTHOR.FirstName, AUTHOR.SurName 
        FROM 	BOOK
        RIGHT 	JOIN AUTHOR ON BOOK.AuthorID = AUTHOR.ID
        UNION  
		SELECT   BOOK.ID, BOOK.Title, AUTHOR.FirstName, AUTHOR.SurName 
		FROM 	BOOK
        LEFT 	JOIN AUTHOR ON BOOK.AuthorID = AUTHOR.ID ;
        
        */
     
/*
	 SELECT BOOK.ID, BOOK.Title, EDITOR.FirstName, EDITOR.SurName
     FROM BOOK
     JOIN EDITOR ON BOOK.EditorID = EDITOR.ID;
*/

     
     
     
     
     
     
     
     
     