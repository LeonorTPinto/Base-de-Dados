--Ficha 5 Exer1:: Biblioteca

USE master
GO

CREATE DATABASE Biblioteca
GO -- como se fosse um enter

USE Biblioteca 
GO
-- criação tabela
CREATE TABLE Aluno(
	Numero_mecanografico       Integer       NOT NULL,
	Nome		           VARCHAR(50)	 NOT NULL,
	End_morada	           VARCHAR(50)	 NOT NULL,
	End_codigoPostal	   CHAR(8)	 NOT NULL,
	End_Localidade		   VARCHAR (50)	 NOT NULL,
	Garantia		   MONEY	 NOT NULL DEFAULT 0,
	CHECK (Numero_mecanografico>0),
	CHECK (End_codigoPostal LIKE '[0-9][0-9][0-9][0-9]-[0-9][0-9][0-9][0-9]'),
	CHECK (Garantia >=0),
	PRIMARY KEY (Numero_mecanografico)
	)

CREATE TABLE Livro( 
	Numero_Livro  INTEGER       NOT NULL IDENTITY(1,1),
	Titulo        VARCHAR(50)   NOT NULL,
	Autor         VARCHAR(50)   NOT NULL,
	Editor        VARCHAR(50)   NOT NULL,
	Data_compra   SMALLDATETIME NOT NULL DEFAULT GETDATE(),
	Estado        BIT           NOT NULL DEFAULT 0,
	---- Estado pode ser: requesitado('1') ou não requesitado('0')
	PRIMARY KEY(Numero_Livro)
	)
