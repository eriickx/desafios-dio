-- queries de consulta
-- selecionando o primeiro nome dos clientes com SELECT simples
select P_NOME FROM CLIENTE;

-- selecionando apenas clientes pessoa física utilizando WHERE
select P_NOME FROM CLIENTE WHERE TIPO_PESSOA = 'Pessoa Física';

-- selecionando todos os pedidos e agrupando pelo status com GROUP BY
select ESTADO_ID, COUNT(*) as QUANTIDADE_PEDIDOS from PEDIDO GROUP BY ESTADO_ID;

-- ordenando os pedidos por valor com ORDER BY
select (VALOR_PEDIDO + VALOR_FRETE) AS VALOR_TOTAL from PEDIDO order by VALOR_TOTAL desc;

-- agrupando os pedidos por cliente e selecionando apenas os concluídos e com quantidade de pedidos maior que 2 utilizando HAVING
select PEDIDO.CLIENTE_ID, COUNT(*) as QUANTIDADE_PEDIDOS from PEDIDO where PEDIDO.ESTADO_ID = 5 group by PEDIDO.CLIENTE_ID having COUNT(*) > 2;

-- selecionando os pedidos, agrupando por cliente e fazendo uma junção (JOIN) com a tabela de clientes para obter o nome do cliente e a quantidade de pedidos feitos
select CLIENTE.P_NOME, COUNT(PEDIDO.CLIENTE_ID) as QUANTIDADE_PEDIDOS from PEDIDO join CLIENTE on PEDIDO.CLIENTE_ID = CLIENTE.ID group by CLIENTE.P_NOME;

-- Possíveis perguntas e as respostas utlizando queries
-- Quantos clientes são PJ?
select COUNT(*) FROM CLIENTE where TIPO_PESSOA = 'Pessoa Jurídica';

-- Quais pedido tiveram mais de uma forma de pagamento?
select PEDIDO_ID from PEDIDO_FORMA_PAGAMENTO group by PEDIDO_ID having COUNT(distinct FORMA_PAGAMENTO_ID) > 1;

-- Quais são as 3 formas de pagamento mais utilizadas e quantos pedidos foram feitos com cada?
select FORMA_PAGAMENTO.NOME, COUNT(PEDIDO.ID) as QUANTIDADE_PEDIDOS
from PEDIDO_FORMA_PAGAMENTO join PEDIDO on PEDIDO.ID = PEDIDO_FORMA_PAGAMENTO.PEDIDO_ID
join FORMA_PAGAMENTO on FORMA_PAGAMENTO.ID = PEDIDO_FORMA_PAGAMENTO.FORMA_PAGAMENTO_ID
group by FORMA_PAGAMENTO.NOME
order by QUANTIDADE_PEDIDOS DESC
limit 3;

-- Quais categorias de produto são as mais vendidas? Considerando apenas compras feitas por Pessoas Físicas e pedidos concluídos.
select CATEGORIA.NOME as CATEGORIA, COUNT(PEDIDO.ID) as TOTAL_VENDAS from CLIENTE
join PEDIDO on CLIENTE.ID = PEDIDO.CLIENTE_ID
join ESTADO on PEDIDO.ESTADO_ID = ESTADO.ID
join PEDIDO_PRODUTO on PEDIDO.ID = PEDIDO_PRODUTO.PEDIDO_ID
join PRODUTO on PEDIDO_PRODUTO.PRODUTO_ID = PRODUTO.ID
join CATEGORIA on PRODUTO.CATEGORIA_ID = CATEGORIA.ID
where CLIENTE.TIPO_PESSOA = 'Pessoa Física' and ESTADO.ID = 5
group by CATEGORIA.NOME
order by TOTAL_VENDAS desc;
