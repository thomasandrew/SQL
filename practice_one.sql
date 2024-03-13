CREATE TABLE tipoproduto (
	codtipo INTEGER PRIMARY KEY,
	descricao VARCHAR (50)
);

INSERT INTO tipoproduto(codtipo, descricao)
VALUES (1, 'Computador');

INSERT INTO tipoproduto(codtipo, descricao)
VALUES 
(2, 'Som'), 
(3, 'HD');

SELECT * FROM tipoproduto;
DELETE FROM tipoproduto WHERE codtipo = 2;

CREATE TABLE produto (
	codprod INTEGER PRIMARY KEY,
	descricao VARCHAR (50),
	preco REAL,
	codtipo INTEGER,
	FOREIGN KEY (codtipo) REFERENCES tipoproduto (codtipo)
);

INSERT INTO produto (codprod, descricao, preco, codtipo)
VALUES 
(1, 'Impressora', 2.90, 1),
(2, 'Monitor', 2.80, 2),
(3, 'Teclado', 2.70, 3);

SELECT * FROM produto;

SELECT * FROM tipoproduto, produto;

UPDATE produto SET preco = 3.00 WHERE codprod = 3; 

DELETE FROM produto WHERE codtipo = 2;

SELECT * FROM produto;

SELECT * FROM tipoproduto;

DELETE FROM tipoproduto WHERE codtipo = 2;

SELECT * FROM tipoproduto;

UPDATE produto SET descricao = 'Mouse' WHERE codtipo = 3;

SELECT codtipo, descricao FROM produto; 

UPDATE tipoproduto SET descricao = 'USB' WHERE codtipo = 3; 

SELECT * FROM tipoproduto; 

SELECT * FROM tipoproduto WHERE descricao = 'USB';
