/* projetoDonate-tech-Logi-edit: */

CREATE TABLE doador (
    codDoador int PRIMARY KEY,
    nomeDoador varChar(20),
    telDoador Varchar(14),
    Complemento Varchar(40),
    Bairro Varchar(30),
    Cidade Varchar(30),
    Cep Varchar(8),
    e_mail Varchar(50),
    dataRetirada date
);

CREATE TABLE Beneficiarios (
    codBenef int PRIMARY KEY,
    nomeBenef varchar(20),
    Complemento Varchar(40),
    Bairro Varchar(30),
    Cidade Varchar(30),
    Cep Varchar(8),
    tipoBenef varchar(10),
    dataEntrega date,
    telBenef Varchar(14)
);

CREATE TABLE doacao (
    codDoacao int PRIMARY KEY,
    nomeDoacao varchar(20),
    fk_doador_codDoador int
);

CREATE TABLE repassa (
    fk_Beneficiarios_codBenef int,
    fk_doacao_codDoacao int
);
 
ALTER TABLE doacao ADD CONSTRAINT FK_doacao_2
    FOREIGN KEY (fk_doador_codDoador)
    REFERENCES doador (codDoador)
    ON DELETE RESTRICT;
 
ALTER TABLE repassa ADD CONSTRAINT FK_repassa_1
    FOREIGN KEY (fk_Beneficiarios_codBenef)
    REFERENCES Beneficiarios (codBenef)
    ON DELETE RESTRICT;
 
ALTER TABLE repassa ADD CONSTRAINT FK_repassa_2
    FOREIGN KEY (fk_doacao_codDoacao)
    REFERENCES doacao (codDoacao)
    ON DELETE RESTRICT;