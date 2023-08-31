CREATE TABLE Aluno(
    ra          INT,
    nome        VARCHAR(60),
    data_nasc   DATE,
    endereco    VARCHAR(60),
    email       VARCHAR(30)
);

INSERT INTO Aluno VALUES (1, 'José Ferreira Lobato', '2001-12-12', 'Av. Lugar Nenhum, 1. São Paulo, São Paulo', 'joséflobato@email.com');

INSERT INTO Aluno (ra, nome, data_nasc, email) VALUES (2, 'Larissa Braga Monteiro', '2004-03-27', 'laribmonteiro@email.com');

INSERT INTO Aluno (ra, nome, email)
    VALUES (3, 'Maurício Lopes Moreira', 'mlopesmoreira@email.com');

INSERT INTO Aluno VALUES (4, 'Remus Lupin', '1997-02-28', 'Londres,Inglaterra', 'moonylupin@email.com');

INSERT INTO Aluno VALUES (5, 'Regulus Arcturus Black', '1999-07-28', 'Londres, Inglaterra', 'regulusastar@email.com');

SELECT * FROM Aluno;
