---SCRIPT ESTOQUE

---CRIANDO A TABELA TIPO
CREATE TABLE tipoproduto(
	codtipo INTEGER PRIMARY KEY,
	descricao VARCHAR(50)
);

---CRIANDO A TABELA PRODUTO
CREATE TABLE produto(
	codprod INTEGER PRIMARY KEY,
	descricao VARCHAR(50),
	preco REAL,	
	codtipo INTEGER,
	FOREIGN KEY (codtipo) REFERENCES tipoproduto(codtipo)
); 

INSERT INTO produto (codprod, descricao, preco, codtipo)
VALUES (1, 'PC DESKTOP MODELO A', 2500, 1);

INSERT INTO produto (codprod, descricao, preco, codtipo)
VALUES (2, 'PC Notebook ABC', 3500, 1);

INSERT INTO produto (codprod, descricao, preco, codtipo)
VALUES (3, 'Impressora Jato de tinta', 600, 2);

INSERT INTO produto (codprod, descricao, preco, codtipo)
VALUES (4, 'Impressora Laser', 800, 2);

---INSERT INTO produto (codprod, descricao, preco, codtipo)
---VALUES 
---(1, 'PC DESKTOP MODELO A', 2500, 1),
---(2, 'PC Notebook ABC', 3500, 1),
---(3, 'Impressora Jato de tinta', 600, 2),
---(4, 'Impressora Laser', 800, 2);

SELECT * FROM produto;

SELECT descricao, preco 
  FROM produto
 ORDER BY preco ASC;
 
SELECT descricao 
  FROM produto 
 ORDER BY preco ASC;
 
SELECT descricao, preco 
  FROM produto
 WHERE codtipo = 1; 
 
SELECT codprod, descricao, preco 
  FROM produto
 WHERE preco < 2500; 
 
SELECT COUNT(*)
  FROM produto;
  
SELECT SUM(preco) AS totproduto
  FROM produto;
  
---POPULANDO A TABELA tipoproduto

INSERT INTO tipoproduto (codtipo, descricao)
VALUES (1,'Computador');

INSERT INTO tipoproduto (codtipo, descricao)
VALUES (2, 'Impresora');

SELECT * FROM tipoproduto;
