--Ordem de leitura SQL
[Servidor].[Database].[Schema].[Tabela]

--Database
CREATE DATABASE AulasSQL

DROP DATABASE AulasSQL

USE AulasSQL

--Schemas
CREATE SCHEMA Teste

DROP SCHEMA Teste

--Table
CREATE TABLE tabela1 (id int)

CREATE TABLE Teste.tabela1 (id int)

DROP TABLE tabela1

DROP TABLE Teste.tabela1

--Search schemas
select * from sys.schemas