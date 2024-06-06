CREATE TABLE proprietario(
	idproprietario SERIAL PRIMARY KEY,
	nomeproprietario VARCHAR(30) NOT NULL,
	uf CHAR(2) NOT NULL,
	dtnascimento DATE NOT NULL
);

CREATE TABLE carro(
	placa INTEGER PRIMARY KEY UNIQUE,
	fabricante VARCHAR(30) NOT NULL,
	ano INTEGER NOT NULL CHECK (ano > 2000),
	cor varchar(30) NOT NULL,
	idproprietario INTEGER,
	FOREIGN KEY (idproprietario) REFERENCES proprietario(idproprietario) 
);

CREATE TABLE ocorrencia(
	idocorrencia SERIAL PRIMARY KEY,
	data DATE NOT NULL,
	placa INTEGER,
	idlocal INTEGER,
	idmulta INTEGER,
	FOREIGN KEY (placa) REFERENCES carro(placa),
	FOREIGN KEY (idlocal) REFERENCES local(idlocal),
	FOREIGN KEY (idmulta) REFERENCES multa(idmulta)
);

CREATE TABLE local(
	idlocal SERIAL PRIMARY KEY,
	rodovia CHAR(2) NOT NULL
);

CREATE TABLE multa(
	idmulta SERIAL PRIMARY KEY,
	descmulta VARCHAR(30) NOT NULL,
	artigo VARCHAR(30) NOT NULL,
	pontos INTEGER NOT NULL,
	valor REAL CHECK (valor > 0)
);
