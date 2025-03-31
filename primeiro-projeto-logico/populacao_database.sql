-- população do banco de dados
-- inserção de clientes
insert into CLIENTE (P_NOME, SOBRENOME, ENDERECO, DATA_NASCIMENTO, TIPO_PESSOA, DOCUMENTO)
values
	('Maria Clara', 'Oliveira Silva', 'Rua das Flores, número 54 - São Paulo', '1990-03-12', 'Pessoa Física', '12345678901'),
	('João Pedro', 'Lima Souza', 'Rua dos Ipês, número 128 - Campinas', '1987-07-25', 'Pessoa Física', '23456789012'),
	('Ana Beatriz', 'Costa Pereira', 'Avenida Paulista, número 1000 - São Paulo', '1995-11-02', 'Pessoa Física', '34567890123'),
	('Lucas', 'Melo Fernandes', 'Rua dos Limoeiros, número 33 - Rio de Janeiro', '1989-08-14', 'Pessoa Física', '45678901234'),
	('Fernanda', 'Ribeiro Souza', 'Rua das Margaridas, número 112 - Belo Horizonte', '1992-02-18', 'Pessoa Física', '56789012345'),
	('Carlos', 'Nascimento Souza', 'Rua das Acácias, número 45 - Porto Alegre', '1983-09-30', 'Pessoa Física', '67890123456'),
	('Patrícia', 'Pereira Costa', 'Rua das Palmeiras, número 220 - Fortaleza', '1985-04-09', 'Pessoa Física', '78901234567'),
	('Fábio', 'Silva Oliveira', 'Avenida Brasil, número 878 - Salvador', '1993-06-22', 'Pessoa Física', '89012345678'),
	('José Augusto', 'Machado Santos', 'Rua da Paz, número 9 - Curitiba', '1990-01-17', 'Pessoa Física', '90123456789'),
	('CNPJ Comércio LTDA', 'N/A', 'Rua do Comércio, número 150 - São Paulo', '2001-05-20', 'Pessoa Jurídica', '12345678000101'),
	('Tech Solutions SA', 'N/A', 'Avenida das Indústrias, número 45 - Campinas', '2000-09-10', 'Pessoa Jurídica', '98765432000199');

-- inserção de status
insert into ESTADO(NOME)
values
	('Em análise'),
	('Em separação'),
	('Aguardando coleta'),
	('Enviado'),
	('Entregue'),
	('Concluído'),
	('Cancelado');

-- inserção de formas de pagamento
insert into FORMA_PAGAMENTO (NOME)
values
	('Mastercard - Débito'),
	('Mastercard - Crédito'),
	('Visa - Débito'),
	('Visa - Crédito'),
	('Dinheiro'),
	('PIX'),
	('Boleto');

-- inserção de categorias
insert into CATEGORIA(NOME)
values
	('Computadores'),
	('Notebooks'),
	('Fones de ouvido'),
	('Mouses'),
	('Teclados'),
	('Mousepads');

-- inserção de produtos (5 produtos para cada categoria)
insert into PRODUTO(NOME, CATEGORIA_ID, VALOR, DESCRICAO)
values
	('PC Gamer High-end', 1, '9999.99', 'Computador gamer com capacidade de rodar todos os jogos atuais em alta qualidade.'),
	('PC All-in-One', 1, '2299.99', 'Computador All-in-One, tela 24" Full HD'),
	('Computador de Escritório', 1, '1499.99', 'PC básico para uso de escritório, 8GB RAM'),
	('Mini PC', 1, '999.99', 'Mini PC compacto, ideal para trabalho remoto'),
	('Estação de Trabalho', 1, '4999.99', 'Computador de alto desempenho para design gráfico'),
	('Notebook Gamer', 2, '4999.99', 'Notebook gamer com placa de vídeo NVIDIA GTX 1660 Ti'),
	('Notebook Ultrafino', 2, '3499.99', 'Notebook ultrafino, tela de 13" e 512GB SSD'),
	('Notebook de 15 polegadas', 2, '1999.99', 'Notebook com tela Full HD, ideal para trabalho'),
	('Notebook 2 em 1', 2, '2499.99', 'Notebook conversível, pode ser usado como tablet'),
	('Notebook para Design', 2, '5999.99', 'Notebook com tela 4K e processador Intel Core i9'),
	('Fone de Ouvido Bluetooth', 3, '199.99', 'Fone de ouvido Bluetooth com 20 horas de bateria'),
	('Fone de Ouvido com Cancelamento de Ruído', 3, '349.99', 'Fone com cancelamento ativo de ruído'),
	('Fone de Ouvido Gaming', 3, '159.99', 'Fone de ouvido gamer com microfone e som surround'),
	('Fone de Ouvido Esportivo', 3, '129.99', 'Fone resistente à água, ideal para treinos'),
	('Fone de Ouvido In-Ear', 3, '89.99', 'Fone de ouvido in-ear com som claro e graves intensos'),
	('Mouse Gamer', 4, '99.99', 'Mouse gamer com 7 botões programáveis e RGB'),
	('Mouse Sem Fio', 4, '79.99', 'Mouse sem fio com sensor de 1600 DPI'),
	('Mouse Óptico', 4, '49.99', 'Mouse óptico, ideal para uso diário em escritório'),
	('Mouse Ergonomico', 4, '129.99', 'Mouse ergonômico para reduzir esforços repetitivos'),
	('Mouse Multimídia', 4, '59.99', 'Mouse com 3 botões e roda de rolagem, ideal para multimídia'),
	('Teclado Mecânico', 5, '349.99', 'Teclado mecânico com switches azuis e retroiluminação RGB'),
	('Teclado de Membrana', 5, '129.99', 'Teclado de membrana com 104 teclas e design ergonômico'),
	('Teclado Gamer', 5, '199.99', 'Teclado gamer com anti-ghosting e teclas dedicadas para macros'),
	('Teclado Compacto', 5, '99.99', 'Teclado compacto, ideal para quem busca praticidade'),
	('Teclado Wireless', 5, '179.99', 'Teclado sem fio com 10 metros de alcance'),
	('Mousepad Gamer', 6, '49.99', 'Mousepad grande com superfície para alta precisão'),
	('Mousepad RGB', 6, '69.99', 'Mousepad com iluminação RGB e efeito de respiração'),
	('Mousepad de Borracha', 6, '19.99', 'Mousepad simples com base de borracha antideslizante'),
	('Mousepad Ergonômico', 6, '29.99', 'Mousepad com apoio para os pulsos, ideal para uso prolongado'),
	('Mousepad Grande', 6, '39.99', 'Mousepad grande para uso com mouses de alta sensibilidade');

