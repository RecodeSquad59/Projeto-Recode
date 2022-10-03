/* projetoDonate-tech-Logi-edit: */

CREATE TABLE doador (
    codDoador int AUTO_INCREMENT NOT NULL PRIMARY KEY,
    nomeDoador varChar(20) NOT NULL,
    telDoador Varchar(14) NOT NULL,
    cidadeDoador Varchar(30),
    cepDoador Varchar(8),
    enderecoDoador varchar(50),
    dataRetirada Date,
    comentarios varchar(200)
);

CREATE TABLE Beneficiarios (
    codBenef int AUTO_INCREMENT NOT NULL PRIMARY KEY,
    tipoBenef varchar(10),
    nomeBenef varchar(20) NOT NULL,
    telBenef Varchar(14) NOT NULL,
    cidadeBenef Varchar(30),
    cepBenef Varchar(8),
    enderecoBenef varchar(50),
    dataEntrega Date
);

CREATE TABLE doacao (
    codDoacao int AUTO_INCREMENT NOT NULL PRIMARY KEY,
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
    ON DELETE CASCADE;
 
ALTER TABLE repassa ADD CONSTRAINT FK_repassa_1
    FOREIGN KEY (fk_Beneficiarios_codBenef)
    REFERENCES Beneficiarios (codBenef)
    ON DELETE CASCADE;
 
ALTER TABLE repassa ADD CONSTRAINT FK_repassa_2
    FOREIGN KEY (fk_doacao_codDoacao)
    REFERENCES doacao (codDoacao)
    ON DELETE CASCADE;