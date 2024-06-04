SELECT MAX(preco) AS maiscaro
  FROM produto;
  
SELECT * FROM produto;

SELECT MIN(qtd)
  FROM compras;
  
SELECT * FROM compras;   

SELECT ROUND(AVG(qtd), 2)
  FROM compras;
  
SELECT COUNT(*) 
  FROM cliente 
 WHERE estado = 'Rio de Janeiro';  

SELECT ROUND(AVG(preco), 2)
  FROM produto;
  
--EX06  
SELECT * FROM produto
 WHERE idmarca = 1;
 
SELECT * FROM compras; 

SELECT pr.nomeproduto, lj.nomeloja, co.qtd
  FROM produto AS pr
 INNER JOIN compras AS co
   ON pr.idproduto = co.idproduto
 INNER JOIN loja AS lj
   ON co.idloja = lj.idloja;
 
SELECT * FROM loja;
/**/
SELECT * FROM marca;
