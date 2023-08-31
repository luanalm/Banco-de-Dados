CREATE TABLE Animal(
    id          INT,
    nome        VARCHAR(60),
    data_nasc   DATE,
    peso        DECIMAL(8,2),
    cor         VARCHAR(15)
)

INSERT INTO Animal(id, nome, data_nasc, peso, cor)
    VALUES(1, 'Costelinha', '2012-06-28', 12.8, 'Branco');

