-- 1. Qual o número de compras feitas entre 01/01/2018 e 31/12/2019 ?

SELECT COUNT(*) AS total FROM PRODUTO p WHERE p.data_compra BETWEEN TO_DATE('01/01/2018','DD/MM/YYYY') AND TO_DATE('31/12/2019','DD/MM/YYYY');

-- 2. Qual é o nome da marca do produto com maior quantidade em estoque?

SELECT nome FROM MARCA WHERE identificador = (SELECT id_marca FROM PRODUTO WHERE quantidade = (SELECT MAX(quantidade) FROM PRODUTO));

-- 3. Crie uma view que lista todos os dados dos funcionários que recebem menos que a média dos salários dos funcionários.

CREATE VIEW funcionarios AS
SELECT * FROM FUNCIONARIO WHERE salario < (SELECT AVG(f.salario) FROM FUNCIONARIO f);

-- 4. Liste o código de identificação e nome de todos os produtos agrupados pela sua categoria e ordenados pelo seu preço de compra.
SELECT p.codigo_identificacao, p.nome FROM PRODUTO p GROUP BY p.id_categoria ORDER BY p.preco_compra; /* ainda nao funciona */
