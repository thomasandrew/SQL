CREATE TABLE funcionario (
matricula int PRIMARY KEY,
nomefunc varchar(50),
genero varchar(10),
estcivil char(1),
dtnascimento date,
dtadmissao date,
iddepto int,
idcargo int
);

CREATE TABLE departamento (
iddepto int PRIMARY KEY,
nomedepto varchar(50)
);

CREATE TABLE cargo (
idcargo int PRIMARY KEY,
nomecargo varchar(50),
salario float
);

ALTER TABLE funcionario ADD FOREIGN KEY(iddepto) REFERENCES departamento (iddepto);
ALTER TABLE funcionario ADD FOREIGN KEY(idcargo) REFERENCES cargo (idcargo);
