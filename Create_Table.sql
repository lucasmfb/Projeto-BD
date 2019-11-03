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
	telefone NUMBER(11,0), 
	PRIMARY KEY (cpf_cliente)
   );

CREATE TABLE funcionario(
    matricula VARCHAR(20) NOT NULL,
    cpf_funcionario CHAR(11) NOT NULL,
    identidade CHAR(14) NOT NULL,
    nome VARCHAR(50) NOT NULL,
    endereco_funcionario VARCHAR(50) NOT NULL,
    salario FLOAT NOT NULL,
    funcao VARCHAR(20) NOT NULL,
    matricula_supervisor VARCHAR(20),
    PRIMARY KEY (matricula),
    FOREIGN KEY (matricula_supervisor) REFERENCES funcionario(matricula)

);

CREATE TABLE  ordem_de_compra(
    num_nota_fiscal NUMBER NOT NULL, 
	data_hora DATE NOT NULL, 
	PRIMARY KEY (num_nota_fiscal)
   );

CREATE TABLE  produto(
    code_id NUMBER NOT NULL,
	nome VARCHAR2(30) NOT NULL,
	descricao VARCHAR2(40) NOT NULL,
	margem_lucro FLOAT(126) NOT NULL, 
	PRIMARY KEY (code_id)
    );

CREATE TABLE  filial(
    cod_id_filial INT NOT NULL,
    nome VARCHAR(50) NOT NULL,
    endereco  VARCHAR(100) NOT NULL,
    telefone VARCHAR(20) NOT NULL,
    PRIMARY KEY(cod_id_filial),
   
);

CREATE TABLE marca(
    id_marca VARCHAR (12) NOT NULL,
    nome_marca VARCHAR (50) NOT NULL,
    PRIMARY KEY (id_marca),
);

CREATE TABLE categoria(
    id_categoria VARCHAR (12) NOT NULL,
    nome_categoria VARCHAR (50) NOT NULL,
    PRIMARY KEY (id_categoria),
);

CREATE TABLE caixa (
    num_caixa INT NOT NULL,
    cod_id_caixa INT NOT NULL,
    PRIMARY KEY (num_caixa),
    FOREIGN KEY (cod_id_caixa) REFERENCES filial(cod_id_filial)
    
);
