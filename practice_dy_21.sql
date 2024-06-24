SELECT * FROM produto;

---EX24
SELECT nomeproduto
  FROM produto
 WHERE preco = ( 
		SELECT MIN(preco)
		  FROM produto
   );

---EX25
SELECT nomecliente
  FROM cliente
 WHERE idcliente NOT IN (
	 SELECT DISTINCT cl.idcliente
	   FROM cliente AS cl
	  INNER JOIN compras AS co
	    ON cl.idcliente = co.idcliente
 );
 
---EX26
SELECT nomeproduto
  FROM produto
 WHERE idproduto NOT IN (
	 SELECT idproduto
	   FROM compras
	  WHERE EXTRACT (YEAR FROM dtcompra) = 2021
 );
