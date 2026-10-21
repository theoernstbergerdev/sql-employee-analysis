CREATE DATABASE empresa;
USE empresa;

CREATE TABLE funcionarios (
    id INT PRIMARY KEY,
    nome VARCHAR(50),
    idade INT,
    salario DECIMAL(10,2),
    departamento VARCHAR(50),
    telefone VARCHAR(20)
);

INSERT INTO funcionarios 
(id, nome, idade, salario, departamento, telefone)
VALUES
(1, 'João', 25, 2500.00, 'TI', '88999990001'),
(2, 'Maria', 30, 3200.00, 'RH', '88999990002'),
(3, 'Pedro', 28, 2800.00, 'TI', NULL),
(4, 'Ana', 35, 4500.00, 'Financeiro', '88999990004'),
(5, 'Carlos', 22, 2100.00, 'TI', NULL),
(6, 'Julia', 29, 3000.00, 'RH', '88999990006'),
(7, 'Lucas', 40, 5200.00, 'Financeiro', NULL),
(8, 'Beatriz', 26, 2700.00, 'TI', '88999990008'),
(9, 'Rafael', 31, 3500.00, 'RH', NULL),
(10, 'Larissa', 24, 2300.00, 'TI', '88999990010');


SELECT 
departamento AS Departamento,
COUNT(*) AS Quantidade_Funcionarios,
COUNT(telefone) AS Funcionarios_Telefone,
SUM(salario) AS Salario_Total,
AVG(salario) AS Media_Salarial
FROM funcionarios WHERE salario > 2500 
GROUP BY departamento HAVING COUNT(*) >= 2
ORDER BY Media_Salarial DESC;

SELECT 
departamento AS Departamentos,
COUNT(*) AS Quantidade_Funcionarios,
COUNT(telefone) AS Telefones_Funcionarios,
SUM(salario) AS Salario_Total,
AVG(salario) AS Media_Salarial,
MIN(salario) AS Menor_Salario,
Max(salario) AS Maior_Salario
FROM funcionarios WHERE idade >= 25
GROUP BY Departamentos HAVING COUNT(*) >= 2
AND Media_Salarial > 3000 ORDER BY Media_Salarial DESC;

SELECT COUNT(DISTINCT departamento) AS Total_Departamentos
FROM funcionarios WHERE idade >= 25;
