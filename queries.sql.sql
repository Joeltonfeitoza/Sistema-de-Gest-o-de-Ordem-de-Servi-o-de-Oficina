-- Quais são os nomes e endereços de todos os clientes cadastrados?
SELECT Nome, Endereco FROM Cliente;


-- Quais são os veículos da marca Ford cadastrados no sistema?
SELECT * FROM Veiculo WHERE Marca = 'Ford';


-- Quantos dias cada ordem de serviço levou para ser concluída?
SELECT 
    idOrdem_de_Servico,
    DATEDIFF(Data_Conclusao, Data_Emissao) AS Dias_Para_Conclusao
FROM Ordem_de_Servico;


-- Liste todas as ordens de serviço, da mais cara para a mais barata.
SELECT * FROM Ordem_de_Servico ORDER BY Valor DESC;



-- Quais clientes possuem mais de uma ordem de serviço registrada?
SELECT 
    Cliente_idCliente, 
    COUNT(*) AS Total_OS 
FROM Ordem_de_Servico_Cliente
GROUP BY Cliente_idCliente
HAVING COUNT(*) > 1;


-- Quais clientes possuem ordens de serviço abertas ou concluídas e quais são os veículos relacionados a essas ordens?
SELECT 
    c.Nome AS Cliente,
    v.Marca AS Veiculo,
    os.Numero AS Numero_OS,
    os.Status
FROM Ordem_de_Servico os
JOIN Ordem_de_Servico_Cliente osc ON os.idOrdem_de_Servico = osc.Ordem_de_Servico_idOrdem_de_Servico
JOIN Cliente c ON osc.Cliente_idCliente = c.idCliente
JOIN Veiculo v ON osc.Cliente_Veiculo_idVeiculo = v.idVeiculo;