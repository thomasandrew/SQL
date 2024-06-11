---EX07
SELECT COUNT(*) AS total
  FROM compras AS co
 INNER JOIN loja AS lo
   ON co.idloja = lo.idloja
  WHERE lo.nomeloja = 'Vale Verde';  
  
---EX08
SELECT SUM(co.qtd) AS total
  FROM compras AS co
 INNER JOIN loja AS lo
   ON co.idloja = lo.idloja
 WHERE lo.uf = 'MG';
  
---EX09
SELECT SUM(co.qtd) AS total
  FROM compras AS co
 INNER JOIN produto AS pr
   ON co.idproduto = pr.idproduto
 WHERE pr.nomeproduto = 'Macarrão';
 
UPDATE produto SET nomeproduto = 'Macarrão' WHERE idproduto = 5;
 
SELECT nomeproduto FROM produto;

---EX10
SELECT COUNT(*) AS qtd, SUM(co.qtd * preco)
  FROM compras AS co
 INNER JOIN produto AS pr
   ON co.idproduto = pr.idproduto;
  
SELECT * FROM compras;  

---EX11
SELECT estado, COUNT(*) AS qtd
  FROM cliente
 GROUP BY estado
 ORDER BY qtd DESC;
 
---EX12
SELECT uf, COUNT(*) AS qtd
  FROM loja
 GROUP BY uf
 ORDER BY qtd DESC;
 
---EX13
SELECT ma.nomemarca, COUNT(*) AS qtd
  FROM marca AS ma
 INNER JOIN produto AS pr
   ON ma.idmarca = pr.idmarca
 GROUP BY ma.nomemarca 
 ORDER BY qtd DESC;
 
---EX14
SELECT SUM(co.qtd)
  FROM compras AS co
 INNER JOIN produto AS pr
   ON co.idproduto = pr.idproduto
 INNER JOIN marca AS ma
   ON ma.idmarca = pr.idmarca
 GROUP BY co.qtd
 ORDER BY qtd DESC;

SELECT * FROM compras;

SELECT * FROM marca;

---EX15
SELECT AVG(co.qtd)
  FROM compras AS co
 INNER JOIN produto AS pr
   ON co.idproduto = pr.idproduto
  GROUP BY qtd
  ORDER BY qtd DESC;
  
---EX16
SELECT lo.nomeloja, SUM(co.qtd * pr.preco) AS faturamento
  FROM loja AS lo
 INNER JOIN compras AS co
   ON lo.idloja = co.idloja
 INNER JOIN produto AS pr 
   ON co.idproduto = pr.idproduto
  GROUP BY lo.nomeloja
  ORDER BY faturamento DESC;
  
---EX17
SELECT cl.nomecliente, SUM(co.qtd) AS qtdcomprada ---perguntar
  FROM compras AS co
 INNER JOIN cliente AS cl
   ON co.idcliente = cl.idcliente
  GROUP BY cl.nomecliente
  ORDER BY qtdcomprada DESC;
  
---EX18
SELECT cidade, COUNT(*) AS qtd
  FROM cliente
 GROUP BY cidade 
 ORDER BY qtd DESC
 LIMIT 5;

---EX19
SELECT pr.nomeproduto, SUM(co.qtd) AS vendas
  FROM compras AS co
 INNER JOIN produto AS pr
   ON co.idproduto = pr.idproduto
 GROUP BY pr.nomeproduto
 ORDER BY vendas DESC;
 
---EX20
SELECT cl.nomecliente, SUM(co.qtd * pr.preco) AS gasto
  FROM compras AS co
 INNER JOIN cliente AS cl
   ON co.idcliente = cl.idcliente
 INNER JOIN produto AS pr
   ON co.idproduto = pr.idproduto
 GROUP BY cl.idcliente
 ORDER BY gasto DESC;
