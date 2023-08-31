DROP TABLE IF EXISTS Animais;
DROP TABLE IF EXISTS Especie;

CREATE TABLE Especie (
  id            INT					AUTO_INCREMENT,
  nome			VARCHAR(60)			NOT NULL			unique,
  descricao		VARCHAR(120),

  PRIMARY KEY(id)
 );
 

CREATE TABLE Animais (
  especie   	INT,
  nome			VARCHAR(30),
  data_nasc		DATETIME,
  peso			DECIMAL(10,2),

  FOREIGN KEY(especie) REFERENCES Especie(id)
 );
 
 INSERT INTO Especie VALUES (DEFAULT, "Cachorro", "É um mamífero carnívoro e quadrúpede da família dos canídeos.");
 INSERT INTO Especie VALUES (DEFAULT, "Gato", "É um mamífero canívoro e quadrúpede da família dos felídeos");
 INSERT INTO Especie VALUES (DEFAULT, "Coelho", "É um mamífero herbívoro e quadrúpede da família dos leporídeos");
 INSERT INTO Especie VALUES (DEFAULT, "Pássaro", "É um ovíparo bípede e alado da família dos passeriformes");
 
 INSERT into Animais values (1, "Shadow", '2020-09-12', 8.0);
 INSERT INTO Animais VALUES (2, "Floco de Neve", '2018-10-03', 4.0);
 INSERT INTO Animais VALUES (4, "Nina", '2012-06-06', 0.25);
 INSERT INTO Animais VALUES (3, "Roberwall", '2021-11-29', 2.0);
 INSERT into Animais values (2, "Pipoca de Milho", '2020-01-22', 3.2);
 INSERT INTO Animais VAlues (1, "Zeus", '2019-12-14', 42.3);

 SELECT * FROM Animais;
 