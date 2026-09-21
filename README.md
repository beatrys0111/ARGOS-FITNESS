# ARGOS FITNESS — Sistema de Gestão de Academia

## Entrega 1 — Modelo Conceitual (DER)

Projeto acadêmico de modelagem de dados desenvolvido para a **ARGOS FITNESS**, uma academia de bairro localizada em Itaquera, São Paulo.

O projeto tem como objetivo levantar os processos da organização, identificar seus requisitos e representar seus principais dados por meio de uma **modelagem conceitual de banco de dados**, utilizando um Diagrama Entidade-Relacionamento (DER).

---

## Metadados

### Integrantes

| Nome | RGM |
|---|---:|
| Paulo Henrique Quintiliano dos Santos | 48164143 |
| Beatrys Anunciato de Lima | 48219886 |
| Kauanny Duarte Santos | 48164143 |
| João Lucas da Conceição Pereira | 47617322 |

---

# 1. Caracterização da Organização

## Nome e natureza da organização

A organização selecionada para a realização da pesquisa de campo foi a **ARGOS FITNESS**, uma academia de bairro voltada a atividades físicas e condicionamento corporal.

A organização foi escolhida como objeto de estudo para o desenvolvimento do projeto de Banco de Dados. A pesquisa de campo teve como objetivo conhecer o funcionamento da academia, observar seus processos e levantar informações relevantes para a definição dos requisitos do banco de dados.

## Contexto e porte

A **ARGOS FITNESS** é uma academia de bairro com fins lucrativos, que oferece serviços voltados à prática de atividades físicas.

A organização atende a mais de **300 alunos** e conta com aproximadamente **25 colaboradores**, distribuídos entre as áreas de recepção, limpeza, manutenção de equipamentos e instrução de atividades físicas.

Entre os profissionais estão professores de lutas, dança, aeróbica e personal trainers, além de funcionários responsáveis pela manutenção e pelo funcionamento geral da academia.

A academia disponibiliza diferentes modalidades de atividades físicas, como:

- Dança;
- Boxe;
- Treinamento funcional;
- Taekwondo;
- Pilates;
- Muay Thai.

Sua receita é obtida principalmente por meio da cobrança de mensalidades e da oferta de aulas avulsas.

O estabelecimento funciona de **segunda-feira a sábado**, atendendo a uma demanda média de aproximadamente **250 mensalidades mensais**.

Os valores dos planos variam entre **R$ 90,00 e R$ 150,00**, de acordo com os serviços e modalidades oferecidos.

## Problemas e necessidades identificados

Durante a pesquisa de campo foram identificadas limitações relacionadas ao gerenciamento e à organização das informações da academia.

O processo atual apresenta um nível de simplicidade elevado, concentrando-se principalmente no:

- Registro da matrícula dos alunos;
- Identificação dos alunos;
- Controle das datas de pagamento das mensalidades.

Também foram observadas situações em que os **cadastros dos alunos permanecem incompletos**, dificultando a manutenção de informações atualizadas e o acompanhamento adequado do histórico de cada aluno.

Outro ponto identificado foi a utilização frequente de **documentos e registros em papel** para controlar determinadas informações e relações entre alunos, funcionários, modalidades e pagamentos.

Esse método pode dificultar:

- A consulta das informações;
- A atualização dos dados;
- A organização dos registros;
- O acompanhamento histórico;
- A prevenção de perda ou duplicidade de informações;
- A manutenção da consistência dos dados.

Diante dessas necessidades, identificou-se a oportunidade de desenvolver um **banco de dados estruturado**, capaz de centralizar as informações da academia e estabelecer relacionamentos entre os principais elementos de sua operação, como alunos, matrículas, modalidades, professores, planos e pagamentos.

## Justificativa da escolha

A **ARGOS FITNESS** foi escolhida pelo grupo por apresentar uma estrutura operacional que envolve diferentes relações entre alunos, matrículas, planos, pagamentos, modalidades, professores e funcionários, proporcionando um cenário adequado para o desenvolvimento e aplicação dos conhecimentos relacionados a banco de dados.

A organização também apresenta um porte compatível com a proposta do projeto, oferecendo um nível de complexidade suficiente para que o grupo possa identificar problemas reais e propor melhorias, sem tornar a análise e o desenvolvimento inviáveis.

