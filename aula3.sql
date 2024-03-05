---BD DETRAN
---CRIANDO PESSOA

CREATE TABLE pessoa (
	codpessoa INTEGER PRIMARY KEY,
	nome VARCHAR(50) NOT NULL,
	sexo CHAR(1),
	dtnasc DATE,
	cidade VARCHAR(50)
);

---CRIANDO CARRO
CREATE TABLE carro (
	codcarro INTEGER PRIMARY KEY,
	modelo VARCHAR(50),
	marca VARCHAR(50),
	ano INTEGER,
	codpessoa INTEGER,
	FOREIGN KEY (codpessoa) REFERENCES pessoa(codpessoa)
);

INSERT INTO pessoa(codpessoa, nome, sexo, dtnasc, cidade)
VALUES
(1, 'Ana','F','1970-01-01','Niteroi'),
(2, 'Bruna','F','1970-01-01','Rio de aneiro'),
(3, 'Carla','F','1970-01-01','Niteroi'),
(4, 'Dario','M','1972-01-01','Niteroi'),
(5, 'Joao','M','1973-01-01','Rio de Janeiro'),
(6, 'Mauro', 'M', '1970-01-01','Niteroi'),
---(NULL,'Paulo', 'M', '1970-01-01', 'Niteroi'),
(7,'Diego', NULL, NULL, NULL);

---POPULANDO TABELA CARRO
INSERT INTO carro (codcarro, modelo, marca, ano, codpessoa)
VALUES
(1,'kA','FORD','2019',3),
(2,'PALIO','Fiat','2015',2),
(3, 'ONIX','Chevrolet',2022,1);

SELECT * FROM carro;

INSERT INTO pessoa(codpessoa, nome, sexo, dtnasc, cidade)
VALUES (7,'Diego', NULL, NULL, NULL);

SELECT * FROM pessoa;

INSERT INTO carro (codcarro, modelo, marca, ano, codpessoa)
VALUES (5, 'KA','FORD',2020, 3);

---INSERT INTO carro (codcarro, modelo, marca, ano, codpessoa)
---VALUES (4,'Fusca', 'volkswagen',1979, 9);

---INSERT INTO carro (codcarro, modelo, marca, ano, codpessoa)
---VALUES (6, 'GOL','Volkswagen','Dois Mil', 3);
