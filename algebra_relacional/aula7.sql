/*1) Recupere a lista de nomes vendedores e clientes que moram em Duque de Caxias*/
Temp1 ← π nome (σ cidade = 'Duque de Caxias' (Cliente));
Temp2 ← π nome (σ cidade = 'Duque de Caxias' (vendedores));
Resultado ← Temp1 ∪ Temp2;

/*2) Recupere uma lista com nome e cidade dos Clientes e Vendedores que são solteiros*/
Temp1 ← π nome, cidade (σ estcivil = 'S' (clientes));
Temp2 ← π nome, cidade (σ estcivil = 'S' (vendedor));
Resultado ← Temp1 ∪ Temp2;

/*3) Recupere a lista de cidades que possuem clientes mas não possuem vendedores*/
Temp1 ← π cidade (clientes)
Temp2 ← π cidade (vendedor)
Resultado ← Temp1 - Temp2

/*4) Recupere a lista de vendedores que ainda não realizaram nenhuma venda*/
Temp1 ← π codvendedor (vendedor)
Temp2 ← π codvendedor (venda)
Resultado ← vendedor - venda
