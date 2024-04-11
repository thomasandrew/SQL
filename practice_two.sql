CREATE TABLE aluno (
	matricula INTEGER PRIMARY KEY,
	nomealuno VARCHAR(30) NOT NULL,
	sexo CHAR(1),
	dtnascimento DATE
);

DROP TABLE aluno;

CREATE TABLE curso (
	codcurso INTEGER PRIMARY KEY,
	nomecurso VARCHAR(30),
	ch INTEGER,
	preco REAL,
	coddepto INTEGER,
	FOREIGN KEY (coddepto) REFERENCES departamento(coddepto)
);

SELECT * FROM curso;

DROP TABLE curso;

CREATE TABLE departamento (
	coddepto INTEGER PRIMARY KEY,
	nomedepto VARCHAR(30) NOT NULL
);

CREATE TABLE matricula (
	dtmatricula DATE,
	matricula INTEGER,
	codcurso INTEGER,
	PRIMARY KEY (matricula, codcurso),
	FOREIGN KEY (matricula) REFERENCES aluno(matricula),
	FOREIGN KEY (codcurso) REFERENCES curso(codcurso)
);

SELECT * FROM matricula;
SELECT matricula, codcurso FROM matricula;
