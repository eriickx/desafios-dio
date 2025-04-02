-- população do banco de dados
-- inserção de clientes
insert into CLIENTE (NOME, TELEFONE, ENDERECO)
values
	('Ana Silva', '987654321', 'Rua das Flores, 123'),
	('Carlos Souza', '912345678', ''),
	('Maria Oliveira', '923456789', 'Avenida Brasil, 456'),
	('José Santos', '934567890', ''),
	('Fernanda Lima', '945678901', 'Rua das Acácias, 789');


-- inserção de veículos
insert into VEICULO(PLACA, MARCA, MODELO, ANO, COR, KM)
values
	('ABC1234', 'Fiat', 'Uno', 2015, 'Prata', 55000),
	('XYZ5678', 'Volkswagen', 'Gol', 2018, 'Preto', 32000),
	('DEF2345', 'Chevrolet', 'Onix', 2020, 'Branco', 22000),
	('GHI6789', 'Honda', 'Civic', 2017, 'Azul', 40000),
	('JKL1234', 'Ford', 'Fiesta', 2019, 'Vermelho', 25000),
	('MNO3456', 'Toyota', 'Corolla', 2021, 'Cinza', 15000),
	('PQR7890', 'Renault', 'Sandero', 2022, 'Verde', 10000),
	('STU2345', 'Nissan', 'Kicks', 2020, 'Amarelo', 18000);

-- inserção de fichas
insert into FICHA(VEICULO_ID, CLIENTE_ID, DATA_ENTRADA, VALOR_TOTAL)
values
	(1, 1, '2025-01-10', 300.00),
	(2, 2, '2025-02-15', 450.00),
	(3, 3, '2025-03-20', 550.00),
	(4, 4, '2025-04-05', 650.00),
	(5, 5, '2025-05-01', 400.00);

-- inserção de especialidades
insert into ESPECIALIDADE(ESPECIALIDADE)
values
	('Motores'),
	('Suspensões'),
	('Transmissão'),
	('Direção'),
	('Elétrica'),
	('Alinhamento'),
	('Freios');

-- inserção de mecânicos
insert into MECANICO(NOME, ESPECIALIDADE_ID)
values
	('João Pereira', 2),
	('Carlos Silva', 5),
	('Ricardo Alves', 1);

-- inserção de serviços
insert into SERVICO(DESCRICAO, SITUACAO, MECANICO_RESPONSAVEL)
values
	('Troca de óleo e filtros', 'Aguardando autorização', 1),
	('Reparo na suspensão dianteira', 'Autorizado', 2),
	('Substituição da bomba de combustível', 'Não autorizado', 3),
	('Alinhamento e balanceamento das rodas', 'Concluído', 1),
	('Troca de pastilhas de freio', 'Aguardando autorização', 2),
	('Reparo no sistema de ar condicionado', 'Autorizado', 3),
	('Troca da correia dentada', 'Concluído', 1),
	('Verificação e limpeza do sistema de injeção eletrônica', 'Não autorizado', 2),
	('Substituição do alternador', 'Aguardando autorização', 3),
	('Retoque de pintura devido a arranhões na lateral', 'Concluído', 1);

-- inserção de tabela intermediária servico e ficha
insert into RELACAO_SERVICO(FICHA_ID, SERVICO_ID, VALOR_PECA, VALOR_MAO_OBRA)
values
	(1, 1, 150.00, 80.00), 
	(2, 2, 350.00, 120.00),
	(3, 3, 500.00, 150.00),
	(4, 4, 200.00, 90.00),
	(5, 5, 120.00, 70.00),
	(1, 6, 400.00, 180.00),
	(2, 7, 600.00, 200.00),
	(3, 8, 350.00, 130.00),
	(4, 9, 450.00, 160.00),
	(5, 10, 100.00, 50.00);
