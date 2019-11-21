/* Inserção de tuplas em cliente */
INSERT INTO CLIENTE(cpf, nome, email, pontos_crm, rua, num, cidade, estado, bairro) VALUES ('10000000001', 'cliente 1', 'cliente1@email.com', 2, 'rua 1', 1,'cidade 1', 'estado 1' , 'bairro 1');
INSERT INTO CLIENTE(cpf, nome, email, pontos_crm, rua, num, cidade, estado, bairro) VALUES ('10000000002', 'cliente 2', 'cliente2@email.com', 4, 'rua 2', 2, 'cidade 2', 'esUtado 2' , 'bairro 2');
INSERT INTO CLIENTE(cpf, nome, email, pontos_crm, rua, num, cidade, estado, bairro) VALUES ('10000000003', 'cliente 3', 'cliente3@email.com', 6, 'rua 3', 3, 'cidade 3', 'estado 3' , 'bairro 3');

/* Inserção de tuplas em filial */
INSERT INTO FILIAL(codigo_identificacao, nome, endereco, telefone, gerente) VALUES (1, 'filial 1', 'rua filial 1' , '1111-1111', 1);
INSERT INTO FILIAL(codigo_identificacao, nome, endereco, telefone, gerente) VALUES (2, 'filial 2', 'rua filial 2' , '2222-2222', 2);
INSERT INTO FILIAL(codigo_identificacao, nome, endereco, telefone, gerente) VALUES (3, 'filial 3', 'rua filial 3' , '3333-3333', 3);
INSERT INTO FILIAL(codigo_identificacao, nome, endereco, telefone, gerente) VALUES (4, 'filial 4', 'rua filial 4' , '4444-4444', null);

/* Inserção de tuplas em marca */
INSERT INTO MARCA(identificador, nome) VALUES (1, 'produto 1');
INSERT INTO MARCA(identificador, nome) VALUES (2, 'produto 2');
INSERT INTO MARCA(identificador, nome) VALUES (3, 'produto 3');
INSERT INTO MARCA(identificador, nome) VALUES (4, 'produto 4');
INSERT INTO MARCA(identificador, nome) VALUES (5, 'produto 5');

/* Inserção de tuplas em categoria */
INSERT INTO CATEGORIA(identificador, nome) VALUES(1, 'categoria 1');
INSERT INTO CATEGORIA(identificador, nome) VALUES(2, 'categoria 2');
INSERT INTO CATEGORIA(identificador, nome) VALUES(3, 'categoria 3');
INSERT INTO CATEGORIA(identificador, nome) VALUES(4, 'categoria 4');
INSERT INTO CATEGORIA(identificador, nome) VALUES(5, 'categoria 5');

/* Inserção de tuplas em funcionario */
INSERT INTO FUNCIONARIO(matricula, cpf, identidade, nome, endereco, salario, funcao, matricula_supervisor, codigo_filial) VALUES(1, '11122233344', '1111122', 'funcionario 1', 'endereco 1', 4000, 'gerente1', null, 1);
INSERT INTO FUNCIONARIO(matricula, cpf, identidade, nome, endereco, salario, funcao, matricula_supervisor, codigo_filial) VALUES(2, '22233344455', '2222233', 'funcionario 2', 'endereco 2', 3000, 'funcionario1', null, 2);
INSERT INTO FUNCIONARIO(matricula, cpf, identidade, nome, endereco, salario, funcao, matricula_supervisor, codigo_filial) VALUES(3, '33344455566', '3333344', 'funcionario 3', 'endereco 3', 2000, 'funcionario2', null, 3);
