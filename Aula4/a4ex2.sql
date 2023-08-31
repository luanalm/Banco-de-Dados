DROP TABLE IF EXISTS Produto;
DROP TABLE IF EXISTS Marca;


CREATE TABLE Marca (
  id		INT 			AUTO_INCREMENT,
  nome		VARCHAR(20)		NOT NULL			unique,
  site		VARCHAR(60),
  tel		VARCHAR(14),
  
  PRIMARY KEY(id)
);


create table Produto (
  nome			VARCHAR(60)		NOT NULL,
  p_custo		DECIMAL(9,2),
  p_venda		DECIMAL(9,2),
  data_val		DATETIME,
  marca			INT,
  
  FOREIGN KEY(marca) REFERENCES Marca(id)
);


INSERT INTO Marca VALUES
	(DEFAULT, "Panini", null, null),
    (DEFAULT, "New Pop", null, null),
    (DEFAULT, "JBC", null, null);
    
INSERT INTO Produto VALUES
	("Jujutsu Kaisen - Volume 1", 25.0, 39.90, null, 1),
    ("Given - Volume 3", 15.0, 23.90, null, 2),
    ("Tokyo Revengers - Volume 4", 25.0, 39.90, null, 3),
    ("One Piece - Volume 98", 24.0, 39.90, null, 1),
    ("Tokyo Revengers - Volume 3", 25.0, 39.90, null, 3),
    ("Solo Leveling - Volume 5 (Full Color)", 55.0, 69.90, null, 2),
    ("Chainsaw Man - Volume 3", 25.0, 34.90, null, 1);
    
    
SELECT * FROM Produto;
