-- Remove as estruturas criadas no arquivo
DROP VIEW funcionarios;

-- 1. Qual o número de compras feitas entre 01/01/2018 e 31/12/2019 ?

SELECT COUNT(*) AS total
FROM PRODUTO
WHERE data_compra
BETWEEN TO_DATE('01/01/2018','DD/MM/YYYY') AND TO_DATE('31/12/2019','DD/MM/YYYY');

-- 2. Qual é o nome da marca do produto com maior quantidade em estoque?

SELECT nome
FROM MARCA
WHERE identificador =
    (SELECT id_marca
    FROM PRODUTO
    WHERE quantidade =
        (SELECT MAX(quantidade)
        FROM PRODUTO));

-- 3. Crie uma view que lista todos os dados dos funcionários que recebem menos que a média dos salários dos funcionários.

CREATE VIEW funcionarios AS
    SELECT *
    FROM FUNCIONARIO
    WHERE salario <
        (SELECT AVG(f.salario)
        FROM FUNCIONARIO f);

-- 4. Liste o código de identificação e nome de todos os produtos agrupados pela sua categoria e ordenados pelo seu preço de compra.
SELECT codigo_identificacao, nome
FROM PRODUTO
GROUP BY id_categoria, preco_compra, codigo_identificacao, nome
ORDER BY id_categoria, preco_compra;

-- 5. Liste o CPF e nome de todos os clientes que residem na cidade ‘Campina Grande’ e compraram na filial de nome ‘Campina’.
SELECT c.cpf, c.nome
FROM CLIENTE c, ORDEM_COMPRA o, FILIAL f
WHERE c.cpf = o.cpf_cliente AND o.codigo_filial = f.codigo_identificacao AND f.nome = 'Campina';

-- 6.  Liste o CPF, nome e pontos CRM dos clientes por ordem decrescente do valor total comprado.
SELECT cpf, nome, pontos_crm
FROM(
    SELECT c.cpf, c.nome, c.pontos_crm, i.quantidade * (i.preco_produto - i.desconto) AS preco
    FROM CLIENTE c, ORDEM_COMPRA o, ITEM i
    WHERE c.cpf = o.cpf_cliente AND o.numero_nota_fiscal = i.num_nota_fiscal_ordem)
GROUP BY cpf, nome, pontos_crm
ORDER BY sum(preco) DESC;

-- 7. Liste todos os dados das solicitações agrupadas por filial e ordenadas de forma crescente pelo prazo para pagamento em dias.
SELECT identificador, data_solicitacao,data_prevista, data_entrega, valor_compra, prazo_pagamento, codigo_filial, cnpj_fornecedor
FROM(
    SELECT (prazo_pagamento - data_solicitacao) AS prazo, identificador, data_solicitacao,data_prevista, data_entrega, valor_compra, prazo_pagamento, codigo_filial, cnpj_fornecedor
    FROM SOLICITACAO)
ORDER BY codigo_filial, prazo;

-- 8. Liste a matrícula, nome e CPF dos funcionários que possuem mais do que 3 dependentes. Ordene-os pelo valor do salário, em ordem decrescente.
SELECT f.nome, f.cpf
FROM FUNCIONARIO f, DEPENDENTE d
WHERE f.matricula = d.matricula_funcionario
GROUP BY f.nome, f.cpf, f.salario
HAVING COUNT(*) > 3
ORDER BY f.salario DESC;