# Entrega 2 — Modelo Lógico, Implementação SQL e Apresentação Final

### Modelagem de um sistema de gestão de informações para a ARGOS FITNESS ACADEMIA
### Documentos atualizados     

- **DER conceitual revisado:** [DER_Conceitual.pdf](docs/diagramas/DER_Conceitual.pdf)
- **Modelo lógico revisado:** [Modelo_Logico.png](docs/diagramas/Modelo_Logico.png)
- **Dicionário de Dados v2.0 (HTML):** [abrir dicionário](docs/01-Dicionario-de-Dados/Dicionario-de-Dados-Argos-Fitness.html)
- **Levantamento:** [abrir levantamento](levantamento/Levantamento.md)

---

## 1. Relatório Técnico Final

### Integrantes

| Nome completo do aluno | RGM | Usuário do GitHub |
| :---- | :---- | :---- |
| Beatrys Anunciato de Lima | RGM 48219886 | [beatrys0111](https://github.com/beatrys0111) |
| Kauanny Duarte Santos | RGM 48164143 | [kauannyduartesantos](https://github.com/kauannyduartesantos) |
| Paulo Henrique Quintiliano | RGM 48179060 | [peaga19](https://github.com/peaga19) |

---

### 1.1 Revisão do Modelo Conceitual

#### Caracterização da organização

* **Nome e natureza da organização:** A ARGOS FITNESS ACADEMIA é uma academia de bairro com fins lucrativos, localizada em Itaquera, São Paulo/SP, voltada à prática de atividades físicas, ao condicionamento corporal e à promoção da saúde e do bem-estar. A organização foi escolhida pelo grupo para o desenvolvimento do projeto de Banco de Dados, considerando a possibilidade de analisar seus processos administrativos e operacionais e propor uma solução para melhorar a organização e o gerenciamento de suas informações.
* **Contexto e porte:** Conforme as informações obtidas no levantamento complementar, a academia possui aproximadamente 250 alunos ativos, com variação entre 200 e 300 alunos ao longo do ano, além de cerca de 30 alunos com matrículas congeladas ou inativas. A organização conta com aproximadamente 18 funcionários, 45 máquinas de musculação e equipamentos cardiovasculares e cerca de oito fornecedores recorrentes. O número de novas matrículas fica em torno de 10 a 15 por mês. A academia oferece diferentes atividades, incluindo musculação, dança, boxe, treinamento funcional, taekwondo, pilates e muay thai. Seu funcionamento ocorre de segunda-feira a sábado.
* **Problemas e necessidades identificados:**
  * **P01 — Dispersão das informações:** os dados são armazenados em planilhas, documentos impressos, cadernos e conversas pelo WhatsApp, dificultando a consulta, a atualização e a integração dos registros.
  * **P02 — Dificuldade no controle financeiro:** os pagamentos são registrados em diferentes meios, como planilhas, comprovantes enviados pelo WhatsApp e anotações em cadernos, dificultando a identificação de alunos inadimplentes e o acompanhamento das movimentações financeiras.
  * **P03 — Falhas no controle de acesso:** quando ocorre falha na leitura biométrica, a recepção pode liberar manualmente a catraca, mas essa entrada nem sempre fica registrada, prejudicando o acompanhamento da frequência dos alunos.
  * **P04 — Falta de controle de documentos de saúde:** foram observados cadastros sem atestado médico anexado, além da ausência de alertas automáticos para documentos próximos do vencimento.
  * **P05 — Dificuldade no acompanhamento de equipamentos e manutenções:** as informações sobre equipamentos e serviços de manutenção são mantidas em planilhas e comunicações verbais, dificultando a consulta ao histórico e aos custos de manutenção.
  * **P06 — Necessidade de controle de despesas:** foi identificada a necessidade de organizar as contas a pagar, permitindo acompanhar despesas, valores, vencimentos e situações de pagamento.
* **Escopo do sistema:** O sistema de banco de dados proposto tem como objetivo centralizar e organizar as informações dos principais processos administrativos e operacionais da ARGOS FITNESS. O modelo contempla o gerenciamento de pessoas, alunos, instrutores, telefones, planos, matrículas, pagamentos, acessos, avaliações físicas, treinos, exercícios, fornecedores, equipamentos, manutenções e contas a pagar. A estrutura busca estabelecer relacionamentos entre essas informações, reduzir a dependência de controles isolados e possibilitar consultas que auxiliem no acompanhamento das atividades e na tomada de decisões gerenciais.
* **Justificativa da escolha:** A ARGOS FITNESS foi escolhida por apresentar diferentes processos administrativos, financeiros e operacionais, além de um volume de informações adequado para o desenvolvimento de um sistema de banco de dados relacional. A variedade de atividades, o número de alunos, funcionários, equipamentos e fornecedores possibilita trabalhar com diferentes entidades, relacionamentos e regras de negócio. A possibilidade de contato com a organização também permitiu realizar observações e obter informações para aproximar o modelo da realidade estudada.

---

#### Relato da entrevista

* **Quem:** Entrevistado: Alan Costa (Recepcionista e Auxiliar de administração da ARGOS FITNESS)
* **Integrantes do grupo presentes:** Paulo Henrique Quintiliano Dos Santos
* **Quando e onde:** Data: 06/11/2026 | Local: ARGOS FITNESS
* **Comprovação:** Evidências registradas em imagem e documento na pasta do projeto.
* **Resumo do levantamento:** Foram confirmados os procedimentos operacionais e administrativos da ARGOS FITNESS, incluindo cadastro de alunos, acompanhamento de matrículas, gerenciamento de planos, fluxo de pagamentos, registro de acessos, cadastro de instrutores e montagem de treinos/exercícios. Além disso, identificaram-se as rotinas de cadastro de fornecedores, controle de equipamentos, manutenções e a necessidade de controle de contas a pagar.

 **[Clique aqui para acessar o Documento Completo do Levantamento na pasta(`levantamento/Levantamento.md`)](./levantamento/Levantamento.md )

---

#### Detalhamento de Processos, Requisitos e Regras de Negócio

##### 1. PROCESSOS

| Processo Resumido | Descrição Detalhada |
| :--- | :--- |
| **Cadastro de Aluno** | O cadastro do aluno utiliza as informações pessoais da entidade PESSOA, incluindo `ID_PESSOA`, `CD_CPF`, `NM_PESSOA` e `NM_EMAIL`. Os telefones são registrados na entidade TELEFONE, enquanto os dados específicos do aluno, como `DS_OBJETIVO`, `VR_ALTURA` e `VR_PESO`, são armazenados na entidade ALUNO. |
| **Cadastro de Instrutores** | O cadastro do instrutor utiliza as informações pessoais da entidade PESSOA e os dados específicos armazenados na entidade INSTRUTOR, incluindo `ID_PESSOA`, `CD_CREF`, `DS_ESPECIALIDADE` e `DT_ADMISSAO`. |
| **Contratação de Plano e Matrícula** | O processo utiliza a entidade PLANO, que armazena `ID_PLANO`, `NM_PLANO`, `VR_VALOR` e `QT_DURACAO_MESES`. A matrícula é registrada na entidade MATRICULA, relacionando o aluno ao plano por meio de `ID_ALUNO` e `ID_PLANO`, além de armazenar `DT_INICIO`, `DT_FIM` e `TP_STATUS`. |
| **Pagamento de Matrícula** | O registro do pagamento utiliza a entidade PAGAMENTO, que armazena `ID_PAGAMENTO`, `ID_MATRICULA`, `VR_VALOR`, `DT_VENCIMENTO` e `TP_STATUS_PAGAMENTO`, permitindo acompanhar os pagamentos vinculados às matrículas. |
| **Controle de Acesso** | O controle de acesso utiliza a entidade ACESSO, que registra `ID_ACESSO`, `ID_MATRICULA` e `DT_HORA_ENTRADA`, permitindo relacionar cada entrada à matrícula correspondente. |
| **Avaliação Física** | O processo utiliza a entidade AVALIACAO_FISICA, que registra `ID_AVALIACAO`, `ID_ALUNO`, `DT_AVALIACAO`, `VR_PESO` e `VR_ALTURA`, permitindo manter o histórico das avaliações realizadas. |
| **Elaboração de Treino** | O processo utiliza a entidade TREINO, que registra `ID_TREINO`, `ID_ALUNO`, `ID_INSTRUTOR`, `NM_TREINO`, `DT_INICIO` e `DT_FIM`, relacionando o treino ao aluno e ao instrutor responsável. |
| **Montagem da Ficha de Exercícios** | Os exercícios são cadastrados na entidade EXERCICIO, que armazena `ID_EXERCICIO`, `NM_EXERCICIO`, `TP_GRUPO_MUSCULAR` e `DS_EXERCICIO`. A associação entre treinos e exercícios é realizada pela entidade TREINO_EXERCICIO, que registra `ID_TREINO`, `ID_EXERCICIO`, `QT_SERIES`, `QT_REPETICOES`, `VR_CARGA` e `QT_INTERVALO_SEG`. |
| **Cadastro de Fornecedores** | O processo utiliza a entidade FORNECEDOR, que armazena `ID_FORNECEDOR`, `NM_FORNECEDOR`, `CD_CNPJ` e `NM_EMAIL`, permitindo identificar as empresas fornecedoras e relacioná-las aos equipamentos, itens de estoque e contas a pagar. |
| **Registro de Equipamentos** | O cadastro dos equipamentos utiliza a entidade EQUIPAMENTO, que armazena `ID_EQUIPAMENTO`, `ID_FORNECEDOR`, `NM_EQUIPAMENTO`, `QT_QUANTIDADE` e `TP_STATUS`, permitindo identificar os equipamentos e seus respectivos fornecedores. |
| **Manutenção de Equipamentos** | O processo utiliza a entidade MANUTENCAO, que registra `ID_MANUTENCAO`, `ID_EQUIPAMENTO`, `DT_MANUTENCAO`, `VR_CUSTO` e `TP_STATUS`, permitindo relacionar as manutenções aos equipamentos correspondentes. |
| **Contas a Pagar** | O controle financeiro utiliza a entidade CONTAS_A_PAGAR, que armazena `ID_CONTA_PAGAR`, `ID_FORNECEDOR`, `DS_CONTA`, `VR_VALOR`, `DT_VENCIMENTO`, `DT_PAGAMENTO` e `TP_STATUS_PAGAMENTO`, permitindo acompanhar as despesas e obrigações financeiras da organização. |

##### 2. REQUISITOS FUNCIONAIS (RF)

| Código | Requisito Funcional Detalhado |
| :--- | :--- |
| **RF01** | O sistema deve permitir inserir e armazenar os dados na entidade PESSOA, incluindo `ID_PESSOA`, `NM_PESSOA`, `CD_CPF` e `NM_EMAIL`. |
| **RF02** | O sistema deve permitir registrar telefones na entidade TELEFONE, vinculando cada registro a uma pessoa por meio de `ID_PESSOA` e armazenando `NR_TELEFONE` e `TP_TELEFONE`. |
| **RF03** | O sistema deve permitir registrar alunos na entidade ALUNO, vinculando-os à entidade PESSOA por meio de `ID_PESSOA` e armazenando `DS_OBJETIVO`, `VR_ALTURA` e `VR_PESO`. |
| **RF04** | O sistema deve permitir registrar instrutores na entidade INSTRUTOR, vinculando-os à entidade PESSOA por meio de `ID_PESSOA` e armazenando `CD_CREF`, `DS_ESPECIALIDADE` e `DT_ADMISSAO`. |
| **RF05** | O sistema deve permitir cadastrar planos na entidade PLANO, armazenando `ID_PLANO`, `NM_PLANO`, `VR_VALOR` e `QT_DURACAO_MESES`. |
| **RF06** | O sistema deve permitir registrar matrículas na entidade MATRICULA, relacionando alunos e planos por meio de `ID_ALUNO` e `ID_PLANO`, além de armazenar `DT_INICIO`, `DT_FIM` e `TP_STATUS`. |
| **RF07** | O sistema deve permitir cadastrar pagamentos na entidade PAGAMENTO, vinculando-os a uma matrícula por meio de `ID_MATRICULA` e armazenando `VR_VALOR`, `DT_VENCIMENTO` e `TP_STATUS_PAGAMENTO`. |
| **RF08** | O sistema deve permitir armazenar os registros de entrada na entidade ACESSO, vinculando cada acesso a uma matrícula por meio de `ID_MATRICULA` e registrando `DT_HORA_ENTRADA`. |
| **RF09** | O sistema deve permitir cadastrar avaliações na entidade AVALIACAO_FISICA, vinculando-as ao aluno por meio de `ID_ALUNO` e armazenando `DT_AVALIACAO`, `VR_PESO` e `VR_ALTURA`. |
| **RF10** | O sistema deve permitir registrar treinos na entidade TREINO, relacionando alunos e instrutores por meio de `ID_ALUNO` e `ID_INSTRUTOR`, além de armazenar `NM_TREINO`, `DT_INICIO` e `DT_FIM`. |
| **RF11** | O sistema deve permitir registrar exercícios na entidade EXERCICIO, armazenando `NM_EXERCICIO`, `TP_GRUPO_MUSCULAR` e `DS_EXERCICIO`. |
| **RF12** | O sistema deve permitir relacionar as entidades TREINO e EXERCICIO por meio da entidade associativa TREINO_EXERCICIO, registrando `QT_SERIES`, `QT_REPETICOES`, `VR_CARGA` e `QT_INTERVALO_SEG`. |
| **RF13** | O sistema deve permitir registrar fornecedores na entidade FORNECEDOR, armazenando `NM_FORNECEDOR`, `CD_CNPJ` e `NM_EMAIL`. |
| **RF14** | O sistema deve permitir registrar equipamentos na entidade EQUIPAMENTO, vinculando-os a fornecedores por meio de `ID_FORNECEDOR` e armazenando `NM_EQUIPAMENTO`, `QT_QUANTIDADE` e `TP_STATUS`. |
| **RF15** | O sistema deve permitir cadastrar manutenções na entidade MANUTENCAO, vinculando-as aos equipamentos por meio de `ID_EQUIPAMENTO` e armazenando `DT_MANUTENCAO`, `VR_CUSTO` e `TP_STATUS`. |
| **RF16** | O sistema deve permitir cadastrar despesas na entidade CONTAS_A_PAGAR, relacionando-as aos fornecedores por meio de `ID_FORNECEDOR` e armazenando `DS_CONTA`, `VR_VALOR`, `DT_VENCIMENTO`, `DT_PAGAMENTO` e `TP_STATUS_PAGAMENTO`. |
| **RF17** | O sistema deve permitir realizar consultas aos registros das entidades do banco de dados, possibilitando a obtenção de informações sobre alunos, matrículas, pagamentos, acessos, treinos, fornecedores, equipamentos, estoque, manutenções e contas a pagar. |

##### 3. REGRAS DE NEGÓCIO (RN)

* **4.1 Regras operacionais**
  * **RN01 – Cadastro de alunos:** Todo aluno deve possuir um cadastro prévio no sistema, contendo suas informações pessoais obrigatórias, antes de realizar uma matrícula.
  * **RN02 – Registro de matrículas:** Toda matrícula deve estar vinculada a um aluno previamente cadastrado e a um plano disponível no sistema.
  * **RN03 – Cadastro de planos:** Todo plano deve possuir um nome, um valor e uma duração definida em meses, conforme os atributos estabelecidos no modelo de dados.
  * **RN04 – Vínculo de pagamentos:** Todo pagamento deve estar relacionado ao aluno correspondente e, quando aplicável, à matrícula à qual se refere.
  * **RN05 – Registro de pagamentos:** Todo pagamento deve estar vinculado ao aluno correspondente e conter, obrigatoriamente, o valor, a data de vencimento e a situação do pagamento, conforme os atributos definidos no modelo lógico.
  * **RN06 – Confirmação de pagamentos:** Um pagamento somente deve ser considerado realizado quando houver um registro correspondente no sistema, com a situação devidamente atualizada.
  * **RN07 – Situação das matrículas:** O sistema deve manter a situação de cada matrícula atualizada, permitindo identificar matrículas ativas e inativas.
  * **RN08 – Controle de acesso:** O registro de acesso deve estar relacionado a um aluno cadastrado no sistema.
  * **RN09 – Organização dos treinos:** Todo treino deve estar relacionado ao aluno e ao instrutor responsáveis, conforme os vínculos definidos no modelo de dados.
  * **RN10 – Cadastro de exercícios:** Os exercícios devem ser cadastrados previamente no sistema antes de serem associados aos treinos.
  * **RN11 – Identificação de equipamentos:** Cada equipamento deve possuir um identificador único para facilitar sua localização e controle.
  * **RN12 – Situação dos equipamentos:** Equipamentos que estiverem em manutenção devem ser identificados com a situação correspondente, permitindo diferenciá-los daqueles disponíveis para uso.
  * **RN13 – Registro de manutenção:** Toda manutenção registrada deve estar vinculada ao equipamento correspondente, contendo as informações previstas no modelo de dados.
  * **RN14 – Cadastro de fornecedores:** O fornecedor deve estar cadastrado no sistema antes de ser associado a registros de equipamentos ou contas a pagar.
  * **RN15 – Unicidade do CPF:** O CPF informado no cadastro de uma pessoa deve ser único no sistema, evitando registros duplicados.
  * **RN16 – Unicidade do CNPJ:** O CNPJ informado no cadastro de um fornecedor deve ser único, evitando duplicidade de registros.
  * **RN17 – Preenchimento obrigatório:** Os registros devem conter todas as informações obrigatórias antes de serem concluídos no sistema.
  * **RN18 – Controle de alterações:** O acesso às operações de inclusão, alteração e exclusão de informações administrativas e financeiras deve ser restrito aos usuários autorizados.
  * **RN19 – Integridade dos relacionamentos:** O sistema deve preservar os vínculos entre as entidades, evitando registros relacionados a alunos, matrículas, pagamentos, treinos, exercícios, equipamentos, fornecedores e manutenções sem as respectivas referências.
  * **RN20 – Cadastro de contas a pagar:** Toda conta a pagar deve possuir uma descrição, um valor e uma data de vencimento registrados no sistema.
  * **RN21 – Situação das contas a pagar:** Cada conta a pagar deve possuir uma situação de pagamento atualizada, permitindo identificar as despesas pendentes e as já pagas.
  * **RN22 – Registro da quitação:** Quando uma conta a pagar for quitada, a data de pagamento correspondente deve ser registrada no sistema.
  * **RN23 – Acompanhamento das despesas:** O sistema deve permitir consultar e acompanhar as contas a pagar por meio de sua descrição, valor, data de vencimento, situação e data de pagamento.
  * **RN24 – Vínculo das contas a pagar com fornecedores:** Quando uma conta a pagar estiver relacionada a um fornecedor, o sistema deverá manter esse vínculo conforme o relacionamento definido no modelo lógico.

* **4.2 Restrições organizacionais**
  * **RN25 – Proteção de dados pessoais:** O sistema deve respeitar as disposições da Lei Geral de Proteção de Dados Pessoais (LGPD), garantindo o tratamento adequado das informações armazenadas.
  * **RN26 – Restrição de acesso a informações:** Dados pessoais, financeiros e informações relacionadas às avaliações físicas dos alunos devem ser acessados somente por usuários autorizados, de acordo com suas responsabilidades.
  * **RN27 – Compatibilidade com o funcionamento da academia:** O sistema deve atender às necessidades administrativas e operacionais da academia durante seu período de funcionamento, de segunda-feira a sábado.
  * **RN28 – Registros obrigatórios:** As informações necessárias para o controle das atividades da academia devem ser registradas e mantidas organizadas no sistema, evitando a dependência exclusiva de anotações físicas.
  * **RN29 – Controle financeiro:** O sistema deve permitir o acompanhamento das informações financeiras contempladas no escopo do projeto, incluindo pagamentos de alunos e contas a pagar, com seus respectivos valores, vencimentos e situações.
  * **RN30 – Atualização dos equipamentos:** As informações sobre a situação dos equipamentos devem ser mantidas atualizadas sempre que houver alterações decorrentes de manutenção ou indisponibilidade.
  * **RN31 – Recursos disponíveis:** A implementação do sistema deve considerar os recursos financeiros, tecnológicos e humanos disponíveis na organização.
  * **RN32 – Facilidade de utilização:** O sistema deve apresentar uma interface simples e organizada, facilitando o uso pelos funcionários responsáveis pelas atividades administrativas e operacionais.

---

#### Revisão do DER Conceitual

O Diagrama Entidade-Relacionamento (DER) conceitual do sistema foi desenvolvido utilizando a ferramenta **brModelo**.

 **[Clique aqui para abrir o PDF do DER Conceitual [DER_Conceitual.pdf](docs/diagramas/DER_Conceitual.pdf)

### ***Revisão do DER conceitual – Entrega 1***

| Apontamento da correção da E1 | O que mudou no trabalho | Por quê |
| :--- | :--- | :--- |
| Ausência da entidade MODALIDADE. | A necessidade de representar as modalidades foi identificada durante o levantamento, mas a entidade MODALIDADE não foi incorporada ao DER conceitual apresentado. | A entidade permitiria organizar as modalidades oferecidas pela academia e representar suas informações de maneira independente. |
| Relacionamento COMPÕE sem os atributos de séries e repetições. | O relacionamento entre TREINO e EXERCICIO foi mantido, porém os atributos `QT_SERIES` e `QT_REPETICOES` não foram acrescentados à representação conceitual. | Esses atributos são necessários para detalhar a composição dos treinos e especificar a quantidade de séries e repetições de cada exercício. |
| FORNECEDOR representado como especialização de PESSOA. | A representação de FORNECEDOR como especialização de PESSOA foi mantida na versão do DER registrada no esqueleto. | A manutenção dessa estrutura preserva a decisão de representar fornecedores como um tipo específico de pessoa. |
| Especialização de PESSOA indicada como (p,c). | A especialização de PESSOA em ALUNO e INSTRUTOR foi mantida com a indicação parcial e exclusiva (p,c). | Essa representação indica que uma pessoa pode não pertencer a nenhuma das especializações e que não pode ser simultaneamente ALUNO e INSTRUTOR. |

---

### 1.2 Conversão do Modelo Conceitual para o Modelo Lógico

A conversão do modelo conceitual para o modelo lógico foi realizada a partir do Diagrama Entidade-Relacionamento (DER), transformando as entidades, os atributos e os relacionamentos em uma estrutura de tabelas relacionais no banco de dados da ARGOS FITNESS ACADEMIA:

* **Entidades → Tabelas:** Cada entidade identificada no modelo conceitual foi transformada em uma tabela no modelo lógico: `PESSOA`, `TELEFONE`, `ALUNO`, `INSTRUTOR`, `FORNECEDOR`, `EQUIPAMENTO`, `TREINO`, `EXERCICIO`, `TREINO_EXERCICIO`, `MATRICULA`, `PLANO`, `MANUTENCAO`, `AVALIACAO_FISICA`, `PAGAMENTO`, `ACESSO` e `CONTAS_A_PAGAR`. Cada tabela recebeu uma chave primária para identificar seus registros de maneira única.
* **Atributos → Colunas:** Os atributos das entidades foram convertidos em colunas das respectivas tabelas, respeitando suas finalidades. Atributos identificadores foram definidos como chaves primárias (PK), enquanto os demais foram formatados de acordo com os tipos de dados necessários (`INT`, `VARCHAR`, `DECIMAL`, `DATE`, `DATETIME`).
* **Relacionamentos → Chaves:** Os relacionamentos foram convertidos em vínculos utilizando chaves estrangeiras (FK), mantendo a integridade referencial dos registros entre alunos, matrículas, pagamentos, equipamentos, manutenções, fornecedores e contas a pagar.
* **Cardinalidades:** Nos relacionamentos (1:N), a chave estrangeira foi alocada na tabela do lado "muitos". Nos relacionamentos (N:M), foi criada a tabela associativa `TREINO_EXERCICIO` (representando a associação entre `TREINO` e `EXERCICIO`), com chave primária composta.
* **Generalização/Especialização:** A generalização/especialização da entidade `PESSOA` foi convertida mantendo uma tabela para a entidade genérica (`PESSOA`) e tabelas próprias para as especializações (`ALUNO` e `INSTRUTOR`), reutilizando a chave `ID_PESSOA` como PK e FK simultaneamente.

---

### 1.3 Definição de Chaves Primárias e Estrangeiras

| Tabela | Chave Primária (PK) | Chave Estrangeira (FK) |
| :--- | :--- | :--- |
| `PESSOA` | `ID_PESSOA` | Não possui |
| `TELEFONE` | `ID_TELEFONE` | `ID_PESSOA` |
| `ALUNO` | `ID_PESSOA` | `ID_PESSOA` |
| `INSTRUTOR` | `ID_PESSOA` | `ID_PESSOA` |
| `PLANO` | `ID_PLANO` | Não possui |
| `MATRICULA` | `ID_MATRICULA` | `ID_ALUNO`, `ID_PLANO` |
| `PAGAMENTO` | `ID_PAGAMENTO` | `ID_MATRICULA` |
| `ACESSO` | `ID_ACESSO` | `ID_MATRICULA` |
| `AVALIACAO_FISICA` | `ID_AVALIACAO` | `ID_ALUNO` |
| `TREINO` | `ID_TREINO` | `ID_ALUNO`, `ID_INSTRUTOR` |
| `EXERCICIO` | `ID_EXERCICIO` | Não possui |
| `TREINO_EXERCICIO` | `ID_TREINO` e `ID_EXERCICIO` (chave composta) | `ID_TREINO`, `ID_EXERCICIO` |
| `FORNECEDOR` | `ID_FORNECEDOR` | Não possui |
| `EQUIPAMENTO` | `ID_EQUIPAMENTO` | `ID_FORNECEDOR` |
| `MANUTENCAO` | `ID_MANUTENCAO` | `ID_EQUIPAMENTO` |
| `CONTAS_A_PAGAR` | `ID_CONTA_PAGAR` | `ID_FORNECEDOR` |

---

### 1.4 Processo de Normalização (1FN, 2FN e 3FN)

| Forma Normal | Aplicação no modelo lógico |
| :--- | :--- |
| **1ª Forma Normal (1FN)** | O modelo atende à Primeira Forma Normal ao manter os atributos com valores atômicos, sem grupos repetidos ou multivalorados. Por exemplo, os telefones das pessoas foram isolados na tabela `TELEFONE`. Da mesma forma, os exercícios foram organizados na tabela `EXERCICIO`. |
| **2ª Forma Normal (2FN)** | O modelo atende à Segunda Forma Normal porque todos os atributos não-chave dependem integralmente da chave primária de suas tabelas. Na tabela `TREINO_EXERCICIO` (PK composta por `ID_TREINO` e `ID_EXERCICIO`), os atributos `QT_SERIES`, `QT_REPETICOES`, `VR_CARGA` e `QT_INTERVALO_SEG` dependem funcionalmente da combinação de ambas as chaves. |
| **3ª Forma Normal (3FN)** | O modelo atende à Terceira Forma Normal ao eliminar dependências transitivas entre atributos não-chave. As informações foram distribuídas em entidades próprias (`PESSOA`, `ALUNO`, `INSTRUTOR`, `PLANO`, `MATRICULA`, `PAGAMENTO`), evitando repetição de dados pessoais ou comerciais em tabelas distintas. |

---

### 1.5 Justificativas Técnicas das Decisões

#### Justificativa das chaves primárias

| Tabela | Chave primária | Justificativa |
| :--- | :--- | :--- |
| `PESSOA` | `ID_PESSOA` | Identifica cada pessoa cadastrada de maneira única. |
| `TELEFONE` | `ID_TELEFONE` | Identifica individualmente cada telefone cadastrado. |
| `ALUNO` | `ID_PESSOA` | Reutiliza o identificador da pessoa para identificar o aluno como uma especialização de PESSOA. |
| `INSTRUTOR` | `ID_PESSOA` | Reutiliza o identificador da pessoa para identificar o instrutor como uma especialização de PESSOA. |
| `PLANO` | `ID_PLANO` | Identifica cada plano oferecido pela academia. |
| `MATRICULA` | `ID_MATRICULA` | Identifica individualmente cada matrícula realizada. |
| `PAGAMENTO` | `ID_PAGAMENTO` | Identifica cada registro de pagamento. |
| `ACESSO` | `ID_ACESSO` | Identifica cada registro de entrada do aluno na academia. |
| `AVALIACAO_FISICA` | `ID_AVALIACAO` | Identifica individualmente cada avaliação física registrada. |
| `TREINO` | `ID_TREINO` | Identifica cada treino elaborado para um aluno. |
| `EXERCICIO` | `ID_EXERCICIO` | Identifica cada exercício cadastrado. |
| `TREINO_EXERCICIO` | `ID_TREINO` + `ID_EXERCICIO` | Formam uma chave primária composta para identificar a associação entre um treino e um exercício, evitando associações duplicadas. |
| `FORNECEDOR` | `ID_FORNECEDOR` | Identifica individualmente cada fornecedor cadastrado. |
| `EQUIPAMENTO` | `ID_EQUIPAMENTO` | Identifica cada equipamento registrado no sistema. |
| `MANUTENCAO` | `ID_MANUTENCAO` | Identifica cada registro de manutenção realizado. |
| `CONTAS_A_PAGAR` | `ID_CONTA_PAGAR` | Identifica cada despesa ou obrigação financeira cadastrada. |

#### Justificativa das chaves estrangeiras e dos relacionamentos

| Relacionamento | Chave estrangeira | Justificativa |
| :--- | :--- | :--- |
| PESSOA e TELEFONE | `TELEFONE.ID_PESSOA` | Permite associar um ou mais telefones a uma pessoa cadastrada, evitando armazenar vários números em um único campo. |
| PESSOA e ALUNO | `ALUNO.ID_PESSOA` | Relaciona o cadastro específico do aluno aos seus dados gerais armazenados em PESSOA. |
| PESSOA e INSTRUTOR | `INSTRUTOR.ID_PESSOA` | Relaciona o cadastro do instrutor aos seus dados pessoais armazenados em PESSOA. |
| ALUNO e MATRICULA | `MATRICULA.ID_ALUNO` | Permite associar cada matrícula ao aluno correspondente, possibilitando que um aluno possua diferentes registros de matrícula. |
| PLANO e MATRICULA | `MATRICULA.ID_PLANO` | Identifica o plano contratado em cada matrícula, permitindo que um mesmo plano seja utilizado em diferentes matrículas. |
| MATRICULA e PAGAMENTO | `PAGAMENTO.ID_MATRICULA` | Relaciona os pagamentos à matrícula correspondente, permitindo registrar diferentes pagamentos para uma mesma matrícula. |
| MATRICULA e ACESSO | `ACESSO.ID_MATRICULA` | Associa os registros de entrada à matrícula utilizada pelo aluno para acessar a academia. |
| ALUNO e AVALIACAO_FISICA | `AVALIACAO_FISICA.ID_ALUNO` | Permite armazenar diferentes avaliações físicas para um mesmo aluno, mantendo seu histórico de acompanhamento. |
| ALUNO e TREINO | `TREINO.ID_ALUNO` | Identifica o aluno para o qual cada treino foi elaborado, permitindo que um aluno possua diferentes treinos ao longo do tempo. |
| INSTRUTOR e TREINO | `TREINO.ID_INSTRUTOR` | Identifica o instrutor responsável pela elaboração de cada treino. |
| TREINO e EXERCICIO | `TREINO_EXERCICIO.ID_TREINO` e `ID_EXERCICIO` | A tabela associativa TREINO_EXERCICIO implementa o relacionamento muitos para muitos (N:N), permitindo que um treino contenha vários exercícios e que um exercício participe de diferentes treinos. |
| FORNECEDOR e EQUIPAMENTO | `EQUIPAMENTO.ID_FORNECEDOR` | Relaciona os equipamentos aos fornecedores responsáveis pelo seu fornecimento. |
| EQUIPAMENTO e MANUTENCAO | `MANUTENCAO.ID_EQUIPAMENTO` | Permite associar diferentes registros de manutenção a um mesmo equipamento, mantendo seu histórico. |
| FORNECEDOR e CONTAS_A_PAGAR | `CONTAS_A_PAGAR.ID_FORNECEDOR` | Relaciona cada obrigação financeira ao fornecedor correspondente, facilitando o controle das despesas. |

#### Justificativa das restrições aplicadas

| Restrição | Aplicação no modelo | Regra de negócio relacionada |
| :--- | :--- | :--- |
| Unicidade da chave primária | Cada registro deve possuir um identificador exclusivo. | RN19 |
| Unicidade do CPF | O CPF deve identificar uma única pessoa cadastrada. | RN15 |
| Unicidade do CNPJ | O CNPJ deve identificar um único fornecedor. | RN16 |
| Obrigatoriedade dos dados | Os campos essenciais devem ser preenchidos antes da conclusão do cadastro. | RN17 |
| Integridade referencial | As chaves estrangeiras devem apontar para registros existentes nas tabelas relacionadas. | RN19 |
| Situação da matrícula | O status deve representar a condição da matrícula, como ativa ou inativa. | RN07 |
| Situação do pagamento | O pagamento deve possuir valor, data de vencimento e situação registrados. | RN05 |
| Registro de acesso | O acesso deve estar relacionado ao aluno correspondente. | RN08 |
| Identificação de equipamentos | Cada equipamento deve possuir um identificador próprio. | RN11 |
| Situação de manutenção | Equipamentos em manutenção devem ter sua situação atualizada. | RN12 e RN30 |
| Registro de contas a pagar | Cada despesa deve conter descrição, valor e data de vencimento. | RN20 |
| Acompanhamento das despesas | As contas a pagar devem possuir situação e, quando quitadas, data de pagamento. | RN21, RN22 e RN23 |
| Associação com fornecedor | Os registros de despesas devem permitir identificar o fornecedor relacionado, conforme o modelo. | RN24 |

#### Justificativa das decisões arquiteturais gerais do modelo

A arquitetura do banco de dados da ARGOS FITNESS foi organizada de forma relacional, distribuindo as informações em tabelas específicas de acordo com os principais processos da academia. A separação de `PESSOA` das tabelas `ALUNO` e `INSTRUTOR` evita duplicidades de dados cadastrais. A criação da tabela `TELEFONE` permite múltiplos contatos por pessoa. 

Para a gestão de exercícios e treinos, a separação de `TREINO` e `EXERCICIO` com a tabela associativa `TREINO_EXERCICIO` oferece flexibilidade na montagem das fichas. As movimentações financeiras de receitas (`PAGAMENTO`) e despesas (`CONTAS_A_PAGAR`) foram isoladas para garantir clareza contábil. A separação entre `EQUIPAMENTO` e `MANUTENCAO` garante a rastreabilidade do histórico patrimonial, enquanto o cadastro central de `FORNECEDOR` atende tanto aos equipamentos quanto às contas a pagar.

---

### 1.6 Proposta de Arquitetura Analítica para BI e IA

A arquitetura analítica proposta para a ARGOS FITNESS ACADEMIA visa aproveitar os dados operacionais armazenados para dar suporte às decisões gerenciais e financeiras da administração.

#### Informações estratégicas para a gestão

* **Gestão de alunos:** Acompanhar a quantidade de alunos cadastrados, matrículas e situações contratuais.
* **Gestão financeira:** Monitorar recebimentos de mensalidades, faturamentos e acompanhamento de contas a pagar.
* **Gestão de planos:** Analisar a adesão e atratividade dos planos disponibilizados.
* **Controle de equipamentos e manutenção:** Monitorar a disponibilidade dos aparelhos e os custos acumulados com reparos.
* **Organização de treinos:** Consultar as fichas prescritas e a frequência dos alunos.

#### Indicadores e métricas gerenciais (KPIs) e Rastreabilidade

| Problema ou KPI | Tabelas envolvidas | Consulta no script |
| :--- | :--- | :--- |
| **KPI01** — Quantidade de matrículas por situação | `MATRICULA` | `G06` — Total de matrículas agrupadas por situação |
| **KPI02** — Valor total de pagamentos por situação | `PAGAMENTO` | `G07` — Soma dos valores de pagamentos por situação |
| **KPI03** — Custo de manutenção por mês | `MANUTENCAO` | `G08` — Soma dos custos de manutenção agrupados por mês |
| **KPI04** — Quantidade de equipamentos por situação | `EQUIPAMENTO` | `G09` — Total de equipamentos agrupados por situação |
| **KPI05** — Frequência de acessos por mês | `ACESSO`, `MATRICULA` | `G10` — Quantidade de acessos agrupados por mês |
| **KPI06** — Total de contas a pagar por situação | `CONTAS_A_PAGAR` | `G11` — Soma dos valores de contas a pagar agrupados por situação |

---

## 2. Modelo Lógico Relacional
 **Modelo lógico revisado:** [Modelo_Logico.png](docs/diagramas/Modelo_Logico.png)

O Modelo Lógico Relacional foi desenvolvido utilizando a ferramenta **brModelo**.



*O modelo contempla todas as tabelas, tipos físicos de dados (`INT`, `VARCHAR`, `DECIMAL`, `DATE`, `DATETIME`), chaves primárias (PK), chaves estrangeiras (FK) e cardinalidades já convertidas.*

---

## 3. Script SQL Completo

O script SQL de estrutura (criação do banco, tabelas e restrições) está armazenado na pasta `docs/`. A carga de dados de teste está em um arquivo separado:

 **[Clique aqui para acessar o Script SQL Completo:**
 [script.sql](docs/script.sql)
 


## 4. Massa de Dados

A massa de dados fictícia foi gerada de forma proporcional e consistente com o porte real da ARGOS FITNESS (aprox. 250 alunos, 18 funcionários, 45 equipamentos). Ela permite validar cenários operacionais reais, como pagamentos em dia/atrasados, manutenções em aberto/concluídas e registros diários de acesso à catraca.

A massa de dados está integrada no próprio arquivo do script SQL:
 **[Clique aqui para acessar a Carga de Dados no Script SQL (massa_de_dados.sql)](docs/massa_de_dados.sql)

---

## 5. Repositório GitHub e Dicionário de Dados

Os artefatos finais estão organizados na estrutura de arquivos do repositório:

**DER conceitual revisado:** [DER_Conceitual.pdf](docs/diagramas/DER_Conceitual.pdf)
- **Modelo lógico revisado:** [Modelo_Logico.png](docs/diagramas/Modelo_Logico.png)
- **Dicionário de Dados v2.0 (HTML):** [abrir dicionário](docs/01-Dicionario-de-Dados/Dicionario-de-Dados-Argos-Fitness.html)
- **Levantamento:** [abrir levantamento](levantamento/Levantamento.md)

---

## 6. Uso de Inteligência Artificial

| Item | Registro de Uso |
| :--- | :--- |
| **Ferramentas e Etapas** | **ChatGPT e Gemini** utilizados no levantamento de processos, requisitos funcionais/não funcionais, pesquisa de regras de negócio em academias, apoio no processo de normalização (1FN a 3FN), geração da massa de dados fictícia e apoio à construção de consultas SQL. |
| **Motivação** | Agilizar pesquisas sobre processos típicos do segmento de academias, estruturar rascunhos de tabelas normalizadas e gerar grandes volumes de dados fictícios coerentes para inserção SQL. |
| **Prompts utilizados** | Solicitação para estruturar tabelas de banco de dados relacional para gestão de academias, validação de chaves em 3FN e geração de dados fictícios em sintaxe MySQL. |
| **Resposta recebida** | Sugestões de atributos, relacionamentos, modelos de regras operacionais e scripts SQL com inserções de exemplo. |
| **Fontes consultadas** | As sugestões foram comparadas e validadas diretamente com as informações obtidas na entrevista com o responsável da ARGOS FITNESS e com a documentação do MySQL 8.0. |
| **Trechos rejeitados/corrigidos** | Foram descartadas sugestões de módulos complexos de agendamento de aulas em grupo, integração bancária direta de PIX/boletos, aplicativo próprio e catraca com biometria facial, pois não faziam parte da realidade comprovada na academia. |
| **Justificativa da escolha final** | As respostas das IAs foram utilizadas apenas como ferramenta de apoio à escrita e geração de dados de teste, permanecendo todas as decisões de modelagem sob responsabilidade exclusiva do grupo. |
| **Reflexão crítica** | A Inteligência Artificial acelerou a produção da documentação e a criação de testes, porém exigiu rigorosa análise crítica para evitar a inclusão de funcionalidades genéricas desnecessárias ou incompatíveis com o escopo real da organização estudada. |

---

## 7. Apresentação Corporativa Final

Roteiro cronometrado (Pitch de 8 minutos):
1. **Contextualização:** Apresentação da ARGOS FITNESS e dos problemas enfrentados com a dispersão de dados em cadernos/planilhas.
2. **Solução Proposta:** Apresentação do sistema de banco de dados relacional centralizado.
3. **Modelo Lógico:** Demonstração da estrutura de tabelas, chaves e normalização.
4. **Demonstração SQL:** Execução ao vivo do script no MySQL.
5. **Consultas de Impacto:** Validação de consultas gerenciais (KPIs) e de auditoria de dados.
6. **Potencial BI/IA:** Apresentação dos caminhos para análises preditivas financeiras e de manutenção.
7. **Benefícios Diretos:** Conclusão demonstrando a otimização de tempo, controle financeiro e facilidade operacional para a gestão.