-- inserção de vendedores
insert into VENDEDOR(RAZAO_SOCIAL, ENDERECO, NOME_FANTASIA, CONTATO)
values
	('Tech Global Ltda', 'Rua das Indústrias, número 120 - São Paulo', 'Tech Global', 'contato@techglobal.com.br'),
	('Eletrônica Progresso S.A.', 'Avenida Paulista, número 890 - São Paulo', 'Progresso Eletrônicos', '(11) 98765-4321'),
	('Mundo Digital Comércio Ltda', 'Rua das Flores, número 342 - Curitiba', 'Mundo Digital', 'mundo.digital@email.com'),
	('SmartTech Inovações Ltda', 'Avenida Rio Branco, número 550 - Rio de Janeiro', 'SmartTech', '(21) 99876-5432'),
	('Loja Eletrônica Online Ltda', 'Rua da Liberdade, número 74 - Belo Horizonte', 'Loja Eletrônica', 'lojaonline@eletronica.com'),
	('GigaStore Comércio Ltda', 'Rua dos Limoeiros, número 29 - Porto Alegre', 'GigaStore', '(51) 98765-6789');

-- inserção de tabela intermediária produto e vendedor
insert into PRODUTO_VENDEDOR(PRODUTO_ID, VENDEDOR_ID, VALOR_PRODUTO_VENDEDOR)
values
	(1, 6, '9999.99'),
	(2, 1, '2299.99'),
	(3, 1, '1499.99'),
	(4, 3, '999.99'),
	(5, 2, '4999.99'),
	(6, 4, '4999.99'),
	(7, 4, '3499.99'),
	(8, 6, '1999.99'),
	(9, 1, '2499.99'),
	(10, 1, '5999.99'),
	(11, 5, '199.99'),
	(12, 5, '349.99'),
	(13, 5, '159.99'),
	(14, 4, '129.99'),
	(15, 2, '89.99'),
	(16, 4, '99.99'),
	(17, 6, '79.99'),
	(18, 3, '49.99'),
	(19, 6, '129.99'),
	(20, 6, '59.99'),
	(21, 1, '349.99'),
	(22, 3, '129.99'),
	(23, 5, '199.99'),
	(24, 2, '99.99'),
	(25, 2, '179.99'),
	(26, 5, '49.99'),
	(27, 3, '69.99'),
	(28, 2, '19.99'),
	(29, 4, '29.99'),
	(30, 3, '39.99');

