# ARGOS FITNESS — Sistema de Gestão de Academia
 
## Entrega 1 — Modelo Conceitual (DER)
 
Projeto acadêmico de modelagem de dados desenvolvido para a **ARGOS FITNESS**, uma academia de bairro localizada em Itaquera, São Paulo.
 
O projeto tem como objetivo levantar os processos da organização, identificar seus requisitos e representar seus principais dados por meio de uma **modelagem conceitual de banco de dados**, utilizando um Diagrama Entidade-Relacionamento (DER).
 
---
 
## Metadados
 
### Integrantes
 
| Nome | RGM |
| :--- | :---: |
| Paulo Henrique Quintiliano dos Santos | 48164143 |
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
 
> 🚧 **Em elaboração.** Um quadro por entidade, no formato abaixo.
 
### Entidade: *(nome da entidade)*
 
| Atributo | Descrição | Regra de negócio associada |
| :--- | :--- | :--- |
| *nome do atributo* | *o que ele representa* | *obrigatoriedade, valores possíveis, etc.* |
 
---
 
## 6. Modelagem Conceitual (Entidades, Atributos, Relacionamentos)
 
> 🚧 **Em elaboração.**
 
### Entidades reconhecidas
 
*(listar e justificar brevemente cada uma)*
 
### Atributos e classificações
 
*(atributos de cada entidade)*
 
### Relacionamentos pertinentes
 
*(como as entidades se conectam)*
 
### Restrições e políticas organizacionais aplicadas ao modelo
 
*(a preencher)*
 
---
 
## 7. Diagrama Entidade-Relacionamento (DER)
 
> 🚧 **Em elaboração.**
 
<!-- Quando o DER estiver pronto, suba a imagem no repositório e descomente a linha abaixo: -->
<!-- ![DER — ARGOS FITNESS](docs/der.png) -->
 
---
 
## 8. Justificativa Técnica
 
A modelagem do banco de dados da **ARGOS FITNESS** foi definida a partir dos principais processos identificados na pesquisa de campo, buscando representar de forma organizada as informações necessárias ao funcionamento da academia. As entidades, atributos, relacionamentos e cardinalidades foram escolhidos considerando a realidade observada, evitando tanto estruturas desnecessárias quanto a concentração excessiva de informações em uma única entidade.
 
### Aluno
 
Foi definida como uma das principais entidades do modelo, pois representa o elemento central dos processos analisados. Nome, CPF, data de nascimento, telefone, e-mail, endereço, status do cadastro e data de matrícula foram selecionados por serem relevantes para identificação, comunicação e acompanhamento. O **CPF** foi definido como atributo único para evitar cadastros duplicados.
 
### Plano
 
Foi separada da entidade Aluno porque um plano é uma informação independente do aluno. Assim, diferentes alunos podem contratar o mesmo plano, evitando repetir nome e valor em cada cadastro. Isso também facilita futuras alterações nos planos oferecidos.
 
### Matrícula
 
Foi considerada uma estrutura própria para representar a relação entre aluno e plano. Essa separação permite registrar informações específicas da contratação, como data, vigência e situação. Colocar essas informações diretamente em Aluno seria menos adequado, pois dificultaria o registro de diferentes períodos de matrícula e o acompanhamento do histórico.
 
### Pagamento
 
Foi criada separadamente porque um aluno pode realizar diversos pagamentos ao longo do tempo, estabelecendo uma relação de **um aluno para muitos pagamentos (1:N)**. Isso mantém o histórico financeiro sem sobrescrever informações anteriores.
 
### Instrutor
 
Foi incluída para representar os profissionais responsáveis pelas atividades e pelos treinos. A separação permite relacionar cada profissional às modalidades e aos treinos sob sua responsabilidade, sem repetir seus dados em diferentes registros.
 
### Treino
 
Foi definida para armazenar a ficha de exercícios do aluno: objetivos, exercícios, séries, repetições e cargas. A relação entre aluno e treino é **1:N**, pois um aluno pode ter diferentes fichas ao longo do tempo, enquanto cada ficha pertence a um aluno específico. O treino também se relaciona ao instrutor responsável.
 
### Acesso
 
Foi criada para registrar as entradas dos alunos na academia, já que um mesmo aluno pode ter inúmeros registros de acesso. Estabelece-se, portanto, uma relação **1:N entre Aluno e Acesso**, mantendo o histórico de frequência sem armazenar vários registros diretamente no cadastro do aluno.
 
### Fornecedor, Equipamento e Manutenção
 
Um **Fornecedor** pode fornecer diversos equipamentos ou materiais, enquanto cada equipamento é associado a um fornecedor (relação **1:N**). Um equipamento também pode passar por diversas manutenções ao longo da vida útil, por isso a relação entre **Equipamento e Manutenção** também é **1:N**.
 
A entidade **Manutenção** foi criada separadamente porque um mesmo equipamento pode apresentar diferentes ocorrências ao longo do tempo. Registrar cada manutenção individualmente permite armazenar data, tipo, descrição do problema, custo e próxima revisão, preservando o histórico do equipamento.
 
### Atributos, chaves e cardinalidades
 
Os atributos foram selecionados para representar apenas informações relevantes aos processos identificados. As **chaves primárias** identificam cada registro de forma única, e as **chaves estrangeiras** estabelecem os relacionamentos entre entidades e garantem a integridade referencial.
 
As cardinalidades seguem as regras observadas na organização. Por exemplo, um aluno pode ter vários pagamentos e vários registros de acesso, enquanto cada pagamento e cada acesso pertencem a um aluno específico. Da mesma forma, um equipamento pode ter várias manutenções, mas cada manutenção está associada a um único equipamento.
 
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
| **Reflexão crítica** | 
