
CREATE TABLE AUTHOR (
    ID INT PRIMARY KEY NOT NULL,
    FirstName VARCHAR(30) NOT NULL,
    SurName VARCHAR(30) NOT NULL,
    BookNumber INT DEFAULT 0 NOT NULL
);


truncate AUTHOR;
INSERT INTO AUTHOR(ID, FirstName, SurName, BookNumber)
VALUES(100, "Charles"           , "Darwin"   , 6 ),
	  (101, "Joanne Kathleen"   , "Rowling"  , 8 ),
	  (102, "John Ronald Reuel" , "Tolkien"  , 10),
      (103, "Josh"              , "Malerman" , 5 ),
      (104, "Carl"              , "Sagan"    , 12),
      (105, "Charles"           , "Dickens"  , 7 ),
      (106, "Paul"              , "Scott"    , 2 );