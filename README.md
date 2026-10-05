# ARGOS FITNESS — Sistema de Gestão de Academia
 
## Entrega 1 — Modelo Conceitual (DER)
 
Projeto acadêmico de modelagem de dados desenvolvido para a **ARGOS FITNESS**, uma academia de bairro localizada em Itaquera, São Paulo.
 
O projeto tem como objetivo levantar os processos da organização, identificar seus requisitos e representar seus principais dados por meio de uma **modelagem conceitual de banco de dados**, utilizando um Diagrama Entidade-Relacionamento (DER).
 
---
 
## Metadados
 
### Integrantes
 
| Nome | RGM |
| :--- | :---: |
| Paulo Henrique Quintiliano dos Santos | 48179060 |
| Beatrys Anunciato de Lima | 48219886 |
| Kauanny Duarte Santos | 48164143 |
| João Lucas da Conceição Pereira | 47617322 |
 
---
 
## 1. Caracterização da Organização
 
### Nome e natureza da organização
 
A organização selecionada para a pesquisa de campo foi a **ARGOS FITNESS**, uma academia de bairro voltada a atividades físicas e condicionamento corporal. Ela foi escolhida como objeto de estudo para o desenvolvimento do projeto de Banco de Dados. A pesquisa de campo teve como objetivo conhecer o funcionamento da academia, observar seus processos e levantar informações relevantes para a definição dos requisitos do banco de dados a ser desenvolvido.
 
### Contexto e porte
 
A **ARGOS FITNESS** é uma academia de bairro com fins lucrativos, que oferece serviços voltados à prática de atividades físicas.
 
- **Alunos:** mais de **300**
- **Colaboradores:** aproximadamente **25**, distribuídos entre recepção, limpeza, manutenção de equipamentos e instrução de atividades físicas
- **Equipe de instrução:** professores de lutas, dança, aeróbica e personal trainers
- **Modalidades:** dança, boxe, treinamento funcional, taekwondo, pilates e muay thai
- **Receita:** mensalidades e aulas avulsas
- **Funcionamento:** de **segunda-feira a sábado**
- **Demanda média:** aproximadamente **250 mensalidades mensais**
- **Valor dos planos:** entre **R$ 90,00 e R$ 150,00**, conforme os serviços e modalidades oferecidos
### Problemas e necessidades identificados
 
Foram identificadas algumas limitações no gerenciamento e na organização das informações da academia:
 
- O processo atual é muito simples, concentrando-se no **registro da matrícula, identificação do aluno e controle das datas de pagamento das mensalidades**.
- Os **cadastros dos alunos permanecem incompletos** em algumas situações, dificultando a manutenção de informações atualizadas e o acompanhamento do histórico de cada aluno.
- Há uso frequente de **documentos e registros em papel** para controlar informações e relações entre alunos, funcionários, modalidades e pagamentos. Isso dificulta a consulta, a atualização e a organização dos dados, além de aumentar a possibilidade de perda, duplicidade ou inconsistência.
Diante disso, identificou-se a oportunidade de desenvolver um **banco de dados estruturado**, capaz de centralizar as informações da academia e estabelecer relacionamentos entre os principais elementos de sua operação: **alunos, matrículas, modalidades, professores, planos e pagamentos**. Uma estrutura organizada de dados facilita o acesso às informações, melhora seu controle e reduz a dependência de registros manuais.
 
### Justificativa da escolha
 
A **ARGOS FITNESS** foi escolhida pelo grupo por apresentar uma estrutura operacional que envolve diferentes relações entre **alunos, matrículas, planos, pagamentos, modalidades, professores e funcionários**, o que proporciona um cenário adequado para aplicar os conhecimentos de banco de dados.
 
A organização também tem um porte compatível com a proposta do projeto: complexidade suficiente para identificar problemas reais e propor melhorias, sem tornar a análise inviável. Isso permite um levantamento detalhado dos processos e a transformação das necessidades em requisitos.
 
Outro fator importante foi a **facilidade de acesso à organização e aos seus responsáveis**. O grupo pode realizar visitas, esclarecer dúvidas e obter informações diretamente com os proprietários e gestores, favorecendo uma pesquisa de campo mais precisa e alinhada à realidade.
 
### Evidências da organização
 
