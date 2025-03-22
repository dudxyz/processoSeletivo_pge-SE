CREATE DATABASE sistema_processos_juridicos
CHARACTER SET utf8mb4
COLLATE utf8mb4_general_ci;

USE sistema_processos_juridicos;

create table processo(
	numero_processo int auto_increment primary key,
    orgao_juizo varchar(30),
    assunto text,
    status varchar(20),
    oab_procurador varchar(10) not null,
    cliente int not null,
    foreign key(oab_procurador) references procurador(oab),
    foreign key(cliente) references cliente (id_cliente)
);

create table prazo(
	id_prazo int auto_increment primary key,
    tipo varchar(20),
    data_vencimento date,
    status varchar(20),
    numero_processo int not null,
    foreign key(numero_processo) references processo(numero_processo)
);

create table documento(
	id_documento int auto_increment primary key,
    nome varchar(30),
    tipo varchar(20),
    numero_processo int not null,
    foreign key(numero_processo) references processo(numero_processo)
);

create table procurador(
	oab varchar(10) primary key,
    nome varchar(100) not null,
    telefone varchar(15),
    email varchar(100)
);

create table redistribuicao(
	id_distribuicao int auto_increment primary key,
    oab_procurador_anterior varchar(10) not null,
    oab_procurador_atual varchar(10) not null,
    foreign key(oab_procurador_anterior) references procurador(oab),
    foreign key(oab_procurador_atual) references procurador(oab)
);

create table cliente(
	id_cliente int auto_increment primary key,
    nome varchar(100) not null,
    telefone varchar(15),
    cpf_cnpj varchar(20) unique
);
