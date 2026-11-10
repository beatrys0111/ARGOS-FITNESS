-- =============================================================================
-- SISTEMA DE GESTÃO DE ACADEMIA
-- Script DDL de Criação do Banco de Dados Relacional (MySQL 8.0+)
-- Mecanismo de Armazenamento: InnoDB
-- Codificação: utf8mb4 (Collation: utf8mb4_0900_ai_ci)
-- 
-- Observação sobre Tipos de Dados:
-- Conforme especificado, todos os campos numéricos fracionários que constavam
-- como FLOAT no modelo lógico foram convertidos para DECIMAL(M, D) no script físico.
-- Isso garante precisão exata para valores monetários e medidas antropométricas/cargas,
-- evitando erros de arredondamento inerentes à representação binária de ponto flutuante.
-- =============================================================================

-- -----------------------------------------------------------------------------
-- 1. CRIAÇÃO E SELEÇÃO DO BANCO DE DADOS
-- -----------------------------------------------------------------------------
CREATE DATABASE IF NOT EXISTS db_academia
    CHARACTER SET utf8mb4
    COLLATE utf8mb4_0900_ai_ci;

USE db_academia;

-- Desativa temporariamente a verificação de chaves estrangeiras para permitir recriação limpa
SET FOREIGN_KEY_CHECKS = 0;

-- Remoção de tabelas na ordem inversa das dependências (caso já existam)
DROP TABLE IF EXISTS CONTAS_A_PAGAR;
DROP TABLE IF EXISTS MANUTENCAO;
DROP TABLE IF EXISTS EQUIPAMENTO;
DROP TABLE IF EXISTS FORNECEDOR;
DROP TABLE IF EXISTS AVALIACAO_FISICA;
DROP TABLE IF EXISTS TREINO_EXERCICIO;
DROP TABLE IF EXISTS EXERCICIO;
DROP TABLE IF EXISTS TREINO;
DROP TABLE IF EXISTS ACESSO;
DROP TABLE IF EXISTS PAGAMENTO;
DROP TABLE IF EXISTS MATRICULA;
DROP TABLE IF EXISTS PLANO;
DROP TABLE IF EXISTS ALUNO;
DROP TABLE IF EXISTS INSTRUTOR;
DROP TABLE IF EXISTS TELEFONE;
DROP TABLE IF EXISTS PESSOA;

-- Reativa a verificação de integridade referencial
SET FOREIGN_KEY_CHECKS = 1;


-- =============================================================================
-- NÚCLEO 1: PESSOAS E PERFIS (CADASTRO-BASE E ESPECIALIZAÇÕES)
-- =============================================================================

