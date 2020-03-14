CREATE DATABASE PREFEITURA_MC;
USE PREFEITURA_MC;

CREATE TABLE SERVIDOR(
	ID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	RGF INT NOT NULL,
	NOME VARCHAR(100),
	CARGO VARCHAR(100),
	REGIME VARCHAR(50),
	DT_INCLUSAO DATETIME
);

CREATE TABLE LANCAMENTO(
	ID INT NOT NULL PRIMARY KEY,
	TITULO VARCHAR(15)
);

CREATE TABLE SALARIO(
	ID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	ID_SERVIDOR INT NOT NULL,
	ID_LANCAMENTO INT NOT NULL,
	REFERENCIA DATE,
	DESCRICAO VARCHAR(40),
	VALOR DOUBLE,
	DT_INCLUSAO DATETIME,
    FOREIGN KEY(ID_SERVIDOR) REFERENCES SERVIDOR(ID),
    FOREIGN KEY(ID_LANCAMENTO) REFERENCES LANCAMENTO(ID)
);

INSERT INTO LANCAMENTO(ID, TITULO) VALUES (1, 'RENDIMENTO'),(2, 'DESCONTO');
