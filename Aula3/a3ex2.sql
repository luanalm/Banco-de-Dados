DROP TABLE Carros;

CREATE TABLE Carros (
  id            INT            PRIMARY KEY      AUTO_INCREMENT,
  modelo        VARCHAR(60),
  alimentacao   VARCHAR(20)    default "Combustão",
  qtd_portas    INT            DEFAULT 4,
  consumo       DECIMAL(9,2),
  volume_tq     DECIMAL(9,2),
  autonomia     DECIMAL(9,2)   AS (consumo * volume_tq)
);

INSERT INTO Carros (modelo) VALUES ("Delorian");
INSERT INTO Carros (modelo) VALUES ("Cadillac Ecto");
INSERT INTO Carros (id, modelo, alimentacao, qtd_portas) VALUES (0, "iCar", "Elétrico", 2);
INSERT INTO Carros (id, modelo, alimentacao, qtd_portas) VALUES (123, "Fusca", default, 2);
INSERT INTO Carros (modelo, qtd_portas) VALUES ("Variant", 2);
INSERT INTO Carros (modelo, volume_tq, consumo) VALUES ("Corolla", 46.5, 11.6);

SELECT * FROM Carros;
