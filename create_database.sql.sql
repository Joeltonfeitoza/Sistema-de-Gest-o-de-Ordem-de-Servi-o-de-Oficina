CREATE TABLE Cliente (
    idCliente INT PRIMARY KEY,
    Nome VARCHAR(45),
    Endereco VARCHAR(45)
);

CREATE TABLE Veiculo (
    idVeiculo INT PRIMARY KEY,
    Marca VARCHAR(15),
    Ano DATE,
    Cor VARCHAR(15),
    Cliente_idCliente INT,
    FOREIGN KEY (Cliente_idCliente) REFERENCES Cliente(idCliente)
);

CREATE TABLE Ordem_de_Servico (
    idOrdem_de_Servico INT PRIMARY KEY,
    Numero INT,
    Data_Emissao DATE,
    Valor FLOAT,
    Status VARCHAR(45),
    Data_Conclusao DATE
);

CREATE TABLE Ordem_de_Servico_Cliente (
    Ordem_de_Servico_idOrdem_de_Servico INT,
    Cliente_idCliente INT,
    Cliente_Veiculo_idVeiculo INT,
    PRIMARY KEY (Ordem_de_Servico_idOrdem_de_Servico, Cliente_idCliente, Cliente_Veiculo_idVeiculo),
    FOREIGN KEY (Ordem_de_Servico_idOrdem_de_Servico) REFERENCES Ordem_de_Servico(idOrdem_de_Servico),
    FOREIGN KEY (Cliente_idCliente) REFERENCES Cliente(idCliente),
    FOREIGN KEY (Cliente_Veiculo_idVeiculo) REFERENCES Veiculo(idVeiculo)
);

CREATE TABLE Conserto (
    idConserto INT PRIMARY KEY
);

CREATE TABLE Conserto_Ordem_de_Servico (
    Conserto_idConserto INT,
    Ordem_de_Servico_idOrdem_de_Servico INT,
    PRIMARY KEY (Conserto_idConserto, Ordem_de_Servico_idOrdem_de_Servico),
    FOREIGN KEY (Conserto_idConserto) REFERENCES Conserto(idConserto),
    FOREIGN KEY (Ordem_de_Servico_idOrdem_de_Servico) REFERENCES Ordem_de_Servico(idOrdem_de_Servico)
);

CREATE TABLE Equipe_Conserto (
    idEquipe_Conserto INT PRIMARY KEY,
    Codigo INT,
    Nome VARCHAR(45),
    Endereco VARCHAR(45),
    Especialidade VARCHAR(45),
    Veiculo_idVeiculo INT,
    Cliente_idCliente INT,
    Cliente_Veiculo_idVeiculo INT,
    FOREIGN KEY (Veiculo_idVeiculo) REFERENCES Veiculo(idVeiculo),
    FOREIGN KEY (Cliente_idCliente) REFERENCES Cliente(idCliente),
    FOREIGN KEY (Cliente_Veiculo_idVeiculo) REFERENCES Veiculo(idVeiculo)
);

CREATE TABLE Tabela_de_Servicos_Conserto (
    idTabela_de_Servicos_Conserto INT PRIMARY KEY,
    Conserto_idConserto INT,
    Pecas_idPecas INT,
    FOREIGN KEY (Conserto_idConserto) REFERENCES Conserto(idConserto)
);

CREATE TABLE Revisao (
    idRevisao INT PRIMARY KEY
);

CREATE TABLE Revisao_Ordem_de_Servico (
    Revisao_idRevisao INT,
    Ordem_de_Servico_idOrdem_de_Servico INT,
    PRIMARY KEY (Revisao_idRevisao, Ordem_de_Servico_idOrdem_de_Servico),
    FOREIGN KEY (Revisao_idRevisao) REFERENCES Revisao(idRevisao),
    FOREIGN KEY (Ordem_de_Servico_idOrdem_de_Servico) REFERENCES Ordem_de_Servico(idOrdem_de_Servico)
);

CREATE TABLE Equipe_Revisao (
    idEquipe_Revisao INT PRIMARY KEY,
    Codigo INT,
    Nome VARCHAR(45),
    Endereco VARCHAR(45),
    Especialidade VARCHAR(45),
    Veiculo_idVeiculo INT,
    Cliente_idCliente INT,
    Cliente_Veiculo_idVeiculo INT,
    FOREIGN KEY (Veiculo_idVeiculo) REFERENCES Veiculo(idVeiculo),
    FOREIGN KEY (Cliente_idCliente) REFERENCES Cliente(idCliente),
    FOREIGN KEY (Cliente_Veiculo_idVeiculo) REFERENCES Veiculo(idVeiculo)
);

CREATE TABLE Tabela_de_Servicos_Revisao (
    idTabela_de_Servicos_Revisao INT PRIMARY KEY,
    Pecas_idPecas INT
);

CREATE TABLE Pecas (
    idPecas INT PRIMARY KEY,
    VW LONGTEXT,
    Ford LONGTEXT,
    Chevrolet LONGTEXT,
    Fiat LONGTEXT,
    Conserto_idConserto INT,
    Revisao_idRevisao INT,
    Revisao_Tabela_de_Servicos_Revisao_idTabela_de_Servicos_Revisao INT,
    FOREIGN KEY (Conserto_idConserto) REFERENCES Conserto(idConserto),
    FOREIGN KEY (Revisao_idRevisao) REFERENCES Revisao(idRevisao)
);
