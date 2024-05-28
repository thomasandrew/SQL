SELECT * FROM produto;

SELECT * FROM marca;

--EX21
SELECT t1.nomeproduto, t2.nomemarca
  FROM produto AS t1, marca AS t2
 WHERE t1.idmarca = t2.idmarca;
 
--EX22 
SELECT t1.nomecliente, t2.nomeproduto 
  FROM cliente AS t1, produto AS t2, compras AS t3 
 WHERE t1.idcliente = t3.idcliente
   AND t3.idproduto = t2.idproduto;
   
--EX23   
SELECT t1.nomecliente, t1.estado, t2.nomeloja, t2.uf
  FROM cliente AS t1, loja AS t2, compras AS t3
 WHERE t1.idcliente = t3.idcliente
   AND t3.idloja = t2.idloja
   AND t3.qtd > 40;
   
--EX24
SELECT pr.nomeproduto, pr.preco, ma.nomemarca
  FROM produto AS pr 
 INNER JOIN marca AS ma
   on pr.idmarca = ma.idmarca;
 
--EX25
SELECT ma.nomemarca, co.dtcompra, co.qtd
  FROM produto AS pr
 INNER JOIN marca AS ma
   on pr.idmarca = ma.idmarca
 INNER JOIN compras AS co
   on pr.idproduto = co.idproduto;
   
--EX26
SELECT cl.nomecliente, po.nomeproduto, co.qtd
  FROM cliente AS cl
 INNER JOIN compras AS co
   on cl.idcliente = co.idcliente
 INNER JOIN produto AS po
   on co.idproduto = co.idproduto;
   
INSERT INTO cliente
(idcliente,nomecliente,genero,estadocivil,dtnascimento,cidade,estado)
VALUES
(501, 'Alba', 'F', 'V', '1982/10/25', 'Duque de Caxias','Rio de Janeiro'),
(502, 'Solimar', 'F', 'V', '1972/11/25', 'Niterói','Rio de Janeiro'),
(503, 'Pablo', 'M', 'C', '1999/03/01', 'Nova Iguaçu','Rio de Janeiro'),
(504, 'Solange', 'F', 'S', '1979/06/05', 'Salvador', 'Bahia'),
(505, 'Mário', 'M', 'S', '1985/07/22', 'Bragança Paulista', 'São Paulo');

--EX27
SELECT cl.nomecliente, co.idcompra
  FROM cliente AS cl
 INNER JOIN compras AS co
   ON cl.idcliente = co.idcliente;

--EX28
INSERT INTO marca (idmarca,nomemarca)
VALUES
(6,'Delícia de Prato'),
(7,'Pajé');

SELECT ma.nomemarca, pr.nomeproduto
  FROM produto AS pr
 RIGHT JOIN marca AS ma
   ON ma.idmarca = pr.idmarca;
   
--EX29   
SELECT cl.nomecliente, pr.nomeproduto
  FROM cliente AS cl
 FULL OUTER JOIN compras AS co
   ON cl.idcliente = co.idcliente
 FULL OUTER JOIN PRODUTO AS pr
   ON co.idproduto = pr.idproduto;
   
--EX30
SELECT pr.nomeproduto, ma.nomemarca
  FROM 	produto AS pr
 NATURAL JOIN marca AS ma; 
   
