---EX01
SELECT MAX(PRECO) AS expensive
  FROM produto;
  
---EX02
SELECT MIN(qtd) AS qtdM
  FROM compras;
  
---EX03
SELECT ROUND(AVG(qtd), 2) AS qtdA
  FROM compras;
  
---EX04
SELECT COUNT(*)
  FROM cliente
 WHERE estado = 'Rio de Janeiro';
 
---EX05
SELECT ROUND(AVG(preco), 2)
  FROM produto;

---EX06
SELECT ma.nomemarca, COUNT(*)
  FROM produto AS pr
 INNER JOIN marca AS ma
   ON pr.idmarca = ma.idmarca
 INNER JOIN compras AS co
   ON co.idproduto = pr.idproduto
  WHERE ma.nomemarca = 'Bom Prato'  
 GROUP BY ma.nomemarca  
 ORDER BY COUNT(*) DESC;
 
---EX07
SELECT lj.nomeloja, COUNT(*) AS total
  FROM produto AS pr
 INNER JOIN compras AS co
   ON pr.idproduto = co.idproduto
 INNER JOIN loja AS lj
   ON co.idloja = lj.idloja
  WHERE lj.nomeloja = 'Vale Verde'
 GROUP BY lj.nomeloja;
 
---EX08
SELECT lj.uf, SUM(co.qtd)
  FROM loja AS lj
 INNER JOIN compras AS co
   ON lj.idloja = co.idloja
 WHERE lj.uf = 'MG'
 GROUP BY lj.uf; 
