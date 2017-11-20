CREATE TABLE perfil(
	perf_id  SERIAL,
    perf_desc VARCHAR(200) NOT NULL,
    CONSTRAINT PK_perfil PRIMARY KEY(perf_id),
    CONSTRAINT UNQ_perfil_desc UNIQUE(perf_desc)
);

CREATE TABLE usuario(
	usr_id SERIAL,
    usr_perf_id BIGINT NOT NULL,
    usr_nome VARCHAR(200) NOT NULL,
    usr_login VARCHAR(200) NOT NULL,
    usr_pwd VARCHAR(200) NOT NULL,
    CONSTRAINT PK_usuario PRIMARY KEY(usr_id),
    CONSTRAINT FK_usuario_perfil FOREIGN KEY(usr_perf_id) REFERENCES perfil(perf_id),
    CONSTRAINT UNQ_usuario_nome UNIQUE(usr_nome)
);



CREATE TABLE unidade(
    unid_id SERIAL,
    unid_desc VARCHAR(200) NOT NULL,
    unid_sig VARCHAR(3) NOT NULL,
    CONSTRAINT PK_unidade PRIMARY KEY(unid_id),
    CONSTRAINT UNQ_unidade_desc UNIQUE(unid_desc),
    CONSTRAINT UNQ_sig UNIQUE(unid_sig)
);



CREATE TABLE produto(
   prod_id SERIAL,
   prod_cod_intr VARCHAR(500) DEFAULT NULL,
   prod_unid_id INT NOT NULL,
   prod_desc VARCHAR(200) NOT NULL,
   prod_sit VARCHAR(200) NOT NULL,
   prod_peso_kg NUMERIC(15,4) DEFAULT NULL,
   prod_comp_mm NUMERIC(15,4) DEFAULT NULL,
   prod_larg_mm NUMERIC(15,4) DEFAULT NULL,
   prod_alt_mm NUMERIC(15,4) DEFAULT NULL,
   prod_vlr_unit NUMERIC(15,2) NOT NULL,
   prod_lead_time INT NOT NULL,
   prod_qntd_estq NUMERIC(15,4) NOT NULL,
   prod_qntd_min NUMERIC(15,4) NOT NULL,
   prod_tipo VARCHAR(200) NOT NULL,
  CONSTRAINT PK_produto PRIMARY KEY(prod_id),
  CONSTRAINT UNQ_produto_codigo_interno UNIQUE(prod_cod_intr),
  CONSTRAINT FK_produto_unidade FOREIGN KEY(prod_unid_id) REFERENCES unidade(unid_id),
  CONSTRAINT CHK_produto_situacao CHECK(prod_sit IN('ATIVO','INATIVO','FORA_DE_LINHA'))
);



CREATE TABLE estrutura_produto(
	prod_id INT NOT NULL,
	prod_sub_id INT NOT NULL,
	prod_sub_qntd NUMERIC(15,4) NOT NULL,
	CONSTRAINT PK_estrutura_produto PRIMARY KEY(prod_id,prod_sub_id),
	CONSTRAINT FK_estrutura_produto_produto FOREIGN KEY(prod_id)REFERENCES produto(prod_id),
	CONSTRAINT FK_estrutura_produto_subproduto FOREIGN KEY(prod_sub_id)REFERENCES produto(prod_id)
);



INSERT INTO perfil(perf_desc)VALUES('PCP');
INSERT INTO perfil(perf_desc)VALUES('PROGRAMADOR PCP');
INSERT INTO perfil(perf_desc)VALUES('GERENTE PCP');
INSERT INTO perfil(perf_desc)VALUES('PRODUCAO');
INSERT INTO perfil(perf_desc)VALUES('ALMOXARIFADO');
INSERT INTO perfil(perf_desc)VALUES('ENGENHARIA');


INSERT INTO unidade(unid_desc,unid_sig)VALUES('UNIDADE','UN');
INSERT INTO unidade(unid_desc,unid_sig)VALUES('CAIXA','CX');
INSERT INTO unidade(unid_desc,unid_sig)VALUES('MILIMETRO','MM');

INSERT INTO usuario(usr_perf_id,usr_nome,usr_login,usr_pwd)VALUES(1,'Gabriel Martins','admin',12345);


DROP TABLE estrutura_produto;
DROP TABLE produto;
DROP TABLE unidade;

TRUNCATE TABLE usuario CASCADE;
TRUNCATE TABLE perfil CASCADE;
TRUNCATE TABLE estrutura_produto CASCADE;
TRUNCATE TABLE produto CASCADE;
TRUNCATE TABLE unidade CASCADE;

