--Script estoque
--Criando a tabela tipo

CREATE TABLE tipoproduto (
  codtipo INTEGER PRIMARY KEY,
  descricao VARCHAR (50)
);

--Criando a tabela produto

CREATE TABLE produto (
  codprod INTEGER PRIMARY KEY,
  descricao VARCHAR (50),
  preco REAL,
  codtiopo INTEGER,
  FOREIGN KEY (codtipo) REFERENCES tipoproduto(codtipo)
);

--POPULANDO A TABELA tipoproduto

INSERT INTO tipoproduto (codtipo, descricao)
VALUES (1, 'computador');

SELECT * FROM tipoproduto;