- **Endereço:** Rua José Oiticica Filho, 1008 — Itaquera, São Paulo – SP, 08210-510
- **Telefone:** (11) 2074-0145
- **Localização:** [ARGOS FITNESS ACADEMIA](https://maps.app.goo.gl/atC6Nw4yhaU8ndBn6)
---
 
## 2. Processos de Negócio
 
### Principais processos mapeados
 
Durante a pesquisa de campo na **ARGOS FITNESS**, foram identificados os seguintes processos relacionados ao funcionamento e à gestão da academia:
 
| # | Processo | Descrição |
| :-: | :--- | :--- |
| 1 | **Cadastro de alunos** | Registro e atualização dos dados pessoais, contatos, endereço e informações cadastrais dos alunos. |
| 2 | **Matrícula e gerenciamento de planos** | Realização das matrículas, definição do plano contratado, controle do período de vigência e acompanhamento do status do aluno. |
| 3 | **Controle de pagamentos** | Registro das mensalidades, valores pagos, datas, formas de pagamento e situações de pendência. |
| 4 | **Cadastro e gerenciamento de modalidades** | Organização das atividades oferecidas, como musculação, dança, boxe, funcional, taekwondo, pilates e muay thai. |
| 5 | **Gestão de professores e instrutores** | Cadastro dos profissionais responsáveis pelas modalidades e acompanhamento de sua relação com os alunos e treinos. |
| 6 | **Controle de treinos** | Registro das fichas de exercícios, objetivos dos alunos, exercícios prescritos, séries, repetições, cargas e instrutores responsáveis. |
| 7 | **Controle de acesso** | Registro das entradas dos alunos na academia, permitindo acompanhar a frequência e o histórico de acessos. |
| 8 | **Controle de equipamentos e materiais** | Cadastro dos aparelhos e demais materiais, incluindo aquisição, patrimônio, localização e situação de uso. |
| 9 | **Manutenção de equipamentos** | Registro de manutenções preventivas e corretivas, problemas identificados, serviços realizados, custos e próximas revisões. |
| 10 | **Gestão de fornecedores** | Cadastro e acompanhamento das empresas responsáveis pelo fornecimento de equipamentos, materiais e serviços de manutenção. |
 
### Fluxogramas
 
<!-- Opcional: anexar imagens dos fluxogramas dos processos-chave. Exemplo: ![Fluxograma](docs/fluxograma.png) -->
 
*Não se aplica / em elaboração.*
 
---
 
## 3. Requisitos do Sistema
 
### 3.1 Requisitos Funcionais
 
O sistema deverá permitir o gerenciamento integrado das principais informações e processos da **ARGOS FITNESS**, possibilitando maior organização, centralização e controle dos dados. Entre as principais funcionalidades:
 
- **Cadastrar alunos**, registrando dados pessoais, contato, endereço, contato de emergência e status do cadastro.
- **Atualizar os dados dos alunos**, corrigindo ou complementando informações cadastrais.
- **Registrar matrículas**, relacionando o aluno ao plano contratado e à data de início da matrícula.
- **Cadastrar e gerenciar planos**, registrando nome do plano, valor e dia de vencimento.
- **Registrar pagamentos**, armazenando valor pago, data, forma de pagamento e situação da mensalidade.
- **Identificar pagamentos pendentes**, acompanhando mensalidades em aberto ou em atraso.
- **Cadastrar modalidades**, registrando as atividades oferecidas pela academia.
- **Cadastrar professores e instrutores**, relacionando cada profissional às modalidades e aos treinos sob sua responsabilidade.
- **Registrar fichas de treino**, vinculando o aluno ao instrutor e armazenando objetivos, exercícios, séries, repetições e cargas.
- **Registrar o acesso dos alunos**, armazenando data e horário de entrada para controle de frequência.
- **Cadastrar equipamentos e materiais**, registrando nome, categoria, patrimônio, data de aquisição, valor e situação de uso.
- **Cadastrar fornecedores**, armazenando informações cadastrais, contatos, categorias de fornecimento e endereço.
- **Registrar manutenções de equipamentos**, informando equipamento, fornecedor ou assistência responsável, tipo de manutenção, data, descrição, custo e próxima revisão.
- **Consultar informações**, localizando rapidamente dados de alunos, matrículas, pagamentos, treinos, equipamentos, fornecedores e manutenções.
- **Gerar informações e relatórios de acompanhamento**, auxiliando no controle de alunos, pagamentos, frequência, equipamentos e demais processos administrativos.
- **Centralizar os dados da academia**, relacionando e armazenando as informações dos diferentes processos em um único banco de dados.
- **Manter o histórico das informações**, acompanhando registros de matrículas, pagamentos, acessos, treinos e manutenções.
### 3.2 Requisitos Não Funcionais
 
O sistema deverá apresentar características de qualidade que garantam seu funcionamento adequado e contribuam para a organização e a segurança das informações da **ARGOS FITNESS**.
 
| Característica | Descrição |
| :--- | :--- |
| **Desempenho** | Realizar cadastros, alterações e registros de forma rápida, sem demora significativa nas operações. |
| **Segurança** | Proteger os dados armazenados, restringindo o acesso conforme o nível de autorização dos usuários e evitando alterações ou acessos indevidos. |
| **Usabilidade** | Interface simples, intuitiva e organizada, para que funcionários e gestores usem o sistema com facilidade, mesmo sem conhecimentos avançados de informática. |
| **Disponibilidade** | Estar disponível durante o horário de funcionamento da academia. |
| **Confiabilidade** | Armazenar os dados de forma consistente, reduzindo o risco de perda, duplicidade ou inconsistência. |
| **Manutenibilidade** | Possuir estrutura organizada que facilite correções, atualizações e inclusão de novas funcionalidades. |
| **Escalabilidade** | Permitir o crescimento da quantidade de alunos, funcionários, modalidades, pagamentos e demais registros sem comprometer o funcionamento. |
| **Backup e recuperação** | Possuir mecanismos de cópia de segurança e recuperação, reduzindo os impactos de falhas ou perdas de informações. |
| **Privacidade** | Tratar as informações pessoais e cadastrais dos alunos de forma adequada, com acesso somente a usuários autorizados. |
 
---
 
## 4. Regras de Negócio
 
### Regras operacionais
 
Com base nos processos identificados na **ARGOS FITNESS**, foram estabelecidas as seguintes regras operacionais para orientar o funcionamento do sistema:
 
1. Um aluno só poderá realizar uma matrícula se possuir um cadastro válido no sistema.
2. Uma matrícula deverá estar vinculada a um plano previamente cadastrado.
3. Um plano deverá possuir um valor e uma data de vencimento definidos.
4. Um pagamento deverá estar vinculado a um aluno e, quando aplicável, à respectiva matrícula.
5. Um pagamento deverá possuir data, valor, forma de pagamento e status definidos.
6. Uma mensalidade só poderá ser considerada paga após o registro do respectivo pagamento.
7. Um aluno com cadastro inativo ou trancado não deverá ser considerado ativo para novos registros de acesso ou matrícula.
8. Um registro de acesso só poderá ser realizado para um aluno cadastrado e apto a frequentar a academia.
9. Um treino deverá estar vinculado a um aluno e a um instrutor responsável.
10. Uma modalidade deverá estar previamente cadastrada para poder ser associada a alunos ou instrutores.
11. Um equipamento deverá possuir cadastro único, identificado por seu número de série ou patrimônio, quando disponível.
12. Um equipamento em manutenção não deverá ser considerado disponível para utilização até que sua situação seja alterada para ativa.
13. Uma manutenção deverá estar vinculada a um equipamento cadastrado.
14. Um fornecedor deverá possuir cadastro antes de ser associado à aquisição de equipamentos ou à realização de serviços de manutenção.
15. O sistema deverá impedir o cadastro de dois alunos com o mesmo CPF.
16. O sistema deverá impedir o cadastro duplicado de fornecedores com o mesmo CNPJ.
17. Informações obrigatórias deverão ser preenchidas antes da conclusão de um cadastro ou registro.
18. Somente usuários autorizados deverão poder alterar ou excluir informações administrativas e financeiras.
19. As informações registradas deverão manter seus relacionamentos entre alunos, matrículas, pagamentos, treinos, equipamentos, fornecedores e manutenções.
### Restrições organizacionais
 
Durante a análise da **ARGOS FITNESS**, foram identificadas restrições organizacionais que influenciam a estrutura do banco de dados, os níveis de acesso e a forma de utilização das informações:
 
| Restrição | Descrição |
| :--- | :--- |
| **Proteção dos dados pessoais** | O sistema deverá proteger dados pessoais dos alunos (CPF, endereço, telefone e contatos), preservando a privacidade e atendendo à **Lei Geral de Proteção de Dados (LGPD)**. |
| **Acesso restrito às informações** | Dados financeiros, cadastrais e relacionados à saúde ou anamnese deverão ser acessíveis somente a funcionários autorizados, reduzindo o risco de acesso indevido e exposição. |
| **Dependência da rotina da academia** | O sistema deverá ser compatível com o funcionamento de **segunda-feira a sábado**. As funcionalidades de matrícula, pagamento, acesso e atendimento devem estar disponíveis conforme a rotina dos funcionários. |
| **Registros obrigatórios** | Determinadas informações deverão ser preenchidas antes da conclusão de um cadastro, matrícula ou outro processo, evitando registros incompletos. |
| **Controle financeiro** | Os registros de mensalidades e pagamentos deverão seguir os valores e condições dos planos oferecidos, permitindo acompanhar pagamentos realizados e pendências. |
| **Controle de equipamentos** | Equipamentos em manutenção ou fora de operação deverão ter o status atualizado no sistema, evitando que sejam considerados disponíveis quando não estiverem aptos. |
| **Limitação de recursos** | Por ser uma academia de bairro, a solução deve considerar os recursos financeiros, tecnológicos e humanos disponíveis, priorizando funcionalidades essenciais sem exigir infraestrutura incompatível. |
| **Facilidade de adaptação dos funcionários** | O uso do sistema deve ser simples e adequado ao nível de familiaridade dos colaboradores com ferramentas informatizadas. |
 
---
 
## 5. Dicionário de Dados Conceitual (Preliminar)
 
Dicionário construído a partir do DER (Seção 7) e do documento complementar de Dicionário de Dados do sistema, que traz os tipos físicos (MySQL 8) e os índices. A obrigatoriedade indicada abaixo é uma **proposta**, pois o DER não explicita nulabilidade, e deve ser validada antes da implementação.
 
**Prefixos utilizados:** `nm_` = nome; `dt_` = data; `id_` = identificador; `cd_` = código; `qt_` = quantidade; `tp_` = tipo/categorização; `ds_` = descrição/texto livre; `vr_` = valor numérico/monetário.
 
### Entidade: Pessoa (generalização)
 
| Atributo | Descrição | Regra de negócio associada |
| :--- | :--- | :--- |
| id_pessoa (PK) | Identificador único da pessoa | Obrigatório; gerado pelo sistema; herdado pelas especializações |
| nome | Nome completo da pessoa | Obrigatório |
| cpf | CPF utilizado para identificação do cadastro | Obrigatório; único (impede dois cadastros com o mesmo CPF) |
| email | E-mail de contato | Obrigatório |
| telefone | Telefone de contato | Obrigatório |
 
### Entidade: Aluno (especialização de Pessoa)
 
| Atributo | Descrição | Regra de negócio associada |
| :--- | :--- | :--- |
| dt_matricula | Data de matrícula do aluno na academia | Obrigatório |
| ds_objetivo | Objetivo informado pelo aluno para seu acompanhamento | Opcional |
| vr_peso | Peso registrado do aluno | Opcional; dado de saúde, com acesso restrito (LGPD) |
| vr_altura | Altura registrada do aluno | Opcional; dado de saúde, com acesso restrito (LGPD) |
 
### Entidade: Instrutor (especialização de Pessoa)
 
| Atributo | Descrição | Regra de negócio associada |
| :--- | :--- | :--- |
| cd_cref | Registro profissional do instrutor no CREF | Obrigatório; único |
| ds_especialidade | Área ou especialidade de atuação do instrutor | Opcional |
| dt_admissao | Data de admissão do instrutor na academia | Obrigatório |
 
### Entidade: Fornecedor (especialização de Pessoa)
 
| Atributo | Descrição | Regra de negócio associada |
| :--- | :--- | :--- |
| id_fornecedor (PK) | Identificador único do fornecedor | Obrigatório; gerado pelo sistema |
| nm_fornecedor | Nome ou razão social do fornecedor | Obrigatório |
| cnpj | CNPJ utilizado para identificação fiscal | Obrigatório; único (impede cadastro duplicado de fornecedores) |
| email | E-mail para contato e comunicação com o fornecedor | Opcional |
 
### Entidade: Plano
 
| Atributo | Descrição | Regra de negócio associada |
| :--- | :--- | :--- |
| id_plano (PK) | Identificador único do plano | Obrigatório; gerado pelo sistema |
| nm_plano | Nome comercial do plano | Obrigatório |
| vr_valor | Valor monetário do plano | Obrigatório; planos praticados entre R$ 90,00 e R$ 150,00 |
| qt_duracao_meses | Duração do plano em meses | Obrigatório; maior que zero |
 
### Entidade: Matrícula
 
| Atributo | Descrição | Regra de negócio associada |
| :--- | :--- | :--- |
| id_matricula (PK) | Identificador único da matrícula | Obrigatório; gerado pelo sistema |
| dt_inicio | Data de início da matrícula | Obrigatório |
| dt_fim | Data de término da vigência da matrícula | Opcional; preenchida quando a matrícula é encerrada |
| tp_status | Situação da matrícula | Valores propostos: ativa, encerrada, trancada. Matrícula não ativa não permite novos acessos |
 
### Entidade: Pagamento
 
| Atributo | Descrição | Regra de negócio associada |
| :--- | :--- | :--- |
| id_pagamento (PK) | Identificador único do pagamento | Obrigatório; gerado pelo sistema |
| vr_valor | Valor monetário cobrado ou pago | Obrigatório; segue o valor do plano contratado |
| dt_vencimento | Data de vencimento da cobrança | Obrigatório |
| tp_status_pagamento | Situação do pagamento | Valores propostos: pendente, pago, atrasado. A mensalidade só é considerada paga após o registro do pagamento |
 
### Entidade: Acesso
 
| Atributo | Descrição | Regra de negócio associada |
| :--- | :--- | :--- |
| id_acesso (PK) | Identificador único do registro de acesso | Obrigatório; gerado pelo sistema |
| dt_hora_entrada | Data e horário de entrada na academia | Obrigatório; preenchido automaticamente |
 
### Entidade: Treino
 
| Atributo | Descrição | Regra de negócio associada |
| :--- | :--- | :--- |
| id_treino (PK) | Identificador único do treino | Obrigatório; gerado pelo sistema |
| id_exercicio | Identificador do exercício que compõe o treino | Obrigatório; o exercício precisa estar previamente cadastrado |
| qt_series | Quantidade de séries prescritas | Obrigatório |
| qt_repeticoes | Quantidade de repetições por série | Obrigatório |
 
### Entidade: Exercício
 
| Atributo | Descrição | Regra de negócio associada |
| :--- | :--- | :--- |
| id_exercicio (PK) | Identificador único do exercício | Obrigatório; gerado pelo sistema |
| nm_exercicio | Nome do exercício | Obrigatório |
| tp_grupo_muscular | Grupo muscular trabalhado pelo exercício | Obrigatório |
| ds_declaracao | Descrição ou orientação geral do exercício | Opcional |
 
### Entidade: Avaliação Física
 
| Atributo | Descrição | Regra de negócio associada |
| :--- | :--- | :--- |
| id_avaliacao (PK) | Identificador único da avaliação física | Obrigatório; gerado pelo sistema |
| dt_avaliacao | Data de realização da avaliação | Obrigatório |
| vr_peso | Peso medido na avaliação | Obrigatório; dado de saúde, com acesso restrito (LGPD) |
| vr_altura | Altura registrada na avaliação | Obrigatório; dado de saúde, com acesso restrito (LGPD) |
 
### Entidade: Equipamento
 
| Atributo | Descrição | Regra de negócio associada |
| :--- | :--- | :--- |
| id_equipamento (PK) | Identificador único do equipamento | Obrigatório; gerado pelo sistema |
| nm_equipamento | Nome do equipamento utilizado na academia | Obrigatório |
| qt_quantidade | Quantidade disponível daquele equipamento | Obrigatório; maior ou igual a zero |
| tp_status | Situação atual do equipamento | Valores propostos: ativo, em manutenção, inativo. Equipamento em manutenção não é considerado disponível |
 
### Entidade: Manutenção
 
| Atributo | Descrição | Regra de negócio associada |
| :--- | :--- | :--- |
| id_manutencao (PK) | Identificador único da manutenção | Obrigatório; gerado pelo sistema |
| dt_manutencao | Data de realização ou registro da manutenção | Obrigatório |
| vr_custo | Custo associado à manutenção | Obrigatório; maior ou igual a zero |
| tp_status | Situação da manutenção | Valores propostos: concluída, pendente, programada |
 
---
 
## 6. Modelagem Conceitual (Entidades, Atributos, Relacionamentos)
 
### Entidades reconhecidas
 
| Entidade | Justificativa |
| :--- | :--- |
| **Pessoa** | Cadastro-base com os dados de identificação comuns a todos que se relacionam com a academia. |
| **Aluno** | Especialização de Pessoa; usuário que treina na academia e é o elemento central dos processos. |
| **Instrutor** | Especialização de Pessoa; profissional responsável por montar treinos e aplicar avaliações. |
| **Fornecedor** | Especialização de Pessoa; empresa que fornece equipamentos e serviços. |
| **Plano** | Oferta comercial da academia, independente de quem a contrata. |
| **Matrícula** | Vínculo do aluno com um plano, com período e situação próprios. |
| **Pagamento** | Cobrança e quitação de mensalidades, mantendo o histórico financeiro. |
| **Acesso** | Registro das entradas na academia, para controle de frequência. |
| **Treino** | Ficha de treino montada por um instrutor para um aluno. |
| **Exercício** | Catálogo de exercícios disponíveis para compor os treinos. |
| **Avaliação Física** | Registro das medidas do aluno ao longo do tempo, para acompanhar sua evolução. |
| **Equipamento** | Aparelhos e materiais da academia. |
| **Manutenção** | Intervenções realizadas ou programadas nos equipamentos, preservando o histórico. |
 
### Atributos e classificações
 
Os atributos de cada entidade estão detalhados na Seção 5. Resumo da classificação:
 
| Entidade | Identificador | Atributos simples |
| :--- | :--- | :--- |
| Pessoa | id_pessoa | nome, cpf, email, telefone |
| Aluno | id_pessoa (herdado) | dt_matricula, ds_objetivo, vr_peso, vr_altura |
| Instrutor | id_pessoa (herdado) | cd_cref, ds_especialidade, dt_admissao |
| Fornecedor | id_fornecedor | nm_fornecedor, cnpj, email |
| Plano | id_plano | nm_plano, vr_valor, qt_duracao_meses |
| Matrícula | id_matricula | dt_inicio, dt_fim, tp_status |
| Pagamento | id_pagamento | vr_valor, dt_vencimento, tp_status_pagamento |
| Acesso | id_acesso | dt_hora_entrada |
| Treino | id_treino | id_exercicio, qt_series, qt_repeticoes |
| Exercício | id_exercicio | nm_exercicio, tp_grupo_muscular, ds_declaracao |
| Avaliação Física | id_avaliacao | dt_avaliacao, vr_peso, vr_altura |
| Equipamento | id_equipamento | nm_equipamento, qt_quantidade, tp_status |
| Manutenção | id_manutencao | dt_manutencao, vr_custo, tp_status |
 
Todos os atributos do modelo são simples e monovalorados; não há atributos compostos nem derivados.
 
### Relacionamentos pertinentes
 
Cardinalidades na notação (mínima, máxima) do BRModelo, lidas conforme aparecem no DER:
 
| Relacionamento | Entidades e cardinalidades | Leitura |
| :--- | :--- | :--- |
| **Monta** | Instrutor (0,n) — Treino (1,1) | Um instrutor monta vários treinos; cada treino é montado por um único instrutor. |
| **Segue** | Aluno (0,n) — Treino (1,1) | Um aluno segue vários treinos ao longo do tempo; cada treino pertence a um único aluno. |
| **Compõe** | Exercício (0,n) — Treino (1,n) | Cada treino é composto por um ou mais exercícios; um exercício pode compor vários treinos (N:M). |
| **Aplica** | Instrutor (0,n) — Avaliação Física (1,1) | Um instrutor aplica várias avaliações; cada avaliação é aplicada por um único instrutor. |
| **Realiza** | Aluno (0,n) — Avaliação Física (1,1) | Um aluno realiza várias avaliações; cada avaliação pertence a um único aluno. |
| **Possui** | Aluno (0,n) — Matrícula (1,1) | Um aluno pode ter várias matrículas ao longo do tempo; cada matrícula pertence a um único aluno. |
| **Refere-se a** | Matrícula (1,1) — Plano (0,n) | Cada matrícula refere-se a um único plano; um plano pode estar em várias matrículas. |
| **Gera** | Matrícula (0,n) — Pagamento (1,1) | Uma matrícula gera vários pagamentos; cada pagamento pertence a uma única matrícula. |
| **Registra** | Matrícula (0,n) — Acesso (1,1) | Uma matrícula registra vários acessos; cada acesso pertence a uma única matrícula. |
| **Fornece** | Fornecedor (0,n) — Equipamento (1,1) | Um fornecedor fornece vários equipamentos; cada equipamento tem um único fornecedor. |
| **Recebe** | Equipamento (0,n) — Manutenção (1,1) | Um equipamento recebe várias manutenções; cada manutenção refere-se a um único equipamento. |
 
**Generalização:** Aluno, Instrutor e Fornecedor são especializações de Pessoa, do tipo **parcial e compartilhada (p, c)**. Parcial porque uma pessoa pode existir sem assumir nenhum desses papéis; compartilhada porque a mesma pessoa pode assumir mais de um (por exemplo, um instrutor que também é aluno).
 
### Restrições e políticas organizacionais aplicadas ao modelo
 
- **CPF e CNPJ únicos:** impedem cadastros duplicados de pessoas e de fornecedores.
- **Matrícula como eixo financeiro e de frequência:** pagamentos e acessos pertencem a uma matrícula, que por sua vez pertence a um aluno e a um plano. Matrícula não ativa não permite novos acessos.
- **Todo treino tem aluno e instrutor responsáveis** (cardinalidade mínima 1 nos dois relacionamentos).
- **Todo equipamento tem fornecedor, e toda manutenção tem equipamento** cadastrados previamente.
- **Situação de equipamentos e matrículas** controlada por atributos de status, evitando que itens indisponíveis sejam tratados como disponíveis.
- **Proteção de dados pessoais e de saúde (LGPD):** peso, altura e avaliações físicas devem ter acesso restrito a perfis autorizados.
---
 
## 7. Diagrama Entidade-Relacionamento (DER)
 
[![DER — ARGOS FITNESS](DER/DER-ARGOS-FITNESS.jpg)](DER/README.md)
 
O DER foi elaborado no BRModelo Web, com notação (mínima, máxima) para as cardinalidades. Ele representa:
 
- **Entidades:** Pessoa, Aluno, Instrutor, Fornecedor, Plano, Matrícula, Pagamento, Acesso, Treino, Exercício, Avaliação Física, Equipamento e Manutenção;
- **Atributos** de cada entidade, com os identificadores marcados como (PK);
- **Relacionamentos** com suas cardinalidades, detalhados na Seção 6;
- **Generalização/especialização** de Pessoa em Aluno, Instrutor e Fornecedor.
---
 
## 8. Justificativa Técnica
 
A modelagem do banco de dados da **ARGOS FITNESS** foi definida a partir dos principais processos identificados na pesquisa de campo, buscando representar de forma organizada as informações necessárias ao funcionamento da academia. As entidades, atributos, relacionamentos e cardinalidades foram escolhidos considerando a realidade observada, evitando tanto estruturas desnecessárias quanto a concentração excessiva de informações em uma única entidade.
 
### Pessoa e suas especializações
 
Alunos, instrutores e fornecedores compartilham dados de identificação (nome, CPF, e-mail e telefone). Em vez de repetir esses atributos em cada entidade, optou-se por uma entidade **Pessoa** como cadastro-base, com **Aluno**, **Instrutor** e **Fornecedor** como especializações. Isso reduz a redundância e permite que a mesma pessoa assuma mais de um papel (por exemplo, um instrutor que também é aluno), motivo pelo qual a generalização é **parcial e compartilhada**. O **CPF** foi definido como atributo único para evitar cadastros duplicados.
 
### Aluno
 
Foi mantida como uma das principais entidades do modelo, pois representa o elemento central dos processos analisados. Seus atributos próprios (data de matrícula, objetivo, peso e altura) acompanham o aluno e apoiam o acompanhamento de seu desenvolvimento, enquanto os dados de identificação ficam em Pessoa.
 
### Plano
 
Foi separado da entidade Aluno porque um plano é uma informação independente do aluno. Diferentes alunos podem contratar o mesmo plano, evitando repetir nome, valor e duração em cada cadastro. Isso também facilita futuras alterações nos planos oferecidos pela academia.
 
### Matrícula
 
Foi considerada uma entidade própria para representar a relação entre aluno e plano. A separação permite registrar informações específicas da contratação, como início, término e situação, e manter o histórico de diferentes períodos de matrícula. Colocar essas informações diretamente em Aluno dificultaria esse acompanhamento. A relação com Aluno é **1:N** (um aluno pode ter várias matrículas ao longo do tempo) e a relação com Plano também é **1:N** (um plano pode estar em várias matrículas).
 
### Pagamento
 
Foi criado separadamente porque uma matrícula gera diversos pagamentos ao longo do tempo, estabelecendo uma relação **1:N entre Matrícula e Pagamento**. Isso mantém o histórico financeiro sem sobrescrever informações anteriores, e o aluno é identificado a partir da matrícula.
 
### Acesso
 
Foi criado para registrar as entradas na academia, já que uma mesma matrícula pode ter inúmeros registros de acesso. Estabelece-se uma relação **1:N entre Matrícula e Acesso**, que mantém o histórico de frequência sem armazená-lo no cadastro do aluno e permite verificar se a matrícula está ativa no momento da entrada.
 
### Instrutor, Treino e Exercício
 
O **Instrutor** representa os profissionais responsáveis pelos treinos e pelas avaliações, sem repetir seus dados em diferentes registros. O **Treino** armazena a ficha do aluno e se relaciona de forma **1:N** com o aluno (que pode ter diferentes fichas ao longo do tempo) e com o instrutor (que pode montar vários treinos). O **Exercício** foi separado como um catálogo reutilizável, o que gera uma relação **N:M com Treino**: cada treino é composto por um ou mais exercícios, e um mesmo exercício pode compor vários treinos. Dessa forma, o exercício é cadastrado uma única vez, sem repetição em cada ficha.
 
### Avaliação Física
 
Foi criada separadamente porque um aluno realiza várias avaliações ao longo do tempo, e cada registro preserva as medidas daquele momento, permitindo acompanhar a evolução física. Cada avaliação se relaciona a um único aluno e a um único instrutor (relações **1:N** com ambos).
 
### Fornecedor, Equipamento e Manutenção
 
Um **Fornecedor** pode fornecer diversos equipamentos, enquanto cada equipamento é associado a um fornecedor (relação **1:N**). Um equipamento também pode passar por diversas manutenções ao longo da vida útil, por isso a relação entre **Equipamento e Manutenção** também é **1:N**. A entidade **Manutenção** foi criada separadamente porque um mesmo equipamento pode apresentar diferentes ocorrências ao longo do tempo. Registrar cada manutenção individualmente permite armazenar data, custo e situação, preservando o histórico do equipamento.
 
### Atributos, chaves e cardinalidades
 
Os atributos foram selecionados para representar apenas informações relevantes aos processos identificados. As **chaves primárias** identificam cada registro de forma única, e as **chaves estrangeiras**, definidas a partir dos relacionamentos, garantem a integridade referencial.
 
As cardinalidades seguem as regras observadas na organização. Por exemplo, uma matrícula pode ter vários pagamentos e vários acessos, enquanto cada pagamento e cada acesso pertencem a uma matrícula específica. Da mesma forma, um equipamento pode ter várias manutenções, mas cada manutenção está associada a um único equipamento.
 
### Redundância e simplicidade
 
Separar as entidades, em vez de concentrar tudo em uma única estrutura, reduz a **redundância de dados**, facilita atualizações e preserva a consistência. Por outro lado, não foram criadas entidades para informações sem relevância suficiente para os processos analisados, evitando uma modelagem excessivamente complexa.
 
### Conclusão
 
As decisões de abstração e modelagem buscam equilibrar **representatividade, simplicidade, integridade e possibilidade de expansão**. O modelo representa os processos reais da ARGOS FITNESS de maneira estruturada, permitindo que o banco de dados acompanhe as necessidades atuais da organização e seja ampliado caso novos processos ou informações sejam incorporados.
 
---
 
## 9. Uso de Inteligência Artificial
 
> 🚧 **A preencher pelo grupo.** Se alguma ferramenta de IA foi usada em qualquer etapa (pesquisa, escrita, organização de ideias ou revisão), registre cada uso relevante na tabela abaixo. Se nenhuma foi usada, declare isso explicitamente aqui.
 
| Item | Registro |
| :--- | :--- |
| **Ferramenta e etapa** | |
| **Motivação** | |
| **Prompt(s) utilizados** | |
| **Resposta recebida** | |
| **Fontes consultadas e verificadas** | |
| **Trechos rejeitados ou corrigidos** | |
| **Justificativa da escolha final** | |
| **Reflexão crítica** | |
