-- Remove as tuplas existentes para o banco ficar com as tuplas presentes nesse arquivo
DELETE FROM ORDEM_COMPRA;
DELETE FROM CAIXA;
DELETE FROM PRODUTO;
DELETE FROM CATEGORIA;
DELETE FROM MARCA;
DELETE FROM FILIAL;
DELETE FROM CLIENTE;
DELETE FROM FUNCIONARIO;

-- Inserção de tuplas em funcionario
INSERT INTO FUNCIONARIO(matricula, cpf, identidade, nome, endereco, salario, funcao, matricula_supervisor, codigo_filial)
VALUES(1, '11122233344', '1111122', 'funcionario 1', 'endereco 1', 4000, 'gerente1', null, null);

INSERT INTO FUNCIONARIO(matricula, cpf, identidade, nome, endereco, salario, funcao, matricula_supervisor, codigo_filial)
VALUES(2, '22233344455', '2222233', 'funcionario 2', 'endereco 2', 3000, 'funcionario1', null, null);

INSERT INTO FUNCIONARIO(matricula, cpf, identidade, nome, endereco, salario, funcao, matricula_supervisor, codigo_filial)
VALUES(3, '33344455566', '3333344', 'funcionario 3', 'endereco 3', 2000, 'funcionario2', null, null);

INSERT INTO FUNCIONARIO(matricula, cpf, identidade, nome, endereco, salario, funcao, matricula_supervisor, codigo_filial)
VALUES(4, '33344455566', '3333344', 'funcionario 3', 'endereco 3', 2000, 'funcionario2', 1, null);

-- Inserção de tuplas em cliente
INSERT INTO CLIENTE(cpf, nome, email, pontos_crm, rua, num, cidade, estado, bairro)
VALUES ('10000000001', 'cliente 1', 'cliente1@email.com', 2, 'rua 1', 1,'cidade 1', 'estado 1' , 'bairro 1');

INSERT INTO CLIENTE(cpf, nome, email, pontos_crm, rua, num, cidade, estado, bairro)
VALUES ('10000000002', 'cliente 2', 'cliente2@email.com', 4, 'rua 2', 2, 'Campina Grande', 'estado 2' , 'bairro 2');

INSERT INTO CLIENTE(cpf, nome, email, pontos_crm, rua, num, cidade, estado, bairro)
VALUES ('10000000003', 'cliente 3', 'cliente3@email.com', 6, 'rua 3', 3, 'Campina Grande', 'estado 3' , 'bairro 3');

-- Inserção de tuplas em filial
INSERT INTO FILIAL(codigo_identificacao, nome, endereco, telefone, gerente)
VALUES (1, 'filial 1', 'rua filial 1' , '1111-1111', 1);

INSERT INTO FILIAL(codigo_identificacao, nome, endereco, telefone, gerente)
VALUES (2, 'Campina', 'rua filial 2' , '2222-2222', 2);

INSERT INTO FILIAL(codigo_identificacao, nome, endereco, telefone, gerente)
VALUES (3, 'Campina', 'rua filial 3' , '3333-3333', 3);

-- Inserção de tuplas em marca
INSERT INTO MARCA(identificador, nome)
VALUES (1, 'marca 1');

INSERT INTO MARCA(identificador, nome)
VALUES (2, 'marca 2');

INSERT INTO MARCA(identificador, nome)
VALUES (3, 'marca 3');

INSERT INTO MARCA(identificador, nome)
VALUES (4, 'marca 4');

INSERT INTO MARCA(identificador, nome)
VALUES (5, 'marca 5');

-- Inserção de tuplas em categoria
INSERT INTO CATEGORIA(identificador, nome)
VALUES(1, 'categoria 1');

INSERT INTO CATEGORIA(identificador, nome)
VALUES(2, 'categoria 2');

INSERT INTO CATEGORIA(identificador, nome)
VALUES(3, 'categoria 3');

INSERT INTO CATEGORIA(identificador, nome)
VALUES(4, 'categoria 4');

INSERT INTO CATEGORIA(identificador, nome)
VALUES(5, 'categoria 5');

-- Inserção de tuplas em produto
INSERT INTO PRODUTO(codigo_identificacao, nome, descricao, margem_lucro, codigo_filial, quantidade, preco_compra,preco_venda, data_compra, data_validade, id_marca, id_categoria) 
VALUES(1,'nome1', 'no cego', 2.1, 1, 2, 3.15, 3.50, TO_DATE('01/01/2018'), TO_DATE('01/01/2019'), 1, 1);

INSERT INTO PRODUTO(codigo_identificacao, nome, descricao, margem_lucro, codigo_filial, quantidade, preco_compra, preco_venda, data_compra, data_validade, id_marca, id_categoria) 
VALUES(2,'nome2', 'descricao2', 2.1, 1, 1, 3.16, 3.50, TO_DATE('02/01/2018'), TO_DATE('01/01/2019'), 1, 2);

INSERT INTO PRODUTO(codigo_identificacao, nome, descricao, margem_lucro, codigo_filial, quantidade, preco_compra, preco_venda, data_compra, data_validade, id_marca, id_categoria) 
VALUES(3,'nome3', 'descricao3', 2.1, 1, 4, 3.18, 3.50, TO_DATE('02/01/2018'), TO_DATE('01/01/2019'), 5, 1);

INSERT INTO PRODUTO(codigo_identificacao, nome, descricao, margem_lucro, codigo_filial, quantidade, preco_compra, preco_venda, data_compra, data_validade, id_marca, id_categoria) 
VALUES(4,'nome4', 'descricao4', 2.1, 1, 6, 3.15, 3.50, TO_DATE('31/12/2019'), TO_DATE('01/01/2019'), 2, 1);

INSERT INTO PRODUTO(codigo_identificacao, nome, descricao, margem_lucro, codigo_filial, quantidade, preco_compra, preco_venda, data_compra, data_validade, id_marca, id_categoria) 
VALUES(5,'nome5', 'descricao5', 2.1, 1, 4, 3.14, 3.50, TO_DATE('01/01/2020'), TO_DATE('01/01/2019'), 5, 3);

-- Inserção de tuplas em CAIXA
INSERT INTO CAIXA (numero_caixa, codigo_filial)
VALUES( 1, 1);

INSERT INTO CAIXA (numero_caixa, codigo_filial)
VALUES( 2, 2);

-- Inserção de tuplas em ORDEM_COMPRA
INSERT INTO ORDEM_COMPRA(numero_nota_fiscal, data_hora, cpf_cliente, codigo_filial, matricula_funcionario, numero_caixa)
VALUES(1, TO_DATE('01/01/2018 12:10:11', 'DD/MM/YYYY HH:MI:SS'), '10000000001', 1, 1, 1);

INSERT INTO ORDEM_COMPRA(numero_nota_fiscal, data_hora, cpf_cliente, codigo_filial, matricula_funcionario, numero_caixa)
VALUES(2, TO_DATE('01/01/2018 12:10:11', 'DD/MM/YYYY HH:MI:SS'), '10000000002', 1, 1, 1);

INSERT INTO ORDEM_COMPRA(numero_nota_fiscal, data_hora, cpf_cliente, codigo_filial, matricula_funcionario, numero_caixa)
VALUES(3, TO_DATE('01/01/2018 12:10:11', 'DD/MM/YYYY HH:MI:SS'), '10000000003', 2, 1, 2);