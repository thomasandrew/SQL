CREATE TABLE proprietario(
	idProprietario INTEGER PRIMARY KEY,
	nomeProprietario VARCHAR(30) NOT NULL,
	uf CHAR(2) NOT NULL,
	dtNascimento DATE NOT NULL,
	UNIQUE (nomeProprietario)
);

/*DROP TABLE proprietario;*/

INSERT INTO proprietario (idProprietario, nomeProprietario, uf, dtNascimento)
VALUES
(1, 'Thomas', 'MA', '1996-08-27'),
(2, 'Ricardo', 'RJ', '1969-01-28'),
(3, 'Fernanda', 'BH', '1972-05-03'),
(4, 'Brooke', 'MA', '1998-08-27');

SELECT * FROM proprietario;

UPDATE proprietario SET nomeProprietario = 'Benjamin', uf = 'RJ', dtNascimento = '2017-11-09' 
WHERE idProprietario = 1;

CREATE TABLE carro(
	placa VARCHAR(30) UNIQUE NOT NULL,
	fabricante VARCHAR(30) NOT NULL,
	ano INTEGER NOT NULL CHECK (ano >= 2000),
	cor VARCHAR(30) NOT NULL,
	idProprietario INTEGER NOT NULL,
	FOREIGN KEY (idProprietario) REFERENCES proprietario(idProprietario)
); 

INSERT INTO carro (placa, fabricante, ano, cor, idProprietario)
VALUES
('h094ml', 'Toyota Motor Corp', 2001, 'Vermelho', 1),
('fjkhlo', 'Honda Motor Co', 2000, 'Azul', 2),
('kg704l', 'Grupo BMW', 2020, 'Laranja', 3),
('JR4567', 'Ford Motor Co', 2022, 'Amarelo', 4);

--DROP TABLE carro;

CREATE TABLE ocorrencia(
	idOcorrencia INTEGER PRIMARY KEY,
	data DATE NOT NULL,
	idMulta INTEGER NOT NULL,
	idLocal INTEGER NOT NULL,
	FOREIGN KEY (idMulta) REFERENCES multa(idMulta),
	FOREIGN KEY (idLocal) REFERENCES local(idLocal)
);

CREATE TABLE multa(
	idMulta INTEGER PRIMARY KEY,
	descMulta VARCHAR(30) NOT NULL,
	artigo VARCHAR(30) NOT NULL,
	pontos INTEGER NOT NULL,
	valor REAL NOT NULL CHECK (valor >= 0)
);

CREATE TABLE local(
	idLocal INTEGER PRIMARY KEY,
	rodovia CHAR NOT NULL
);

SELECT * FROM proprietario; 
SELECT * FROM carro;
SELECT * FROM ocorrencia;
SELECT * FROM multa;
SELECT * FROM local;
