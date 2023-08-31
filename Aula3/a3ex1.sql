DROP TABLE IF EXISTS Produtos;

CREATE TABLE Produtos(
  id              INT             PRIMARY KEY      auto_increment,
  nome            VARCHAR(60),
  preco_custo     DECIMAL(9,2),
  preco_venda     DECIMAL(9,2),
  data_cadastro   DATETIME        default NOW(),
  lucro           DECIMAL(9,2)    AS (preco_venda - preco_custo),
  data_venc       INT             AS (EXTRACT(MONTH FROM data_cadastro) + 1)
);

INSERT INTO Produtos (nome, preco_custo, preco_venda) VALUE
  ("Lápis"       , 10.0, 15.5),
  ("Oboé"        , 12.0, 17.0),
  ("Xinforinfola", 14.0, 16.0),
  ("Pé de Cabra" , 11.0, 18.2);

SELECT * FROM Produtos;
