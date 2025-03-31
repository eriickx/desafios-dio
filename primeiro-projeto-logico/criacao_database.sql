-- cria o database ecommerce e usa ele
create database ecommerce;
use ecommerce;

-- cria tabela cliente
create table CLIENTE(
	ID int auto_increment primary key,
    P_NOME varchar(20) not null,
    SOBRENOME varchar(20),
    ENDERECO varchar(100) not null,
    DATA_NASCIMENTO date not null,
    TIPO_PESSOA enum("Pessoa Física","Pessoa Jurídica") not null,
    DOCUMENTO varchar(14) not null unique
);

-- cria a tabela status
create table ESTADO(
	ID int auto_increment primary key,
    NOME varchar(45) not null
);

-- cria tabela pedido
create table PEDIDO(
	ID int auto_increment primary key,
	ESTADO_ID int,
    foreign key (ESTADO_ID) references ESTADO(ID),
    COMENTARIO varchar(45),
    CLIENTE_ID int,
    foreign key (CLIENTE_ID) references CLIENTE(ID),
    VALOR_PEDIDO float not null,
    VALOR_FRETE float not null,
    CODIGO_RASTREIO varchar(45)
);

-- cria tabela forma de pagamento
create table FORMA_PAGAMENTO(
	ID int auto_increment primary key,
    NOME varchar(45) not null
);

-- cria tabela intermediaria forma de pagamento e pedido
create table PEDIDO_FORMA_PAGAMENTO(
	PEDIDO_ID int,
    FORMA_PAGAMENTO_ID int,
    primary key (PEDIDO_ID, FORMA_PAGAMENTO_ID),
    foreign key (PEDIDO_ID) references PEDIDO(ID),
    foreign key (FORMA_PAGAMENTO_ID) references FORMA_PAGAMENTO(ID)
);

-- cria tabela categoria
create table CATEGORIA(
	ID int auto_increment primary key,
    NOME varchar(45) not null
);

-- cria tabela produto
create table PRODUTO(
	ID int auto_increment primary key,
    NOME varchar(45) not null,
    CATEGORIA_ID int,
    foreign key (CATEGORIA_ID) references CATEGORIA(ID),
    VALOR float not null,
    DESCRICAO varchar(100)
);

-- cria tabela intermediária produto e pedido
create table PEDIDO_PRODUTO(
	PEDIDO_ID int,
    PRODUTO_ID int,
    primary key (PEDIDO_ID, PRODUTO_ID),
    foreign key (PEDIDO_ID) references PEDIDO(ID),
    foreign key (PRODUTO_ID) references PRODUTO(ID),
    QTD int not null,
    VALOR_UNITARIO float not null
);

-- cria tabela vendedor
create table VENDEDOR(
	ID int auto_increment primary key,
    RAZAO_SOCIAL varchar(100) unique not null,
    ENDERECO varchar(100),
    NOME_FANTASIA varchar(100) not null,
    CONTATO varchar(45) not null
);

-- cria tabela intermediaria produto e vendedor
create table PRODUTO_VENDEDOR(
	PRODUTO_ID int,
	VENDEDOR_ID int,
    primary key (PRODUTO_ID, VENDEDOR_ID),
    foreign key (PRODUTO_ID) references PRODUTO(ID),
    foreign key (VENDEDOR_ID) references VENDEDOR(ID),
    VALOR_PRODUTO_VENDEDOR float not null
);