-- inserção de pedidos
insert into PEDIDO(ESTADO_ID, COMENTARIO, CLIENTE_ID, VALOR_PEDIDO, VALOR_FRETE, CODIGO_RASTREIO)
values
	(5, '', 1, '10609.95', '25.00', 'AB12345678'),
	(5, '', 2, '2299.99', '30.00', 'CD98765432'),
	(5, '', 3, '1499.99', '15.00', 'EF45678901'),
	(5, '', 4, '999.99', '35.00', 'GH12345987'),
	(5, '', 5, '4999.99', '20.00', 'IJ23456789'),
	(5, '', 6, '4999.99', '28.00', 'KL34567890'),
	(5, '', 7, '3499.99', '40.00', 'MN45678912'),
	(5, '', 8, '1999.99', '10.00', 'OP56789034'),
	(5, '', 9, '2499.99', '18.00', 'QR67890123'),
	(5, '', 10, '5999.99', '22.00', 'ST78901234'),
	(5, '', 11, '929.95', '12.00', 'UV89012345'),
	(4, '', 2, '349.99', '30.00', 'WX90123456'),
	(4, '', 3, '159.99', '15.00', 'YZ12345678'),
	(6, '', 1, '129.99', '25.00', ''),
	(6, '', 4, '89.99', '35.00', ''),
	(5, 'Embrulhar para presente', 5, '99.99', '27.00', 'EF23456789'),
	(5, '', 6, '79.99', '18.00', 'GH87654321'),
	(5, '', 7, '49.99', '30.00', 'IJ98765432'),
	(5, '', 8, '129.99', '22.00', 'KL34567890'),
	(5, '', 9, '59.99', '10.00', 'MN56789012'),
	(5, '', 10, '349.99', '28.00', 'OP67890123'),
	(5, '', 11, '9299.50', '17.00', 'QR78901234'),
	(3, '', 10, '199.99', '30.00', 'ST89012345'),
	(3, '', 2, '99.99', '25.00', 'UV90123456'),
	(1, '', 3, '9999.99', '45.00', 'WX23456789'),
	(5, '', 4, '89.99', '40.00', 'YZ34567890'),
	(5, '', 5, '49.99', '35.00', 'AB56789012'),
	(5, '', 6, '69.99', '20.00', 'CD67890123'),
	(5, '', 7, '19.99', '25.00', 'EF78901234'),
	(5, '', 8, '29.99', '15.00', 'GH89012345'),
	(5, '', 9, '39.99', '12.00', 'IJ90123456'),
	(2, '', 1, '179.99', '18.00', 'KL12345678'),
	(2, '', 4, '89.99', '22.00', 'MN23456789'),
	(5, '', 1, '129.99', '35.00', 'OP34567890');

-- inserção na tabela intermediária pedido e produtos
insert into PEDIDO_PRODUTO(PEDIDO_ID, PRODUTO_ID, QTD, VALOR_UNITARIO)
values
	(1, 1, 1, '9999.99'),
	(1, 13, 1, '159.99'),
	(1, 16, 1, '199.99'),
	(1, 23, 1, '199.99'),
	(1, 26, 1, '49.99'),
	(2, 2, 1, '2299.99'),
	(3, 3, 1, '1499.99'),
	(4, 4, 1, '999.99'),
	(5, 5, 1, '4999.99'),
	(6, 6, 1, '4999.99'),
	(7, 7, 1, '3499.99'),
	(8, 8, 1, '1999.99'),
	(9, 9, 1, '2499.99'),
	(10, 10, 10, '59999.90'),
	(11, 11, 1, '199.99'),
	(11, 12, 1, '349.99'),
	(11, 13, 1, '159.99'),
	(11, 14, 1, '129.99'),
	(11, 15, 1, '89.99'),
	(12, 12, 1, '349.99'),
	(13, 13, 1, '159.99'),
	(14, 14, 1, '129.99'),
	(15, 15, 1, '89.99'),
	(16, 16, 1, '99.99'),
	(17, 17, 1, '79.99'),
	(18, 18, 1, '49.99'),
	(19, 19, 1, '129.99'),
	(20, 20, 1, '59.99'),
	(21, 21, 1, '349.99'),
	(22, 11, 10, '199.99'),
	(22, 12, 10, '349.99'),
	(22, 13, 10, '159.99'),
	(22, 14, 10, '129.99'),
	(22, 15, 10, '89.99'),
	(23, 23, 1, '199.99'),
	(24, 24, 1, '99.99'),
	(25, 1, 1, '9999.99'),
	(26, 15, 1, '89.99'),
	(27, 26, 1, '49.99'),
	(28, 27, 1, '69.99'),
	(29, 28, 1, '19.99'),
	(30, 29, 1, '29.99'),
	(31, 30, 1, '39.99'),
	(32, 25, 1, '179.99'),
	(33, 15, 1, '89.99'),
	(34, 14, 1, '129.99');

-- inserção de tabela intermediária pedido e forma de pagamento
insert into PEDIDO_FORMA_PAGAMENTO(PEDIDO_ID, FORMA_PAGAMENTO_ID)
values
	(1, 6),
	(2, 1),
	(3, 1),
	(4, 3),
	(5, 2),
	(6, 2),
	(6, 4),
	(7, 4),
	(8, 6),
	(9, 1),
	(10, 1),
	(11, 5),
	(12, 5),
	(13, 5),
	(14, 4),
	(15, 2),
	(15, 6),
	(16, 4),
	(17, 6),
	(18, 3),
	(19, 6),
	(20, 6),
	(20, 7),
	(21, 1),
	(22, 3),
	(23, 5),
	(24, 2),
	(25, 2),
	(26, 5),
	(26, 7),
	(27, 3),
	(28, 2),
	(29, 4),
	(30, 3),
	(31, 3),
	(32, 3),
	(33, 7),
	(34, 3);
