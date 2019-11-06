CREATE TABLE  cliente (
        cpf_cliente CHAR(11) NOT NULL, 
	nome VARCHAR2(50) NOT NULL, 
	email VARCHAR2(50) NOT NULL, 
	pontos_crm INT NOT NULL, 
	rua VARCHAR(50)NOT NULL,
        numero INT,
        cidade VARCHAR(30) NOT NULL,
        bairro VARCHAR(50) NOT NULL,
        estado VARCHAR (20) NOT NULL,
	PRIMARY KEY (cpf_cliente)
   );

CREATE TABLE telefone_cliente(
	cpf_cliente VARCHAR (20),
    	numero_tel_cliente VARCHAR(20),
	PRIMARY KEY (cpf_cliente)
);

CREATE TABLE funcionario(
        matricula_funcionario VARCHAR(20) NOT NULL,
        cpf_funcionario CHAR(11) NOT NULL,
        identidade CHAR(14) NOT NULL,
        nome VARCHAR(50) NOT NULL,
        endereco_funcionario VARCHAR(50) NOT NULL,
        salario FLOAT NOT NULL,
        funcao VARCHAR(20) NOT NULL,
        matricula_supervisor VARCHAR(20),
        PRIMARY KEY (matricula_funcionario),
        FOREIGN KEY (matricula_supervisor) REFERENCES funcionario(matricula_funcionario)

);

CREATE TABLE telefone_funcionario(
	matricula_funcionario VARCHAR (20),
	numero_tel_funcionario VARCHAR(20),
	PRIMARY KEY (matricula_funcionario)
);

CREATE TABLE dependente(
        cpf_dependente CHAR(11) NOT NULL,
        data_nascimento DATE NOT NULL,
        nome_dependente VARCHAR(50) NOT NULL,
        matricula_dependente VARCHAR(20),
        PRIMARY KEY (cpf_dependente),
        FOREIGN KEY (matricula_dependente) REFERENCES funcionario(matricula_funcionario)
 );

CREATE TABLE equipamento(
        id_equipamento NUMBER NOT NULL,
        descricao VARCHAR(100) NOT NULL,
        PRIMARY KEY (id_equipamento)
);

CREATE TABLE nota_fiscal(
        num_nota_fiscal NUMBER NOT NULL,
        cnpj CHAR(12) NOT NULL,
        quantidade INT NOT NULL,
        data DATE NOT NULL,
        valor_por_item FLOAT NOT NULL,
        PRIMARY KEY (num_nota_fiscal)
);

CREATE TABLE solicitacao(
        id_solicitacao NUMBER NOT NULL,
        data_solicitacao DATE NOT NULL,
        data_prev_entrega DATE NOT NULL,
        data_entrega DATE NOT NULL,
        valor_compra FLOAT NOT NULL,
        prazo_pagamento INT NOT NULL,
        PRIMARY KEY (id_solicitacao)
);

CREATE TABLE item(
        id_item NUMBER NOT NULL,
        quantidade INT NOT NULL,
        preco FLOAT NOT NULL,
        desconto FLOAT,
        PRIMARY KEY (id_item)
);

CREATE TABLE  ordem_de_compra(
        num_nota_fiscal NUMBER NOT NULL, 
	data_hora DATE NOT NULL, 
	PRIMARY KEY (num_nota_fiscal)
);

CREATE TABLE  produto(
        id_produto NUMBER NOT NULL,
	nome VARCHAR2(30) NOT NULL,
	descricao VARCHAR2(40) NOT NULL,
	margem_lucro FLOAT(126) NOT NULL, 
	PRIMARY KEY (id_produto)
);

CREATE TABLE  filial(
        id_filial INT NOT NULL,
        nome VARCHAR(50) NOT NULL,
        endereco  VARCHAR(100) NOT NULL, 
        telefone VARCHAR(20) NOT NULL,
        PRIMARY KEY(id_filial)
   
);

CREATE TABLE marca(
        id_marca VARCHAR (12) NOT NULL,
        nome_marca VARCHAR (50) NOT NULL,
        PRIMARY KEY (id_marca)
);

CREATE TABLE categoria(
        id_categoria VARCHAR (12) NOT NULL,
        nome_categoria VARCHAR (50) NOT NULL,
        PRIMARY KEY (id_categoria)
);

CREATE TABLE caixa (
        num_caixa INT NOT NULL,
        cod_id_caixa INT NOT NULL,
        PRIMARY KEY (num_caixa)
);

CREATE TABLE fornecedor (
        cnpj_fornecedor CHAR(14) NOT NULL,
        nome VARCHAR(30) NOT NULL,
        endereco VARCHAR(100) NOT NULL,
        email VARCHAR(50) NOT NULL,
        site VARCHAR(30) NOT NULL,
        PRIMARY KEY (cnpj_fornecedor)
);

CREATE TABLE telefone_fornecedor(
        cnpj_fornecedor VARCHAR(20),
        numero_tel_fornecedor VARCHAR(20),
        PRIMARY KEY (cnpj_fornecedor)
);

CREATE TABLE realiza_reclamacao(
        cpf_cliente CHAR(11) NOT NULL,
        id_filial INT NOT NULL,
	data_e_hora VARCHAR(50),
	descricao VARCHAR(60),
       	FOREIGN KEY (cpf_cliente) REFERENCES cliente(cpf_cliente),
       	FOREIGN KEY (id_filial) REFERENCES filial(id_filial),
	PRIMARY KEY (cpf_cliente, id_filial)
);

CREATE TABLE realiza_manutencao(
        id_equipamento NUMBER NOT NULL,
        matricula_funcionario VARCHAR(20) NOT NULL,
	data_e_hora VARCHAR(50),
	descricao VARCHAR(60),
       	FOREIGN KEY (id_equipamento) REFERENCES equipamento(id_equipamento),
       	FOREIGN KEY (matricula_funcionario) REFERENCES funcionario(matricula_funcionario),
	PRIMARY KEY (id_equipamento, matricula_funcionario)
);