Outro fator importante para a escolha foi a **facilidade de acesso à organização e aos seus responsáveis**. O grupo possui disponibilidade para realizar visitas, esclarecer dúvidas e obter informações diretamente com os proprietários e gestores da academia, favorecendo uma pesquisa de campo mais precisa e alinhada à realidade da organização.

## Evidência da organização

**ARGOS FITNESS ACADEMIA**

Rua José Oiticica Filho, 1008 — Itaquera, São Paulo — SP, 08210-510

Telefone: (11) 2074-0145

[Localização da ARGOS FITNESS no Google Maps](https://maps.app.goo.gl/atC6Nw4yhaU8ndBn6)

---

# 2. Processos de Negócio

Durante a pesquisa de campo realizada na **ARGOS FITNESS**, foram identificados os principais processos relacionados ao funcionamento e à gestão da academia.

## Principais processos mapeados

### Cadastro de alunos

Registro e atualização dos dados pessoais, contatos, endereço e informações cadastrais dos alunos.

### Matrícula e gerenciamento de planos

Realização das matrículas, definição do plano contratado, controle do período de vigência e acompanhamento do status do aluno.

### Controle de pagamentos

Registro das mensalidades, valores pagos, datas de pagamento, formas de pagamento e situações de pendência.

### Cadastro e gerenciamento de modalidades

Organização das diferentes atividades oferecidas pela academia, como musculação, dança, boxe, funcional, taekwondo, pilates e muay thai.

### Gestão de professores e instrutores

Cadastro dos profissionais responsáveis pelas modalidades e acompanhamento de sua relação com os alunos e treinos.

### Controle de treinos

Registro das fichas de exercícios, objetivos dos alunos, exercícios prescritos, séries, repetições, cargas e instrutores responsáveis.

### Controle de acesso

Registro das entradas dos alunos na academia, permitindo acompanhar a frequência e o histórico de acessos.

### Controle de equipamentos e materiais

Cadastro dos aparelhos e demais materiais utilizados na academia, incluindo informações de aquisição, patrimônio, localização e situação de uso.

### Manutenção de equipamentos

Registro de manutenções preventivas e corretivas, problemas identificados, serviços realizados, custos e próximas revisões.

### Gestão de fornecedores

Cadastro e acompanhamento das empresas responsáveis pelo fornecimento de equipamentos, materiais e serviços de manutenção.

## Fluxogramas

Os fluxogramas dos principais processos serão anexados ao repositório conforme o desenvolvimento da entrega.

---

# 3. Requisitos do Sistema

O sistema deverá permitir o gerenciamento integrado das principais informações e processos da **ARGOS FITNESS**, proporcionando maior organização, centralização e controle dos dados.

## 3.1 Requisitos Funcionais

### RF01 — Cadastrar alunos

O sistema deverá permitir o cadastro de alunos, incluindo dados pessoais, contato, endereço, contato de emergência e status do cadastro.

### RF02 — Atualizar dados dos alunos

O sistema deverá permitir corrigir ou complementar informações cadastrais dos alunos.

### RF03 — Registrar matrículas

O sistema deverá permitir registrar matrículas, relacionando o aluno ao plano contratado e à data de início da matrícula.

### RF04 — Cadastrar planos

O sistema deverá permitir cadastrar e gerenciar planos, incluindo nome, valor e dia de vencimento.

### RF05 — Registrar pagamentos

O sistema deverá permitir registrar pagamentos, armazenando valor pago, data, forma de pagamento e situação da mensalidade.

### RF06 — Identificar pagamentos pendentes

O sistema deverá permitir acompanhar mensalidades em aberto ou em atraso.

### RF07 — Cadastrar modalidades

O sistema deverá permitir registrar as atividades oferecidas pela academia.

### RF08 — Cadastrar professores e instrutores

O sistema deverá permitir cadastrar professores e instrutores, relacionando cada profissional às modalidades e aos treinos sob sua responsabilidade.

### RF09 — Registrar fichas de treino

O sistema deverá permitir registrar fichas de treino, vinculando o aluno ao instrutor e armazenando objetivos, exercícios, séries, repetições e cargas.

### RF10 — Registrar acesso dos alunos

O sistema deverá registrar a data e o horário de entrada dos alunos na academia para controle de frequência.

### RF11 — Cadastrar equipamentos e materiais

O sistema deverá permitir cadastrar equipamentos e materiais, incluindo nome, categoria, patrimônio, data de aquisição, valor e situação de uso.

### RF12 — Cadastrar fornecedores

O sistema deverá permitir cadastrar fornecedores, armazenando informações cadastrais, contatos, categorias de fornecimento e endereço.

### RF13 — Registrar manutenções

O sistema deverá permitir registrar manutenções de equipamentos, incluindo equipamento, fornecedor ou assistência responsável, tipo de manutenção, data, descrição, custo e próxima revisão.

### RF14 — Consultar informações

O sistema deverá permitir localizar rapidamente informações relacionadas a alunos, matrículas, pagamentos, treinos, equipamentos, fornecedores e manutenções.

### RF15 — Gerar informações e relatórios

O sistema deverá permitir gerar informações e relatórios de acompanhamento relacionados a alunos, pagamentos, frequência, equipamentos e demais processos administrativos.

### RF16 — Centralizar os dados

O sistema deverá centralizar as informações dos diferentes processos em um único banco de dados.

### RF17 — Manter histórico

O sistema deverá manter o histórico de informações relacionadas a matrículas, pagamentos, acessos, treinos e manutenções.

---

## 3.2 Requisitos Não Funcionais

### Desempenho

O sistema deverá realizar cadastros, alterações e registros de informações de forma rápida, sem apresentar demora significativa nas operações.

### Segurança

O sistema deverá proteger os dados armazenados, restringindo o acesso às informações de acordo com o nível de autorização dos usuários.

### Usabilidade

A interface deverá ser simples, intuitiva e organizada, permitindo que funcionários e gestores utilizem o sistema com facilidade.

### Disponibilidade

O sistema deverá estar disponível durante o horário de funcionamento da academia.

### Confiabilidade

Os dados registrados deverão ser armazenados de forma consistente, reduzindo o risco de perda, duplicidade ou inconsistência das informações.

### Manutenibilidade

O sistema deverá possuir uma estrutura organizada que facilite futuras correções, atualizações e inclusão de novas funcionalidades.

### Escalabilidade

A solução deverá permitir o crescimento da quantidade de alunos, funcionários, modalidades, pagamentos e demais registros sem comprometer seu funcionamento.

### Backup e recuperação

Os dados deverão possuir mecanismos de cópia de segurança e recuperação.

### Privacidade

As informações pessoais e cadastrais dos alunos deverão ser tratadas de forma adequada, permitindo acesso somente aos usuários autorizados.

---

# 4. Regras de Negócio

Com base nos processos identificados na **ARGOS FITNESS**, foram estabelecidas as seguintes regras de funcionamento:

### RN01 — Cadastro do aluno

Um aluno só poderá realizar uma matrícula se possuir um cadastro válido no sistema.

### RN02 — Plano da matrícula

Uma matrícula deverá estar vinculada a um plano previamente cadastrado.

### RN03 — Dados do plano

Um plano deverá possuir um valor e uma data de vencimento definidos.

### RN04 — Pagamento

Um pagamento deverá estar vinculado a um aluno e, quando aplicável, à respectiva matrícula.

### RN05 — Dados do pagamento

Um pagamento deverá possuir data, valor, forma de pagamento e status definidos.

### RN06 — Confirmação de pagamento

Uma mensalidade poderá ser considerada paga somente após o registro do respectivo pagamento.

### RN07 — Status do aluno

Um aluno com cadastro inativo ou trancado não deverá ser considerado ativo para novos registros de acesso ou matrícula.

### RN08 — Controle de acesso

Um registro de acesso somente poderá ser realizado para um aluno cadastrado e apto a frequentar a academia.

### RN09 — Treino

Um treino deverá estar vinculado a um aluno e a um instrutor responsável.

### RN10 — Modalidade

Uma modalidade deverá estar previamente cadastrada para poder ser associada a alunos ou instrutores.

### RN11 — Equipamentos

Um equipamento deverá possuir um cadastro único, identificado por seu número de série ou patrimônio, quando disponível.

### RN12 — Equipamento em manutenção

Um equipamento em manutenção não deverá ser considerado disponível para utilização até que sua situação seja alterada para ativa.

### RN13 — Manutenção

Uma manutenção deverá estar vinculada a um equipamento cadastrado.

### RN14 — Fornecedor

Um fornecedor deverá possuir cadastro antes de ser associado à aquisição de equipamentos ou à realização de serviços de manutenção.

### RN15 — CPF

O sistema deverá impedir o cadastro de dois alunos com o mesmo CPF.

### RN16 — CNPJ

O sistema deverá impedir o cadastro duplicado de fornecedores utilizando o mesmo CNPJ.

### RN17 — Campos obrigatórios

Informações obrigatórias deverão ser preenchidas antes da conclusão de um cadastro ou registro.

### RN18 — Controle de acesso às informações

Somente usuários autorizados deverão poder alterar ou excluir informações administrativas e financeiras.

### RN19 — Integridade dos relacionamentos

As informações registradas deverão manter seus relacionamentos entre alunos, matrículas, pagamentos, treinos, equipamentos, fornecedores e manutenções.

---

## Restrições Organizacionais

### Proteção dos dados pessoais

O sistema deverá considerar a proteção dos dados pessoais dos alunos, como CPF, endereço, telefone e informações de contato.

### Acesso restrito

Informações financeiras, cadastrais e relacionadas à saúde ou anamnese deverão ser acessíveis somente aos funcionários autorizados.

### Compatibilidade com a rotina

O sistema deverá ser compatível com o funcionamento da academia, que opera de segunda-feira a sábado.

### Registros obrigatórios

Determinadas informações deverão ser preenchidas antes da conclusão de um cadastro, matrícula ou outro processo.

### Controle financeiro

Os registros de mensalidades e pagamentos deverão seguir os valores e condições dos planos oferecidos pela academia.

### Controle de equipamentos

Equipamentos que estejam em manutenção ou fora de operação deverão possuir seu status atualizado no sistema.

### Limitação de recursos

A solução deverá considerar os recursos financeiros, tecnológicos e humanos disponíveis na organização.

### Facilidade de adaptação

O sistema deverá ser simples e adequado ao nível de familiaridade dos funcionários com ferramentas informatizadas.

---

# 5. Dicionário de Dados Conceitual

O Dicionário de Dados apresenta a estrutura das entidades, atributos, tipos de dados, chaves, relacionamentos e regras associadas ao modelo.

O documento completo está disponível no repositório:

**[📄 Acessar Dicionário de Dados — Argos Fitness](docs/01-Dicionario-de-Dados/Dicionario-de-Dados-Argos-Fitness.pdf)**

## Entidades identificadas no modelo

- PESSOA
- INSTRUTOR
- ALUNO
- TELEFONE
- PLANO
- PAGAMENTO
- TREINO
- EXERCICIO
- TREINO_EXERCICIO
- AVALIACAO_FISICA
- FORNECEDOR
- EQUIPAMENTO
- MANUTENCAO
- ESTOQUE

## Principais relações

| Entidade | Relacionamento | Cardinalidade |
|---|---|---|
| PESSOA | INSTRUTOR | 1 : 0..1 |
| PESSOA | ALUNO | 1 : 0..1 |
| PESSOA | TELEFONE | 1 : N |
| FORNECEDOR | EQUIPAMENTO | 1 : N |
| FORNECEDOR | ESTOQUE | 1 : N |
| EQUIPAMENTO | MANUTENCAO | 1 : N |
| PLANO | ALUNO | 1 : N |
| ALUNO | PAGAMENTO | 1 : N |
| ALUNO | TREINO | 1 : N |
| INSTRUTOR | TREINO | 1 : N |
| TREINO | EXERCICIO | N : M |
| ALUNO | AVALIACAO_FISICA | 1 : N |
| INSTRUTOR | AVALIACAO_FISICA | 1 : N |

> A documentação detalhada do Dicionário de Dados apresenta os atributos, tipos físicos, PKs, FKs e índices de cada entidade.

---
//EDITAR//
# 6. Modelagem Conceitual

## Entidades reconhecidas

### PESSOA

Entidade cadastral-base utilizada para armazenar os dados de identificação das pessoas relacionadas ao sistema.

### ALUNO

Representa o perfil do aluno matriculado na academia e associado a um plano.

### INSTRUTOR

Representa o profissional responsável por treinos e avaliações.

### TELEFONE

Armazena números de telefone associados a uma pessoa.

### PLANO

Representa os planos disponibilizados pela academia, incluindo nome, valor, duração e situação.

### PAGAMENTO

Registra os pagamentos associados aos alunos.

### TREINO

Representa um treino planejado para um aluno e associado a um instrutor.

### EXERCICIO

Representa o catálogo de exercícios disponíveis para composição dos treinos.

### TREINO_EXERCICIO

É a entidade associativa entre TREINO e EXERCICIO, armazenando informações como séries, repetições, carga e intervalo.

### AVALIACAO_FISICA

Registra avaliações físicas realizadas em alunos por instrutores.

### FORNECEDOR

Representa as empresas responsáveis pelo fornecimento de equipamentos, materiais e serviços.

### EQUIPAMENTO

Representa os equipamentos utilizados pela academia.

### MANUTENCAO

Registra manutenções preventivas e corretivas realizadas nos equipamentos.

### ESTOQUE

Representa os itens controlados pelo estoque da academia.

---

# 7. Diagrama Entidade-Relacionamento (DER)

O Diagrama Entidade-Relacionamento representa visualmente:

- Entidades;
- Atributos;
- Chaves primárias;
- Chaves estrangeiras;
- Relacionamentos;
- Cardinalidades.

## DER do sistema

> **Imagem do DER será anexada nesta seção.**

![Diagrama Entidade-Relacionamento — Argos Fitness](docs/02-Diagrama-Entidade-Relacionamento/DER-Argos-Fitness.png)

O modelo foi estruturado buscando representar os principais processos identificados na pesquisa de campo e permitir sua expansão nas próximas etapas do projeto.

---

# 8. Justificativa Técnica

A modelagem do banco de dados da **ARGOS FITNESS** foi definida a partir dos principais processos identificados durante a pesquisa de campo, buscando representar de forma organizada as informações necessárias para o funcionamento da academia.

As entidades, atributos, relacionamentos e cardinalidades foram escolhidos considerando a realidade observada na organização, evitando tanto a criação de estruturas desnecessárias quanto a concentração excessiva de informações em uma única entidade.

## Aluno

A entidade **ALUNO** representa um dos principais elementos do modelo, pois está diretamente relacionada aos processos de matrícula, planos, pagamentos, treinos, acessos e avaliações físicas.

A separação dos dados permite manter as informações do aluno organizadas e relacioná-las aos demais processos da academia.

## Pessoa e especializações

A entidade **PESSOA** funciona como cadastro-base, enquanto **ALUNO** e **INSTRUTOR** representam perfis especializados.

Essa abordagem permite evitar a repetição de dados cadastrais e possibilita que diferentes perfis sejam relacionados à mesma estrutura de identificação.

## Plano

A entidade **PLANO** foi separada porque representa uma informação independente do aluno.

Dessa forma, diferentes alunos podem estar associados ao mesmo plano, evitando a repetição de informações como nome, valor e duração.

## Pagamento

A entidade **PAGAMENTO** foi criada separadamente porque um aluno pode possuir diversos registros financeiros ao longo do tempo.

Essa estrutura permite manter o histórico de pagamentos sem sobrescrever registros anteriores.

## Instrutor

A entidade **INSTRUTOR** representa os profissionais responsáveis pela elaboração dos treinos e realização das avaliações físicas.

Sua separação permite relacionar o profissional a diferentes treinos e avaliações.

## Treino e exercício

A entidade **TREINO** representa a ficha de treino associada ao aluno e ao instrutor.

A entidade **EXERCICIO** funciona como catálogo dos exercícios disponíveis.

Como um treino pode possuir diversos exercícios e um exercício pode fazer parte de diferentes treinos, foi utilizada a entidade associativa **TREINO_EXERCICIO**, responsável por armazenar informações específicas da execução do exercício, como séries, repetições, carga e intervalo.

## Avaliação física

A entidade **AVALIACAO_FISICA** foi separada para permitir o registro de diferentes avaliações realizadas ao longo do tempo.

Essa estrutura permite acompanhar informações como peso, altura, percentual de gordura e IMC.

## Fornecedor, equipamento, manutenção e estoque

O núcleo de logística foi estruturado por meio das entidades **FORNECEDOR**, **EQUIPAMENTO**, **MANUTENCAO** e **ESTOQUE**.

Um fornecedor pode estar relacionado a diversos equipamentos e itens de estoque.

Um equipamento pode possuir diversos registros de manutenção, permitindo preservar seu histórico de intervenções.

## Chaves e integridade

As **chaves primárias (PK)** permitem identificar cada registro de forma única.

As **chaves estrangeiras (FK)** estabelecem os relacionamentos entre as entidades e contribuem para a integridade referencial do modelo.

## Normalização e redução de redundância

A separação das entidades busca reduzir a redundância de dados, facilitar atualizações e preservar a consistência das informações.

A utilização de entidades associativas também permite representar relacionamentos de maior complexidade, como a relação N:M entre treinos e exercícios.

## Escalabilidade

A estrutura foi pensada para permitir a expansão do sistema conforme novas necessidades sejam identificadas na organização.

Dessa forma, o modelo procura equilibrar:

- Representatividade;
- Simplicidade;
- Integridade;
- Redução de redundância;
- Possibilidade de expansão.

---

# 9. Uso de Inteligência Artificial

Durante o desenvolvimento do projeto, foi utilizada a ferramenta **ChatGPT** como apoio em etapas de organização, revisão e estruturação da documentação e da modelagem.

| Item | Registro |
|---|---|
| **Ferramenta e etapa** | ChatGPT — organização da documentação, estruturação do README e apoio na modelagem do banco de dados. |
| **Motivação** | Utilizar a ferramenta como apoio para organizar as informações levantadas e estruturar a documentação do projeto. |
| **Prompt(s) utilizados** | Solicitações para organizar o Dicionário de Dados, estruturar o diagrama de dados e transformar o esqueleto da Entrega 1 em um README organizado para o GitHub. |
| **Resposta recebida** | Sugestões de estruturação das entidades, relacionamentos, organização dos documentos e estrutura do repositório. |
| **Fontes consultadas e verificadas** | As informações sobre a ARGOS FITNESS foram baseadas no levantamento realizado pelo grupo e na documentação produzida para o projeto. |
| **Trechos rejeitados ou corrigidos** | As sugestões geradas pela IA foram revisadas pelo grupo e devem ser comparadas com as informações obtidas durante a pesquisa de campo antes da implementação. |
| **Justificativa da escolha final** | As decisões finais foram mantidas de acordo com os requisitos levantados pelo grupo e com a realidade observada na organização. |
| **Reflexão crítica** | A IA foi utilizada como ferramenta de apoio e não como fonte única de verdade. As informações e decisões de modelagem precisam ser verificadas pelo grupo, especialmente quando houver divergência entre uma sugestão automatizada e os dados levantados durante a pesquisa de campo. |

---

# Documentação do Projeto

| Documento | Descrição |
|---|---|
| 📄 [Dicionário de Dados](docs/01-Dicionario-de-Dados/Dicionario-de-Dados-Argos-Fitness.pdf) | Documentação das entidades, atributos, tipos, chaves e relacionamentos |
| 📊 [Diagrama Entidade-Relacionamento](docs/02-Diagrama-Entidade-Relacionamento/DER-Argos-Fitness.png) | Representação visual do modelo conceitual |

---

# Estrutura do Repositório

```text
ARGOS-FITNESS/
│
├── README.md
│
└── docs/
    │
    ├── 01-Dicionario-de-Dados/
    │   ├── README.md
    │   └── Dicionario-de-Dados-Argos-Fitness.pdf
    │
    └── 02-Diagrama-Entidade-Relacionamento/
        ├── README.md
        └── DER-Argos-Fitness.png
```

---

# Resumo da Entrega

| Dimensão | Peso |
|---|---:|
| Conceitual | 30% |
| Procedimental | 50% |
| Atitudinal | 20% |
| **Total** | **100%** |

---

## Observações

Este projeto representa a modelagem conceitual inicial do sistema de gestão da **ARGOS FITNESS**.

As decisões de modelagem, regras de negócio e requisitos deverão ser validadas pelo grupo com base nas informações obtidas durante a pesquisa de campo.

Novas versões do modelo poderão ser incorporadas ao repositório conforme o avanço das próximas etapas do projeto.
