-- queries de consulta
-- SELECT básico recuperando todas as informações dos clientes
select NOME from CLIENTE;

-- filtro com WHERE para os clientes que possuem um número de telefone que começa com "9" e endereço
select NOME, TELEFONE, ENDERECO from CLIENTE where TELEFONE like '9%' and ENDERECO is not null;

-- criando um atributo derivado que mostra a idade do veículo (diferença entre o ano atual e o ano do veículo)
select PLACA, MARCA, MODELO, ANO, (2025 - ANO) as IDADE_VEICULO from VEICULO;

-- ordenando os veículos pela idade, em ordem crescente (do mais novo para o mais velho):
select PLACA, MARCA, MODELO, ANO from VEICULO order by ANO asc;

-- verificamos a média de VALOR_TOTAL dos serviços por CLIENTE_ID e retornamos os clientes com um valor médio acima de 400
select CLIENTE_ID, avg(VALOR_TOTAL) as MEDIA_VALOR_TOTAL from FICHA group by CLIENTE_ID having avg(VALOR_TOTAL) > 400;

-- junção para mostrar NOME do cliente, MODELO do veículo e o DESCRICAO do serviço que foi feito
select CLIENTE.NOME, VEICULO.MODELO, SERVICO.DESCRICAO from FICHA
join CLIENTE on FICHA.CLIENTE_ID = CLIENTE.ID
join VEICULO on FICHA.VEICULO_ID = VEICULO.ID
join RELACAO_SERVICO on FICHA.ID = RELACAO_SERVICO.FICHA_ID
join SERVICO on RELACAO_SERVICO.SERVICO_ID = SERVICO.ID;

-- pegamos os serviços realizados para veículos da marca "Fiat" e com um valor total superior a 400
select CLIENTE.NOME, VEICULO.MODELO, SERVICO.DESCRICAO, FICHA.VALOR_TOTAL from FICHA
join CLIENTE on FICHA.CLIENTE_ID = CLIENTE.ID
join VEICULO on FICHA.VEICULO_ID = VEICULO.ID
join RELACAO_SERVICO on FICHA.ID = RELACAO_SERVICO.FICHA_ID
join SERVICO on RELACAO_SERVICO.SERVICO_ID = SERVICO.ID
where VEICULO.MARCA = 'Fiat' and FICHA.VALOR_TOTAL > 400;
