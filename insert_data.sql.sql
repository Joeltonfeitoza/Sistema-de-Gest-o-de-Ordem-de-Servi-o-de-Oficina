-- CLIENTES
INSERT INTO Cliente (idCliente, Nome, Endereco) VALUES 
(1, 'João Silva', 'Rua A, 123'),
(2, 'Maria Souza', 'Rua B, 456'),
(3, 'Carlos Pereira', 'Rua C, 789'),
(4, 'Ana Costa', 'Rua D, 321');

-- VEÍCULOS
INSERT INTO Veiculo (idVeiculo, Marca, Ano, Cor, Cliente_idCliente) VALUES 
(1, 'Ford', '2020-01-01', 'Prata', 1),
(2, 'Chevrolet', '2018-01-01', 'Preto', 2),
(3, 'Fiat', '2021-01-01', 'Branco', 1),
(4, 'Volkswagen', '2019-01-01', 'Azul', 3),
(5, 'Ford', '2022-01-01', 'Vermelho', 4);

-- ORDEM DE SERVIÇO
INSERT INTO Ordem_de_Servico (idOrdem_de_Servico, Numero, Data_Emissao, Valor, Status, Data_Conclusao) VALUES
(1, 1001, '2025-01-01', 1500.00, 'Concluído', '2025-01-10'),
(2, 1002, '2025-02-15', 750.00, 'Em andamento', NULL),
(3, 1003, '2025-03-01', 2200.00, 'Concluído', '2025-03-12'),
(4, 1004, '2025-04-10', 500.00, 'Cancelado', NULL),
(5, 1005, '2025-05-05', 1800.00, 'Concluído', '2025-05-15');

-- ORDEM DE SERVIÇO x CLIENTE
INSERT INTO Ordem_de_Servico_Cliente (Ordem_de_Servico_idOrdem_de_Servico, Cliente_idCliente, Cliente_Veiculo_idVeiculo) VALUES 
(1, 1, 1),
(2, 2, 2),
(3, 1, 3),
(4, 3, 4),
(5, 4, 5);

-- CONSERTOS
INSERT INTO Conserto (idConserto) VALUES 
(1),
(2),
(3),
(4),
(5);

-- CONSERTO x ORDEM DE SERVIÇO
INSERT INTO Conserto_Ordem_de_Servico (Conserto_idConserto, Ordem_de_Servico_idOrdem_de_Servico) VALUES 
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5);
