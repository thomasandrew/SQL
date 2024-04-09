--EX1--

CREATE TABLE aluno (
	matricula INTEGER PRIMARY KEY,
	nomealuno VARCHAR(30) NOT NULL,
	sexo CHAR, /*or CHAR(1)*/
	dtNascimento DATE
);

--EX2--

CREATE TABLE departamento (
	codDepto INTEGER PRIMARY KEY,
	nomeDepto VARCHAR(30) NOT NULL
);

--EX3--

CREATE TABLE curso (
	codCurso INTEGER PRIMARY KEY,
	nomecurso VARCHAR(30) NOT NULL,
	ch INTEGER,
	preco REAL,
	codDepto INTEGER,
	FOREIGN KEY (codDepto) REFERENCES departamento(codDepto)
);

--EX4--

CREATE TABLE matricula (
	matricula INTEGER,
	codCurso INTEGER,
	dtmatricula DATE,
	PRIMARY KEY (matricula, codCurso),
	FOREIGN KEY (matricula) REFERENCES aluno(matricula),
	FOREIGN KEY (codCurso) REFERENCES curso(codCurso)
);
