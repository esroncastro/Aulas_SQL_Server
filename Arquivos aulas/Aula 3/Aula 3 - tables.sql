--Usando database
USE AulasSQL

--Criando uma tabela
CREATE TABLE Pessoa
(
	Id int identity primary key, 
	Nome varchar(20), 
	Idade int, 
	RG nvarchar(20), 
	DataCriacao datetime
);

CREATE TABLE Endereco
(
	Id int identity primary key,
	IdPessoa int foreign key references Pessoa(Id),
	Endereco nvarchar(MAX)
);


--Consultar a tabela
SELECT * FROM Pessoa;

SELECT * FROM Endereco;
--GO
SELECT Nome, RG FROM Pessoa;

--Excluir tabela
DROP TABLE Pessoa;

--Inserir um registro
INSERT INTO Pessoa (Id, Nome, Idade, RG, DataCriacao) VALUES (1, 'Esron', 22, '3335552221X', GETDATE());
INSERT INTO Pessoa (Nome, Idade, RG, DataCriacao) VALUES ('Diego', 22, '3335552221X', GETDATE());

INSERT INTO Endereco(IdPessoa, Endereco) VALUES (2, 'Rua Olimpia');

--Deletar todos os registros da tabela
TRUNCATE TABLE Pessoa;

--Alterar tabela
ALTER TABLE Pessoa ADD Pais nvarchar(20);





