---EX19
SELECT pr.nomeproduto, SUM(co.qtd) AS total
  FROM produto AS pr
 INNER JOIN compras AS co
   ON pr.idproduto = co.idproduto
 GROUP BY pr.nomeproduto
 ORDER BY pr.nomeproduto DESC;
 
---EX20
SELECT cl.nomecliente, SUM(co.qtd * pr.preco) AS gasto
  FROM cliente AS cl
 INNER JOIN compras AS co
   ON cl.idcliente = co.idcliente
 INNER JOIN produto AS pr
   ON pr.idproduto = co.idproduto
 GROUP BY cl.nomecliente
 ORDER BY gasto DESC
 LIMIT 5;
 
---EX21
SELECT estado, COUNT(*) as qtd
  FROM cliente
 GROUP BY estado 
 HAVING COUNT(*) > 50; 
 
---EX22
SELECT ma.nomemarca, SUM(co.qtd * pr.preco) AS faturamento
  FROM compras AS co
 INNER JOIN produto AS pr
   ON co.idproduto = pr.idproduto
 INNER JOIN marca AS ma
   ON ma.idmarca = pr.idmarca
 GROUP BY ma.nomemarca
 HAVING SUM(co.qtd * pr.preco) > 25000; 
 
---EX23
SELECT cl.nomecliente, count(*) AS total
  FROM cliente AS cl
 INNER JOIN compras AS co
   ON cl.idcliente = co.idcliente
 GROUP BY cl.nomecliente
 HAVING COUNT(*) < 5
 ORDER BY cl.nomecliente DESC;
 
INSERT INTO produto (idproduto,nomeproduto,idmarca,preco)
VALUES
(11, 'Milho em Lata', 3, 3.60),
(12, 'Ervilha em Lata', 2, 3.90),
(13, 'Sardinha em Lata', 1, 4.90); 

--- Trying to remember how CRUD works.

INSERT INTO produto (comida, cereja)
VALUES 
(),
();

DELETE FROM produtos WHERE CAFA = 5;

UPDATE cliente SET nome = 'Dinousauro' WHERE id = 5

SELECT * FROM cliente
