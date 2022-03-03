
CREATE TABLE EDITOR (
    ID INT PRIMARY KEY NOT NULL,
    FirstName VARCHAR(30) NOT NULL,
    SurName VARCHAR(30) NOT NULL
);

-- eğer tabloya yeni değer eklersem ilk önce bütün değerleri siliyorum daha sonra tabloyu ekliyorum. Truncuate ifadesini bu yüzden yazdım.
truncate EDITOR;
INSERT INTO EDITOR(ID, FirstName, SurName)
VALUES(2000, "John"     , "Clark"  ),
	  (2001, "Anna"     , "Sailor" ),
	  (2002, "Rayn"     , "Weather"),
      (2003, "Jennifer" , "Arnold" ),
      (2004, "Malcom"   , "Five"   ),
      (2005, "Bella"    , "Porche" ),
      (2006, "Crist"    , "Megane" ),
      (2007, "Ceaser"   , "Hugo"   );