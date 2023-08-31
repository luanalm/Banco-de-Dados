DROP TABLE IF EXISTS Categorias;
DROP TABLE IF EXISTS Filmes;


CREATE TABLE Categorias(
  id			INT				AUTO_INCREMENT,
  nome			VARCHAR(60)		NOT NULL			UNIQUE,
  pub_alvo		VARCHAR(60),
  
  PRIMARY KEY(id)
);


CREATE TABLE Filmes(
  titulo		VARCHAR(60)		NOT NULL		UNIQUE,
  sinopse		VARCHAR(300),
  estudio		VARCHAR(60),
  categoria		INT,
  
  FOREIGN KEY(categoria) REFERENCES Categorias(id)
);


INSERT INTO Categorias VALUES
	(DEFAULT, "Terror", "Jovens Adultos"),
    (DEFAULT, "Comédia Romântica", "Mulheres, entre 15 e 30 anos"),
    (DEFAULT, "Ficção Científica", "Adolescentes e Jovens Adultos"),
    (DEFAULT, "Animação", "Família");
    
INSERT INTO Filmes VALUES
	("Jogos Mortais", null, null, 1),
    ("Raya e o Último Dragão", null, "Disney", 4),
    ("Matrix", null, null, 3),
    ("Moana", null, "Disney", 4),
    ("Eu Não Sou Um Homem Fácil", null, null, 2),
    ("Carrie, a Estranha", null, "MGM", 1),
    ("Duna", null, "Warner Bros", 3),
    ("De Repente 30", null, "Columbia Pictures", 2);

SELECT * FROM Filmes;
