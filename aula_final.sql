---EX21
SELECT estado, COUNT(*) AS qtd
  FROM cliente
 GROUP BY estado
  HAVING COUNT(*) > 50
 ORDER BY qtd DESC;
 
---EX22
SELECT ma.nomemarca, SUM(pr.preco * co.qtd) AS total
  FROM marca AS ma
 INNER JOIN produto AS pr
   ON ma.idmarca = pr.idmarca
 INNER JOIN compras AS co
   ON co.idproduto = pr.idproduto
 GROUP BY ma.nomemarca
  HAVING SUM(pr.preco * co.qtd) > 25000
 ORDER BY total DESC;
 
---EX23
SELECT cl.nomecliente, COUNT(*) AS qtdN
  FROM compras AS co
 INNER JOIN cliente AS cl
   ON cl.idcliente = co.idcliente
 GROUP BY cl.idcliente
HAVING COUNT(*) < 5
 ORDER BY qtdN DESC; 
 
INSERT INTO produto (idproduto,nomeproduto,idmarca,preco)
VALUES
(11, 'Milho em Lata', 3, 3.60),
(12, 'Ervilha em Lata', 2, 3.90),
(13, 'Sardinha em Lata', 1, 4.90);

SELECT * FROM produto;

---EX24
SELECT nomeproduto, preco
  FROM produto
 WHERE preco = (
	    SELECT MIN(preco) 
	      FROM produto
  );
  
---EX25
SELECT idcliente, nomecliente
  FROM cliente
 WHERE idcliente NOT IN (
	 SELECT DISTINCT cl.idcliente
     FROM cliente AS cl, compras AS co
     WHERE cl.idcliente = co.idcliente
 );
 
---EX26
SELECT nomeproduto
  FROM produto
 WHERE idproduto NOT IN 
 (
 SELECT idproduto
   FROM compras
  WHERE EXTRACT (YEAR FROM dtcompra) = 2021
 );
  
---EX27
SELECT nomeproduto, preco
  FROM produto
 WHERE preco > (
	            SELECT AVG(preco)
	              FROM produto
			   );

SELECT ROUND(AVG(preco), 2)
  FROM produto;
  
---EX28
CREATE VIEW vw_produtos AS
SELECT pr.nomeproduto, pr.preco, ma.nomemarca
  FROM produto AS pr, marca AS ma
 WHERE pr.idmarca = ma.idmarca
 ORDER BY pr.nomeproduto;
 
SELECT * FROM vw_produtos; 

---EX29
