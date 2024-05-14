CREATE TABLE pessoa (
	idpessoa SERIAL PRIMARY KEY,
	nome VARCHAR(20)
);

INSERT INTO pessoa (nome) VALUES ('Ana'), ('Bruna'), ('Carla');

CREATE TABLE carro (
	idcarro SERIAL PRIMARY KEY,
	modelo VARCHAR(20),
	idpessoa INT,
	FOREIGN KEY (idpessoa) REFERENCES pessoa(idpessoa)
	ON DELETE SET NULL
);

INSERT INTO carro (modelo, idpessoa) VALUES 
('Uno', 3), ('Palio', 1), ('Gol', 2), ('Opala', 3), ('Fusca', 1);

DELETE FROM pessoa WHERE idpessoa = 1;

SELECT * FROM pessoa;

SELECT * FROM carro;

---TESTE CASCADE

CREATE TABLE pessoa2 (
	idpessoa SERIAL PRIMARY KEY,
	nome VARCHAR(20)
);

INSERT INTO pessoa2 (nome) VALUES ('Ana'), ('Bruna'), ('Carla');

DROP TABLE carro2;
DROP TABLE pessoa2;

CREATE TABLE carro2 (
	idcarro SERIAL PRIMARY KEY,
	modelo VARCHAR(20),
	idpessoa INT,
	FOREIGN KEY (idpessoa) REFERENCES pessoa2(idpessoa)
	ON DELETE CASCADE
);

INSERT INTO carro2 (modelo, idpessoa) VALUES 
('Uno', 3), ('Palio', 1), ('Gol', 2), ('Opala', 3), ('Fusca', 1);

DELETE FROM pessoa2 WHERE idpessoa = 2;

SELECT * FROM pessoa2;	

SELECT * FROM carro2;