-- -----------------------------------------------------------------------------
-- Tabela: PESSOA
-- Finalidade: Cadastro-base para todas as pessoas do sistema (generalização).
-- Evita duplicação de dados cadastrais como nome, CPF e e-mail.
-- Alunos e Instrutores herdam os dados desta entidade.
-- -----------------------------------------------------------------------------
CREATE TABLE PESSOA (
    ID_PESSOA   INT          NOT NULL AUTO_INCREMENT, -- Identificador único da pessoa (Chave Primária)
    NM_PESSOA   VARCHAR(120) NOT NULL,                -- Nome completo da pessoa
    CD_CPF      VARCHAR(14)  NOT NULL,                -- CPF com formatação ou numérico (único por pessoa)
    NM_EMAIL    VARCHAR(120) NOT NULL,                -- E-mail de contato principal

    CONSTRAINT pk_pessoa PRIMARY KEY (ID_PESSOA),
    CONSTRAINT uk_pessoa_cpf UNIQUE KEY (CD_CPF)      -- Impede cadastro duplicado do mesmo CPF
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Índice para agilizar buscas frequentes por nome de pessoas
CREATE INDEX idx_pessoa_nome ON PESSOA (NM_PESSOA);


-- -----------------------------------------------------------------------------
-- Tabela: TELEFONE
-- Finalidade: Armazena múltiplos números de contato de uma pessoa (relação 1:N).
-- -----------------------------------------------------------------------------
CREATE TABLE TELEFONE (
    ID_TELEFONE INT         NOT NULL AUTO_INCREMENT, -- Identificador único do telefone (Chave Primária)
    ID_PESSOA   INT         NOT NULL,                -- Chave estrangeira referenciando a tabela PESSOA
    NR_TELEFONE VARCHAR(20) NOT NULL,                -- Número de telefone com DDD (ex: (11) 99999-9999)
    TP_TELEFONE VARCHAR(30) NOT NULL,                -- Classificação: 'celular', 'residencial', 'comercial'

    CONSTRAINT pk_telefone PRIMARY KEY (ID_TELEFONE),
    CONSTRAINT fk_telefone_pessoa FOREIGN KEY (ID_PESSOA)
        REFERENCES PESSOA (ID_PESSOA)
        ON UPDATE CASCADE
        ON DELETE CASCADE                            -- Se a pessoa for excluída, remove seus telefones
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Índice na FK para otimizar junções e buscas por pessoa
CREATE INDEX idx_telefone_pessoa ON TELEFONE (ID_PESSOA);


-- -----------------------------------------------------------------------------
-- Tabela: INSTRUTOR
-- Finalidade: Especialização de PESSOA para profissionais de educação física.
-- Utiliza a mesma chave primária da pessoa (relação 1:1 com PESSOA).
-- -----------------------------------------------------------------------------
CREATE TABLE INSTRUTOR (
    ID_PESSOA        INT          NOT NULL, -- PK e FK compartilhada com PESSOA
    CD_CREF          VARCHAR(30)  NOT NULL, -- Registro profissional no Conselho Regional de Educação Física
    DS_ESPECIALIDADE VARCHAR(120) NULL,     -- Área de atuação/foco (ex: Musculação, Pilates, Funcional)
    DT_ADMISSAO      DATE         NOT NULL, -- Data de início das atividades na academia

    CONSTRAINT pk_instrutor PRIMARY KEY (ID_PESSOA),
    CONSTRAINT fk_instrutor_pessoa FOREIGN KEY (ID_PESSOA)
        REFERENCES PESSOA (ID_PESSOA)
        ON UPDATE CASCADE
        ON DELETE RESTRICT,                 -- Não permite apagar pessoa se houver registro profissional ativo
    CONSTRAINT uk_instrutor_cref UNIQUE KEY (CD_CREF) -- CREF deve ser único no sistema
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


-- -----------------------------------------------------------------------------
-- Tabela: ALUNO
-- Finalidade: Especialização de PESSOA para clientes/alunos da academia.
-- Utiliza a mesma chave primária da pessoa (relação 1:1 com PESSOA).
-- Guarda dados físicos básicos e objetivos informados na matrícula.
-- * Observação: VR_ALTURA e VR_PESO eram FLOAT no modelo lógico e foram 
--   convertidos para DECIMAL(M, D) garantindo precisão numérica.
-- -----------------------------------------------------------------------------
CREATE TABLE ALUNO (
    ID_PESSOA   INT           NOT NULL, -- PK e FK compartilhada com PESSOA
    DS_OBJETIVO VARCHAR(255)  NULL,     -- Objetivo declarado pelo aluno (ex: hipertrofia, emagrecimento)
    VR_ALTURA   DECIMAL(5, 2) NULL,     -- Altura atual em metros (ex: 1.75). Modelo Lógico: FLOAT -> DECIMAL
    VR_PESO     DECIMAL(6, 2) NULL,     -- Peso atual em kg (ex: 78.50). Modelo Lógico: FLOAT -> DECIMAL

    CONSTRAINT pk_aluno PRIMARY KEY (ID_PESSOA),
    CONSTRAINT fk_aluno_pessoa FOREIGN KEY (ID_PESSOA)
        REFERENCES PESSOA (ID_PESSOA)
        ON UPDATE CASCADE
        ON DELETE RESTRICT                  -- Protege o histórico de dados do aluno contra exclusão acidental
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


-- =============================================================================
-- NÚCLEO 2: GESTÃO COMERCIAL E ACESSO (PLANOS, MATRÍCULAS E CATRACA)
-- =============================================================================

-- -----------------------------------------------------------------------------
-- Tabela: PLANO
-- Finalidade: Cadastro de planos e mensalidades disponibilizados pela academia.
-- * Observação: VR_VALOR era FLOAT no modelo lógico e foi convertido para 
--   DECIMAL(10, 2) para valores monetários exatos (evita erros em centavos).
-- -----------------------------------------------------------------------------
CREATE TABLE PLANO (
    ID_PLANO          INT            NOT NULL AUTO_INCREMENT, -- Identificador único do plano (Chave Primária)
    NM_PLANO          VARCHAR(120)   NOT NULL,                -- Nome comercial (ex: Plano Anual Gold, Mensal Livre)
    VR_VALOR          DECIMAL(10, 2) NOT NULL,                -- Valor da mensalidade/plano em R$ (FLOAT -> DECIMAL)
    QT_DURACAO_MESES  INT            NOT NULL,                -- Tempo de vigência contratual do plano em meses

    CONSTRAINT pk_plano PRIMARY KEY (ID_PLANO)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


-- -----------------------------------------------------------------------------
-- Tabela: MATRICULA
-- Finalidade: Registro contratual que vincula um aluno a um plano por período.
-- Tabela-mãe de PAGAMENTO e ACESSO.
-- -----------------------------------------------------------------------------
CREATE TABLE MATRICULA (
    ID_MATRICULA INT         NOT NULL AUTO_INCREMENT, -- Identificador único da matrícula (Chave Primária)
    ID_ALUNO     INT         NOT NULL,                -- Referência ao aluno contratante (ALUNO -> PESSOA)
    ID_PLANO     INT         NOT NULL,                -- Referência ao plano contratado
    DT_INICIO    DATE        NOT NULL,                -- Data de início da vigência do contrato
    DT_FIM       DATE        NULL,                    -- Data de término previsto ou cancelamento
    TP_STATUS    VARCHAR(30) NOT NULL,                -- Situação da matrícula: 'ativa', 'trancada', 'encerrada'

    CONSTRAINT pk_matricula PRIMARY KEY (ID_MATRICULA),
    CONSTRAINT fk_matricula_aluno FOREIGN KEY (ID_ALUNO)
        REFERENCES ALUNO (ID_PESSOA)
        ON UPDATE CASCADE
        ON DELETE RESTRICT,
    CONSTRAINT fk_matricula_plano FOREIGN KEY (ID_PLANO)
        REFERENCES PLANO (ID_PLANO)
        ON UPDATE CASCADE
        ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Índices nas chaves estrangeiras para acelerar consultas de matrículas por aluno ou por plano
CREATE INDEX idx_matricula_aluno ON MATRICULA (ID_ALUNO);
CREATE INDEX idx_matricula_plano ON MATRICULA (ID_PLANO);


-- -----------------------------------------------------------------------------
-- Tabela: PAGAMENTO
-- Finalidade: Registro financeiro das parcelas e cobranças de cada matrícula.
-- * Observação: VR_VALOR era FLOAT no modelo lógico e foi convertido para 
--   DECIMAL(10, 2) para integridade contábil.
-- -----------------------------------------------------------------------------
CREATE TABLE PAGAMENTO (
    ID_PAGAMENTO         INT            NOT NULL AUTO_INCREMENT, -- Identificador único do pagamento (Chave Primária)
    ID_MATRICULA         INT            NOT NULL,                -- Referência à matrícula geradora do pagamento
    VR_VALOR             DECIMAL(10, 2) NOT NULL,                -- Valor cobrado na fatura (FLOAT -> DECIMAL)
    DT_VENCIMENTO        DATE           NOT NULL,                -- Data de vencimento do título
    TP_STATUS_PAGAMENTO  VARCHAR(30)    NOT NULL,                -- Situação: 'pendente', 'pago', 'atrasado', 'cancelado'

    CONSTRAINT pk_pagamento PRIMARY KEY (ID_PAGAMENTO),
    CONSTRAINT fk_pagamento_matricula FOREIGN KEY (ID_MATRICULA)
        REFERENCES MATRICULA (ID_MATRICULA)
        ON UPDATE CASCADE
        ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Índices para buscas financeiras por matrícula e relatórios de fluxo por data/status
CREATE INDEX idx_pagamento_matricula ON PAGAMENTO (ID_MATRICULA);
CREATE INDEX idx_pagamento_venc_status ON PAGAMENTO (DT_VENCIMENTO, TP_STATUS_PAGAMENTO);


-- -----------------------------------------------------------------------------
-- Tabela: ACESSO
-- Finalidade: Registro de passagens pela catraca/leitor biométrico da academia,
-- validando a entrada do aluno vinculada a uma matrícula regular.
-- -----------------------------------------------------------------------------
CREATE TABLE ACESSO (
    ID_ACESSO        INT      NOT NULL AUTO_INCREMENT, -- Identificador único do acesso (Chave Primária)
    ID_MATRICULA     INT      NOT NULL,                -- Matrícula utilizada para liberação do acesso
    DT_HORA_ENTRADA  DATETIME NOT NULL,                -- Data e hora exata do registro de passagem

    CONSTRAINT pk_acesso PRIMARY KEY (ID_ACESSO),
    CONSTRAINT fk_acesso_matricula FOREIGN KEY (ID_MATRICULA)
        REFERENCES MATRICULA (ID_MATRICULA)
        ON UPDATE CASCADE
        ON DELETE CASCADE                             -- Exclusão de matrícula remove histórico de acessos
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Índice composto para consultas de frequência de alunos por período
CREATE INDEX idx_acesso_matricula_data ON ACESSO (ID_MATRICULA, DT_HORA_ENTRADA);


-- =============================================================================
-- NÚCLEO 3: PRESCRIÇÃO DE TREINAMENTO E AVALIAÇÃO FÍSICA
-- =============================================================================

-- -----------------------------------------------------------------------------
-- Tabela: EXERCICIO
-- Finalidade: Catálogo mestre com os tipos de exercícios disponíveis na academia.
-- -----------------------------------------------------------------------------
CREATE TABLE EXERCICIO (
    ID_EXERCICIO       INT          NOT NULL AUTO_INCREMENT, -- Identificador único do exercício (Chave Primária)
    NM_EXERCICIO       VARCHAR(120) NOT NULL,                -- Nome do exercício (ex: Supino Reto, Agachamento Livre)
    TP_GRUPO_MUSCULAR  VARCHAR(80)  NOT NULL,                -- Músculo-alvo principal (ex: Peitoral, Quadríceps)
    DS_EXERCICIO       VARCHAR(255) NULL,                    -- Instruções técnicas de execução e postura

    CONSTRAINT pk_exercicio PRIMARY KEY (ID_EXERCICIO)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Índice para busca rápida de exercícios por grupo muscular e nome
CREATE INDEX idx_exercicio_grupo_nome ON EXERCICIO (TP_GRUPO_MUSCULAR, NM_EXERCICIO);


-- -----------------------------------------------------------------------------
-- Tabela: TREINO
-- Finalidade: Ficha ou programa de treino montado por um instrutor para um aluno.
-- -----------------------------------------------------------------------------
CREATE TABLE TREINO (
    ID_TREINO    INT          NOT NULL AUTO_INCREMENT, -- Identificador único do treino (Chave Primária)
    ID_ALUNO     INT          NOT NULL,                -- Aluno ao qual o treino se destina
    ID_INSTRUTOR INT          NOT NULL,                -- Instrutor responsável pela prescrição
    NM_TREINO    VARCHAR(120) NOT NULL,                -- Identificação da ficha (ex: Ficha A - Hipertrofia)
    DT_INICIO    DATE         NOT NULL,                -- Início da vigência do treino
    DT_FIM       DATE         NULL,                    -- Data de término/troca de ficha (NULL = em andamento)

    CONSTRAINT pk_treino PRIMARY KEY (ID_TREINO),
    CONSTRAINT fk_treino_aluno FOREIGN KEY (ID_ALUNO)
        REFERENCES ALUNO (ID_PESSOA)
        ON UPDATE CASCADE
        ON DELETE RESTRICT,
    CONSTRAINT fk_treino_instrutor FOREIGN KEY (ID_INSTRUTOR)
        REFERENCES INSTRUTOR (ID_PESSOA)
        ON UPDATE CASCADE
        ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Índices nas FKs para consulta rápida das fichas ativas por aluno e por instrutor
CREATE INDEX idx_treino_aluno ON TREINO (ID_ALUNO);
CREATE INDEX idx_treino_instrutor ON TREINO (ID_INSTRUTOR);


-- -----------------------------------------------------------------------------
-- Tabela: TREINO_EXERCICIO (Entidade Associativa 'Compõe')
-- Finalidade: Resolve a relação N:M entre TREINO e EXERCICIO, armazenando os
-- parâmetros específicos de prescrição (número de séries, repetições, carga e pausa).
-- * Observação: VR_CARGA era FLOAT no modelo lógico e foi convertido para 
--   DECIMAL(8, 2) permitindo frações de peso exatas (ex: halteres de 12.50 kg).
-- -----------------------------------------------------------------------------
CREATE TABLE TREINO_EXERCICIO (
    ID_TREINO        INT           NOT NULL, -- FK referenciando a ficha de TREINO
    ID_EXERCICIO     INT           NOT NULL, -- FK referenciando o EXERCICIO cadastrado
    QT_SERIES        INT           NOT NULL, -- Quantidade de séries (ex: 4 séries)
    QT_REPETICOES    INT           NOT NULL, -- Repetições por série (ex: 12 repetições)
    VR_CARGA         DECIMAL(8, 2) NULL,     -- Peso/carga aplicada em kg (FLOAT -> DECIMAL, opcional)
    QT_INTERVALO_SEG INT           NOT NULL, -- Tempo de descanso recomendado entre séries em segundos

    CONSTRAINT pk_treino_exercicio PRIMARY KEY (ID_TREINO, ID_EXERCICIO),
    CONSTRAINT fk_treino_exercicio_treino FOREIGN KEY (ID_TREINO)
        REFERENCES TREINO (ID_TREINO)
        ON UPDATE CASCADE
        ON DELETE CASCADE,                  -- Se a ficha de treino for excluída, remove a composição
    CONSTRAINT fk_treino_exercicio_exercicio FOREIGN KEY (ID_EXERCICIO)
        REFERENCES EXERCICIO (ID_EXERCICIO)
        ON UPDATE CASCADE
        ON DELETE RESTRICT                  -- Impede deletar exercício se estiver associado a algum treino
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Índice na segunda FK para otimizar pesquisas inversas de uso de cada exercício
CREATE INDEX idx_treino_exercicio_ex ON TREINO_EXERCICIO (ID_EXERCICIO);


-- -----------------------------------------------------------------------------
-- Tabela: AVALIACAO_FISICA
-- Finalidade: Registro histórico das avaliações antropométricas periódicas do aluno.
-- Dados de saúde sujeitos a diretrizes de proteção e privacidade (LGPD).
-- * Observação: VR_PESO e VR_ALTURA eram FLOAT no modelo lógico e foram 
--   convertidos para DECIMAL(M, D).
-- -----------------------------------------------------------------------------
CREATE TABLE AVALIACAO_FISICA (
    ID_AVALIACAO INT           NOT NULL AUTO_INCREMENT, -- Identificador único da avaliação (Chave Primária)
    ID_ALUNO     INT           NOT NULL,                -- Aluno avaliado (FK ALUNO -> PESSOA)
    DT_AVALIACAO DATE          NOT NULL,                -- Data de realização da avaliação física
    VR_PESO      DECIMAL(6, 2) NOT NULL,                -- Peso aferido em kg (ex: 82.40). FLOAT -> DECIMAL
    VR_ALTURA    DECIMAL(5, 2) NOT NULL,                -- Altura aferida em metros (ex: 1.80). FLOAT -> DECIMAL

    CONSTRAINT pk_avaliacao_fisica PRIMARY KEY (ID_AVALIACAO),
    CONSTRAINT fk_avaliacao_aluno FOREIGN KEY (ID_ALUNO)
        REFERENCES ALUNO (ID_PESSOA)
        ON UPDATE CASCADE
        ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Índice para rápida recuperação do histórico cronológico de avaliações de um aluno
CREATE INDEX idx_avaliacao_aluno_data ON AVALIACAO_FISICA (ID_ALUNO, DT_AVALIACAO);


-- =============================================================================
-- NÚCLEO 4: LOGÍSTICA, PATRIMÔNIO E FINANCEIRO DE FORNECEDORES
-- =============================================================================

-- -----------------------------------------------------------------------------
-- Tabela: FORNECEDOR
-- Finalidade: Cadastro de empresas que fornecem equipamentos, materiais e serviços.
-- -----------------------------------------------------------------------------
CREATE TABLE FORNECEDOR (
    ID_FORNECEDOR INT          NOT NULL AUTO_INCREMENT, -- Identificador único do fornecedor (Chave Primária)
    NM_FORNECEDOR VARCHAR(120) NOT NULL,                -- Razão social ou nome fantasia da empresa
    CD_CNPJ       VARCHAR(18)  NOT NULL,                -- CNPJ formatado ou numérico
    NM_EMAIL      VARCHAR(120) NULL,                    -- E-mail de contato comercial/financeiro

    CONSTRAINT pk_fornecedor PRIMARY KEY (ID_FORNECEDOR),
    CONSTRAINT uk_fornecedor_cnpj UNIQUE KEY (CD_CNPJ)  -- CNPJ único no sistema
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


-- -----------------------------------------------------------------------------
-- Tabela: EQUIPAMENTO
-- Finalidade: Registro do patrimônio e inventário de aparelhos da academia.
-- -----------------------------------------------------------------------------
CREATE TABLE EQUIPAMENTO (
    ID_EQUIPAMENTO INT          NOT NULL AUTO_INCREMENT, -- Identificador único do equipamento (Chave Primária)
    ID_FORNECEDOR  INT          NOT NULL,                -- Fabricante ou empresa fornecedora do equipamento
    NM_EQUIPAMENTO VARCHAR(120) NOT NULL,                -- Nome do aparelho (ex: Esteira Ergométrica T800, Crossover)
    QT_QUANTIDADE  INT          NOT NULL,                -- Quantidade disponível desse modelo em patrimônio
    TP_STATUS      VARCHAR(30)  NOT NULL,                -- Estado: 'ativo', 'em manutenção', 'inativo'

    CONSTRAINT pk_equipamento PRIMARY KEY (ID_EQUIPAMENTO),
    CONSTRAINT fk_equipamento_fornecedor FOREIGN KEY (ID_FORNECEDOR)
        REFERENCES FORNECEDOR (ID_FORNECEDOR)
        ON UPDATE CASCADE
        ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Índice para listagens de equipamentos por fornecedor
CREATE INDEX idx_equipamento_fornecedor ON EQUIPAMENTO (ID_FORNECEDOR);


-- -----------------------------------------------------------------------------
-- Tabela: MANUTENCAO
-- Finalidade: Registro histórico de intervenções preventivas ou corretivas nos aparelhos.
-- * Observação: VR_CUSTO era FLOAT no modelo lógico e foi convertido para 
--   DECIMAL(10, 2) para controle financeiro exato de custos de oficina/peças.
-- -----------------------------------------------------------------------------
CREATE TABLE MANUTENCAO (
    ID_MANUTENCAO  INT            NOT NULL AUTO_INCREMENT, -- Identificador único da manutenção (Chave Primária)
    ID_EQUIPAMENTO INT            NOT NULL,                -- Equipamento que recebeu o reparo/revisão
    DT_MANUTENCAO  DATE           NOT NULL,                -- Data de realização da manutenção
    VR_CUSTO       DECIMAL(10, 2) NOT NULL,                -- Custo financeiro do serviço/peça em R$ (FLOAT -> DECIMAL)
    TP_STATUS      VARCHAR(30)    NOT NULL,                -- Situação: 'pendente', 'programada', 'concluída'

    CONSTRAINT pk_manutencao PRIMARY KEY (ID_MANUTENCAO),
    CONSTRAINT fk_manutencao_equipamento FOREIGN KEY (ID_EQUIPAMENTO)
        REFERENCES EQUIPAMENTO (ID_EQUIPAMENTO)
        ON UPDATE CASCADE
        ON DELETE CASCADE                              -- Exclusão de equipamento remove histórico de reparos
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Índice para consultar manutenções por equipamento e data de intervenção
CREATE INDEX idx_manutencao_equip_data ON MANUTENCAO (ID_EQUIPAMENTO, DT_MANUTENCAO);


-- -----------------------------------------------------------------------------
-- Tabela: CONTAS_A_PAGAR
-- Finalidade: Controle financeiro das contas e compromissos com fornecedores.
-- * Observação: VR_VALOR era FLOAT no modelo lógico e foi convertido para 
--   DECIMAL(10, 2) para integridade de balanço fiscal/contábil.
-- -----------------------------------------------------------------------------
CREATE TABLE CONTAS_A_PAGAR (
    ID_CONTA_PAGAR      INT            NOT NULL AUTO_INCREMENT, -- Identificador único da conta a pagar (Chave Primária)
    ID_FORNECEDOR       INT            NOT NULL,                -- Fornecedor credor
    DS_CONTA            VARCHAR(255)   NOT NULL,                -- Discriminação da despesa (ex: Aquisição de anilhas, Manutenção)
    VR_VALOR            DECIMAL(10, 2) NOT NULL,                -- Valor a liquidar em R$ (FLOAT -> DECIMAL)
    DT_VENCIMENTO       DATE           NOT NULL,                -- Data limite de vencimento do boleto/fatura
    DT_PAGAMENTO        DATE           NULL,                    -- Data da baixa/pagamento (NULL enquanto em aberto)
    TP_STATUS_PAGAMENTO VARCHAR(30)    NOT NULL,                -- Situação: 'pendente', 'pago', 'atrasado', 'cancelado'

    CONSTRAINT pk_contas_a_pagar PRIMARY KEY (ID_CONTA_PAGAR),
    CONSTRAINT fk_contas_fornecedor FOREIGN KEY (ID_FORNECEDOR)
        REFERENCES FORNECEDOR (ID_FORNECEDOR)
        ON UPDATE CASCADE
        ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Índice para relatórios de contas a pagar por vencimento e situação de quitação
CREATE INDEX idx_contas_venc_status ON CONTAS_A_PAGAR (DT_VENCIMENTO, TP_STATUS_PAGAMENTO);

-- =============================================================================
-- FIM DO SCRIPT DDL
-- =============================================================================

