
CREATE TABLE BOOK(
	
	ID INT PRIMARY KEY NOT NULL,
    Title VARCHAR(30),
    AuthorID INT NOT NULL DEFAULT 0,
    EditorID INT NOT NULL DEFAULT 0
    
);

Truncate BOOK;
INSERT INTO BOOK(ID, Title, AuthorID, EditorID)
VALUES(1, "The Origin of the Species", 100, 2000),
	  (2, "Harry Potter"			 , 101, 2001),
	  (3, "Lord of The Rings"		 , 102, 2002),
      (4, "Bird Box"				 , 110, 2003),
      (5, "The Pale Blue Dot"        , 104, 2004),
      (6, "Cosmos"                   , 104, 2005),
      (7, "Hobbit"                   , 102, 2006),
      (8, "Ben Kirke"                , 103, 2007),
      (9, "Outliers"                 , 108, 2008);