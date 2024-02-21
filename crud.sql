CREATE TABLE tipoproduto (
  codtipo INTEGER PRIMARY KEY,
  descricao varchar (50)
);

INSERT INTO tipoproduto (codtipo, descricao) 
VALUES (1, 'computador');

INSERT INTO tipoproduto (codtipo, descricao)
VALUES (2, 'Monitor');

DELETE FROM tipoproduto WHERE codtipo = 2;

UPDATE tipoproduto SET codtipo = 2, descricao = 'Monitor' 
WHERE codtipo = 1;

SELECT * FROM tipoproduto;