ALTER SEQUENCE perfil_perf_id_seq RESTART WITH 1;
ALTER SEQUENCE usuario_usr_id_seq RESTART WITH 1;
ALTER SEQUENCE unidade_unid_id_seq RESTART WITH 1;
ALTER SEQUENCE produto_prod_id_seq RESTART WITH 1;


SELECT * FROM perfil;
SELECT * FROM usuario;
SELECT * FROM unidade;
SELECT * FROM produto;
SELECT * FROM estrutura_produto;

SELECT p.*,u.* from produto  AS p 
inner join unidade AS u on u.unid_id = p.prod_unid_id;

/*
CREATE TABLE Produto (
    id_prod int PRIMARY KEY,
    qntd_min numeric(15,2),
    qntd_estq numeric(15,2),
    vlr_unit blob,
    desc varchar(500),
    qntd_emp numeric(15,2),
    tipo varchar(200),
    leadtime numeric(15,2),
    FK_UnidadeMedida_id_unid int
);

CREATE TABLE Operacao (
    id_oper int PRIMARY KEY,
    desc varchar(500),
    instr varchar(500),
    FK_CentroTrabalho_id_ct int
);

CREATE TABLE OrdemProducao (
    id_ord int PRIMARY KEY,
    dt_hr_emi datetime,
    dt_hr_rlz datetime,
    status varchar(200),
    prazo date,
    FK_OrdemProducao_id_ord int
);

CREATE TABLE OrdemDetalhe_Contem (
    qntd_rlz numeric(15,2),
    qntd_prev numeric(15,2),
    seq int,
    obs varchar(500),
    FK_Produto_id_prod int,
    FK_OrdemProducao_id_ord int
);

CREATE TABLE Apontamento (
    id_apont int PRIMARY KEY,
    dt_hr_ini datetime,
    qntd varchar(200),
    dt_hr_fim datetime,
    tipo varchar(200),
    FK_Programacao_id_prog int
);

CREATE TABLE CentroTrabalho (
    desc varchar(500),
    id_ct int PRIMARY KEY
);

CREATE TABLE Requisicao (
    dt_hr_emi datetime,
    dt_prev date,
    dt_hr_rlz datetime,
    status varchar(200)
);

CREATE TABLE RequisicaoDetalhe_Contem (
    seq int,
    qntd_prev numeric(15,2),
    qntd_rlz numeric(15,2),
    FK_Produto_id_prod int
);

CREATE TABLE Recebimento (
    id_receb int PRIMARY KEY,
    dt_hr datetime
);

CREATE TABLE UnidadeMedida (
    id_unid int PRIMARY KEY,
    desc varchar(500),
    sigla varchar(500)
);

CREATE TABLE Recurso (
    id_rec int PRIMARY KEY,
    desc varchar(200),
    vlr_hr numeric(15,2),
    FK_CentroTrabalho_id_ct int
);

CREATE TABLE Lote (
    id_lote int PRIMARY KEY,
    dt_emi datetime,
    prazo date,
    qnt_total numeric(15,2),
    FK_Roteiro_id_rot int
);

CREATE TABLE Retirada (
    id_retr int PRIMARY KEY,
    dt_hr datetime
);

CREATE TABLE Programacao (
    dt_ini_prev datetime,
    id_prog int PRIMARY KEY,
    dt_fim_prev datetime,
    total_hr_prev time,
    FK_Operacao_id_oper int,
    FK_Recurso_id_rec int
);

CREATE TABLE Roteiro (
    id_rot int PRIMARY KEY,
    tmp_total time,
    FK_Produto_id_prod int
);

CREATE TABLE Composicao (
    FK_Produto_id_prod int,
    FK_Produto_id_prod_Composicao int,
    qntd numeric(15,2)
);

CREATE TABLE Pertence (
    FK_Recebimento_id_receb int,
    qntd numeric(15,2)
);

CREATE TABLE Pertence (
    FK_OrdemProducao_id_ord int,
    FK_Lote_id_lote int,
    qntd numeric(15,2)
);

CREATE TABLE Utiliza (
    FK_Operacao_id_oper int,
    FK_Roteiro_id_rot int,
    seq int,
    tmp_setup time,
    tmp_limp time,
    tmp_prod time
);

CREATE TABLE Possui (
    FK_Lote_id_lote int,
    FK_Programacao_id_prog int
);

CREATE TABLE Pertence (
    FK_Lote_id_lote int,
    FK_Retirada_id_retr int,
    qntd numeric(15,2)
);
 
ALTER TABLE Produto ADD CONSTRAINT FK_Produto_1
    FOREIGN KEY (FK_UnidadeMedida_id_unid)
    REFERENCES UnidadeMedida (id_unid);
 
ALTER TABLE Operacao ADD CONSTRAINT FK_Operacao_1
    FOREIGN KEY (FK_CentroTrabalho_id_ct)
    REFERENCES CentroTrabalho (id_ct);
 
ALTER TABLE OrdemProducao ADD CONSTRAINT FK_OrdemProducao_1
    FOREIGN KEY (FK_OrdemProducao_id_ord)
    REFERENCES OrdemProducao (id_ord);
 
ALTER TABLE OrdemDetalhe_Contem ADD CONSTRAINT FK_OrdemDetalhe_Contem_0
    FOREIGN KEY (FK_Produto_id_prod)
    REFERENCES Produto (id_prod);
 
ALTER TABLE OrdemDetalhe_Contem ADD CONSTRAINT FK_OrdemDetalhe_Contem_1
    FOREIGN KEY (FK_OrdemProducao_id_ord)
    REFERENCES OrdemProducao (id_ord);
 
ALTER TABLE Apontamento ADD CONSTRAINT FK_Apontamento_1
    FOREIGN KEY (FK_Programacao_id_prog)
    REFERENCES Programacao (id_prog);
 
ALTER TABLE RequisicaoDetalhe_Contem ADD CONSTRAINT FK_RequisicaoDetalhe_Contem_0
    FOREIGN KEY (FK_Produto_id_prod)
    REFERENCES Produto (id_prod);
 
ALTER TABLE Recurso ADD CONSTRAINT FK_Recurso_1
    FOREIGN KEY (FK_CentroTrabalho_id_ct)
    REFERENCES CentroTrabalho (id_ct);
 
ALTER TABLE Lote ADD CONSTRAINT FK_Lote_1
    FOREIGN KEY (FK_Roteiro_id_rot)
    REFERENCES Roteiro (id_rot);
 
ALTER TABLE Programacao ADD CONSTRAINT FK_Programacao_1
    FOREIGN KEY (FK_Operacao_id_oper)
    REFERENCES Operacao (id_oper);
 
ALTER TABLE Programacao ADD CONSTRAINT FK_Programacao_2
    FOREIGN KEY (FK_Recurso_id_rec)
    REFERENCES Recurso (id_rec);
 
ALTER TABLE Roteiro ADD CONSTRAINT FK_Roteiro_1
    FOREIGN KEY (FK_Produto_id_prod)
    REFERENCES Produto (id_prod);
 
ALTER TABLE Composicao ADD CONSTRAINT FK_Composicao_0
    FOREIGN KEY (FK_Produto_id_prod)
    REFERENCES Produto (id_prod);
 
ALTER TABLE Composicao ADD CONSTRAINT FK_Composicao_1
    FOREIGN KEY (FK_Produto_id_prod_Composicao)
    REFERENCES Produto (id_prod);
 
ALTER TABLE Pertence ADD CONSTRAINT FK_Pertence_0
    FOREIGN KEY (FK_Recebimento_id_receb)
    REFERENCES Recebimento (id_receb);
 
ALTER TABLE Pertence ADD CONSTRAINT FK_Pertence_0
    FOREIGN KEY (FK_OrdemProducao_id_ord)
    REFERENCES OrdemProducao (id_ord);
 
ALTER TABLE Pertence ADD CONSTRAINT FK_Pertence_1
    FOREIGN KEY (FK_Lote_id_lote)
    REFERENCES Lote (id_lote);
 
ALTER TABLE Utiliza ADD CONSTRAINT FK_Utiliza_0
    FOREIGN KEY (FK_Operacao_id_oper)
    REFERENCES Operacao (id_oper);
 
ALTER TABLE Utiliza ADD CONSTRAINT FK_Utiliza_1
    FOREIGN KEY (FK_Roteiro_id_rot)
    REFERENCES Roteiro (id_rot);
 
ALTER TABLE Possui ADD CONSTRAINT FK_Possui_0
    FOREIGN KEY (FK_Lote_id_lote)
    REFERENCES Lote (id_lote);
 
ALTER TABLE Possui ADD CONSTRAINT FK_Possui_1
    FOREIGN KEY (FK_Programacao_id_prog)
    REFERENCES Programacao (id_prog);
 
ALTER TABLE Pertence ADD CONSTRAINT FK_Pertence_0
    FOREIGN KEY (FK_Lote_id_lote)
    REFERENCES Lote (id_lote);
 
ALTER TABLE Pertence ADD CONSTRAINT FK_Pertence_1
    FOREIGN KEY (FK_Retirada_id_retr)
    REFERENCES Retirada (id_retr);*/