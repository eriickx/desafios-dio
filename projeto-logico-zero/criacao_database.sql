-- cria o database ecommerce e usa ele
create database oficina;
use oficina;

-- cria tabela cliente
create table CLIENTE(
	ID int auto_increment primary key,
    NOME varchar(20) not null,
    TELEFONE varchar(9) not null,
    ENDERECO varchar(100)
);

-- cria tabela veiculo
create table VEICULO(
	ID int auto_increment primary key,
	PLACA varchar(7) unique not null,
    MARCA varchar(20) not null,
    MODELO varchar(20) not null,
    ANO int not null,
    COR varchar(20) not null,
    KM float not null
);

-- cria tabela ficha
create table FICHA(
	ID int auto_increment primary key,
    VEICULO_ID int,
    foreign key (VEICULO_ID) references VEICULO(ID),
    CLIENTE_ID int,
    foreign key (CLIENTE_ID) references CLIENTE(ID),
    DATA_ENTRADA date not null,
    VALOR_TOTAL float not null
);

-- cria tabela especialidade
create table ESPECIALIDADE(
	ID int auto_increment primary key,
    ESPECIALIDADE varchar(45) not null
);

-- cria tabela mecanico
create table MECANICO(
	ID int auto_increment primary key,
	NOME varchar(45) not null,
    ESPECIALIDADE_ID int,
    foreign key (ESPECIALIDADE_ID) references ESPECIALIDADE(ID)
);

-- cria tabela servico
create table SERVICO(
	ID int auto_increment primary key,
    DESCRICAO varchar(100),
	SITUACAO enum('Aguardando autorização', 'Autorizado', 'Não autorizado', 'Concluído'),
    MECANICO_RESPONSAVEL int,
    foreign key (MECANICO_RESPONSAVEL) references MECANICO(ID)
);

-- cria tabela intermediaria relacao_servico
create table RELACAO_SERVICO(
	FICHA_ID int,
    SERVICO_ID int,
    primary key (FICHA_ID, SERVICO_ID),
    foreign key (FICHA_ID) references FICHA(ID),
    foreign key (SERVICO_ID) references SERVICO(ID),
    VALOR_PECA float not null,
    VALOR_MAO_OBRA float not null
);
