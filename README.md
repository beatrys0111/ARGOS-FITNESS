<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ARGOS FITNESS - Modelo Conceitual</title>

    <style>
        :root {
            --bg: #f6f8fa;
            --card: #ffffff;
            --text: #24292f;
            --muted: #57606a;
            --border: #d0d7de;
            --accent: #0969da;
            --accent-soft: #ddf4ff;
            --heading: #1f2328;
        }

        * {
            box-sizing: border-box;
        }

        body {
            margin: 0;
            background: var(--bg);
            color: var(--text);
            font-family: Arial, Helvetica, sans-serif;
            line-height: 1.65;
        }

        .container {
            max-width: 1100px;
            margin: 0 auto;
            padding: 32px 22px 60px;
        }

        header {
            background: var(--card);
            border: 1px solid var(--border);
            border-radius: 12px;
            padding: 30px;
            margin-bottom: 24px;
        }

        h1 {
            margin-top: 0;
            font-size: 2rem;
            color: var(--heading);
        }

        h2 {
            margin-top: 42px;
            padding-bottom: 8px;
            border-bottom: 2px solid var(--border);
            color: var(--heading);
        }

        h3 {
            color: var(--heading);
            margin-top: 28px;
        }

        p {
            margin: 10px 0;
        }

        ul {
            padding-left: 24px;
        }

        li {
            margin: 7px 0;
        }

        .card {
            background: var(--card);
            border: 1px solid var(--border);
            border-radius: 10px;
            padding: 22px;
            margin: 18px 0;
        }

        .meta {
            background: var(--accent-soft);
            border-left: 4px solid var(--accent);
            padding: 15px 18px;
            border-radius: 6px;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin: 18px 0 28px;
            background: var(--card);
            font-size: 0.95rem;
        }

        th,
        td {
            border: 1px solid var(--border);
            padding: 10px 12px;
            text-align: left;
            vertical-align: top;
        }

        th {
            background: #f0f3f6;
            font-weight: 700;
        }

        code {
            background: #eff1f3;
            padding: 2px 5px;
            border-radius: 4px;
        }

        .der {
            text-align: center;
            padding: 25px;
            border: 2px dashed var(--border);
            border-radius: 10px;
            background: #fafbfc;
        }

        .der img {
            max-width: 100%;
            height: auto;
        }

        .note {
            color: var(--muted);
            font-size: 0.94rem;
        }

        footer {
            margin-top: 45px;
            padding-top: 20px;
            border-top: 1px solid var(--border);
            color: var(--muted);
            font-size: 0.9rem;
        }

        @media (max-width: 700px) {
            .container {
                padding: 18px 12px 40px;
            }

            header,
            .card {
                padding: 16px;
            }

            table {
                display: block;
                overflow-x: auto;
                white-space: normal;
            }
        }
    </style>
</head>

<body>

<div class="container">

    <!-- CABEÇALHO -->
    <header>
        <h1>Entrega 1 — Modelo Conceitual (DER)</h1>

        <p>
            <strong>
                Modelagem de um sistema de gestão de informações
                para uma organização de pequeno porte
            </strong>
        </p>

        <p class="note">
            Projeto de Banco de Dados — ARGOS FITNESS
        </p>
    </header>


    <!-- METADADOS -->
    <section class="card">

        <h2>Metadados</h2>

        <ul>
            <li>
                <strong>Paulo Henrique Quintiliano Dos Santos</strong>
                — 48164143
            </li>

            <li>
                <strong>Beatrys Anunciato de Lima</strong>
                — 48219886
            </li>

            <li>
                <strong>Kauanny Duarte Santos</strong>
                — 48164143
            </li>

            <li>
                <strong>João Lucas da Conceição Pereira</strong>
                — 47617322
            </li>
        </ul>

    </section>


    <!-- 1 -->
    <section>

        <h2>1. Caracterização da Organização</h2>

        <div class="card">

            <h3>Nome e natureza da organização</h3>

            <p>
                A organização selecionada para a realização da pesquisa de campo
                foi a <strong>ARGOS FITNESS</strong>, uma academia de bairro
                voltada à atividades físicas e condicionamento corporal.
                A organização foi escolhida como objeto de estudo para o
                desenvolvimento do projeto de Banco de Dados.
            </p>

            <p>
                A pesquisa de campo teve como objetivo conhecer o funcionamento
                da academia, observar seus processos e levantar informações
                relevantes para a definição dos requisitos do banco de dados
                a ser desenvolvido.
            </p>


            <h3>Contexto e porte</h3>

            <p>
                A ARGOS FITNESS é uma academia de bairro com fins lucrativos,
                que oferece serviços voltados à prática de atividades físicas.
                A organização atende a mais de 300 alunos e conta com
                aproximadamente 25 colaboradores.
            </p>

            <p>
                Os colaboradores estão distribuídos entre as áreas de recepção,
                limpeza, manutenção de equipamentos e instrução de atividades
                físicas.
            </p>

            <p>
                Os profissionais incluem professores de lutas, dança,
                aeróbica e personal trainers, além de funcionários responsáveis
                pela manutenção e pelo funcionamento geral da academia.
            </p>

            <p>
                A academia disponibiliza diversas modalidades de atividades
                físicas, como dança, boxe, treinamento funcional, taekwondo,
                pilates e muay thai.
            </p>

            <p>
                Sua receita é obtida principalmente por meio da cobrança de
                mensalidades e da oferta de aulas avulsas.
            </p>

            <p>
                O estabelecimento funciona de segunda-feira a sábado,
                atendendo a uma demanda média de aproximadamente 250
                mensalidades mensais.
            </p>

            <p>
                Os valores dos planos variam entre R$90,00 e R$150,00,
                de acordo com os serviços e modalidades oferecidos.
            </p>


            <h3>Problemas e necessidades identificados</h3>

            <p>
                Foram identificadas algumas limitações relacionadas ao
                gerenciamento e à organização das informações da academia.
            </p>

            <p>
                O processo atual apresenta um nível de simplicidade elevado,
                concentrando-se principalmente no registro da matrícula dos
                alunos, identificação do aluno e controle das datas de pagamento
                das mensalidades.
            </p>

            <p>
                Também foram observadas situações em que os cadastros dos
                alunos permanecem incompletos, dificultando a manutenção de
                informações atualizadas e o acompanhamento adequado do histórico
                de cada aluno.
            </p>

            <p>
                Outro ponto identificado foi a utilização frequente de documentos
                e registros em papel para controlar determinadas informações
                e relações entre alunos, funcionários, modalidades e pagamentos.
            </p>

            <p>
                Esse método pode dificultar a consulta, atualização e organização
                dos dados, além de aumentar a possibilidade de perda, duplicidade
                ou inconsistência das informações.
            </p>

            <p>
                Diante dessas necessidades, identificou-se a oportunidade de
                desenvolver um banco de dados estruturado, capaz de centralizar
                as informações da academia e estabelecer relacionamentos entre
                os principais elementos de sua operação.
            </p>


            <h3>Justificativa da escolha</h3>

            <p>
                A ARGOS FITNESS foi escolhida pelo grupo por apresentar uma
                estrutura operacional que envolve diferentes relações entre
                alunos, matrículas, planos, pagamentos, modalidades, professores
                e funcionários.
            </p>

            <p>
                A organização também apresenta um porte compatível com a
                proposta do projeto, oferecendo um nível de complexidade
                suficiente para que o grupo possa identificar problemas reais
                e propor melhorias.
            </p>

            <p>
                Outro fator importante para a escolha foi a facilidade de acesso
                à organização e aos seus responsáveis, favorecendo uma pesquisa
                de campo mais precisa e alinhada à realidade da organização.
            </p>


            <h3>Evidências da organização</h3>

            <p>
                <strong>Endereço:</strong>
                Rua José Oiticica Filho, 1008 - Itaquera,
                São Paulo - SP, 08210-510
            </p>

            <p>
                <strong>Telefone:</strong>
                01120740145
            </p>

            <p>
                <strong>Nome:</strong>
                ARGOS FITNESS ACADEMIA
            </p>

        </div>

    </section>


    <!-- 2 -->
    <section>

        <h2>2. Processos de Negócio</h2>

        <div class="card">

            <p>
                Durante a pesquisa de campo realizada na ARGOS FITNESS,
                foram identificados os principais processos relacionados ao
                funcionamento e à gestão da academia:
            </p>

            <ul>

                <li>
                    <strong>Cadastro de alunos:</strong>
                    registro e atualização dos dados pessoais, contatos,
                    endereço e informações cadastrais dos alunos.
                </li>

                <li>
                    <strong>Matrícula e gerenciamento de planos:</strong>
                    realização das matrículas, definição do plano contratado,
                    controle do período de vigência e acompanhamento do status
                    do aluno.
                </li>

                <li>
                    <strong>Controle de pagamentos:</strong>
                    registro das mensalidades, valores pagos, datas de pagamento,
                    formas de pagamento e situações de pendência.
                </li>

                <li>
                    <strong>Cadastro e gerenciamento de modalidades:</strong>
                    organização das diferentes atividades oferecidas pela
                    academia.
                </li>

                <li>
                    <strong>Gestão de professores e instrutores:</strong>
                    cadastro dos profissionais responsáveis pelas modalidades
                    e acompanhamento de sua relação com os alunos e treinos.
                </li>

                <li>
                    <strong>Controle de treinos:</strong>
                    registro das fichas de exercícios, objetivos dos alunos,
                    exercícios prescritos, séries, repetições, cargas e
                    instrutores responsáveis.
                </li>

                <li>
                    <strong>Controle de acesso:</strong>
                    registro das entradas dos alunos na academia,
                    permitindo acompanhar a frequência e o histórico de acessos.
                </li>

                <li>
                    <strong>Controle de equipamentos e materiais:</strong>
                    cadastro dos aparelhos e demais materiais utilizados na
                    academia.
                </li>

                <li>
                    <strong>Manutenção de equipamentos:</strong>
                    registro de manutenções preventivas e corretivas,
                    problemas identificados, serviços realizados, custos
                    e próximas revisões.
                </li>

                <li>
                    <strong>Gestão de fornecedores:</strong>
                    cadastro e acompanhamento das empresas responsáveis pelo
                    fornecimento de equipamentos, materiais e serviços de
                    manutenção.
                </li>

            </ul>

        </div>

    </section>


    <!-- 3 -->
    <section>

        <h2>3. Requisitos do Sistema</h2>


        <h3>3.1 Requisitos Funcionais</h3>

        <div class="card">

            <ul>

                <li>Cadastrar alunos, permitindo registrar dados pessoais,
                    contato, endereço, contato de emergência e status do cadastro.</li>

                <li>Atualizar os dados dos alunos.</li>

                <li>Registrar matrículas, relacionando o aluno ao plano contratado.</li>

                <li>Cadastrar e gerenciar planos.</li>

                <li>Registrar pagamentos.</li>

                <li>Identificar pagamentos pendentes.</li>

                <li>Cadastrar modalidades.</li>

                <li>Cadastrar professores e instrutores.</li>

                <li>Registrar fichas de treino.</li>

                <li>Registrar o acesso dos alunos.</li>

                <li>Cadastrar equipamentos e materiais.</li>

                <li>Cadastrar fornecedores.</li>

                <li>Registrar manutenções de equipamentos.</li>

                <li>Consultar informações.</li>

                <li>Gerar informações e relatórios de acompanhamento.</li>

                <li>Centralizar os dados da academia.</li>

                <li>Manter o histórico das informações.</li>

            </ul>

        </div>


        <h3>3.2 Requisitos Não Funcionais</h3>

        <div class="card">

            <ul>

                <li>
                    <strong>Desempenho:</strong>
                    operações rápidas.
                </li>

                <li>
                    <strong>Segurança:</strong>
                    proteção dos dados e controle de acesso.
                </li>

                <li>
                    <strong>Usabilidade:</strong>
                    interface simples, intuitiva e organizada.
                </li>

                <li>
                    <strong>Disponibilidade:</strong>
                    sistema disponível durante o horário de funcionamento.
                </li>

                <li>
                    <strong>Confiabilidade:</strong>
                    armazenamento consistente dos dados.
                </li>

                <li>
                    <strong>Manutenção:</strong>
                    estrutura preparada para atualizações futuras.
                </li>

                <li>
                    <strong>Escalabilidade:</strong>
                    capacidade de crescimento do volume de dados.
                </li>

                <li>
                    <strong>Backup e recuperação:</strong>
                    mecanismos de cópia de segurança.
                </li>

                <li>
                    <strong>Privacidade:</strong>
                    tratamento adequado das informações pessoais.
                </li>

            </ul>

        </div>

    </section>


    <!-- 4 -->
    <section>

        <h2>4. Regras de Negócio</h2>

        <div class="card">

            <h3>Regras operacionais</h3>

            <ul>

                <li>
                    Um aluno só poderá realizar uma matrícula se possuir
                    um cadastro válido no sistema.
                </li>

                <li>
                    Uma matrícula deverá estar vinculada a um plano
                    previamente cadastrado.
                </li>

                <li>
                    Um plano deverá possuir um valor e uma data de vencimento
                    definidos.
                </li>

                <li>
                    Um pagamento deverá estar vinculado a um aluno.
                </li>

                <li>
                    Um pagamento deverá possuir data, valor, forma de
                    pagamento e status definidos.
                </li>

                <li>
                    Uma mensalidade poderá ser considerada paga somente
                    após o registro do pagamento.
                </li>

                <li>
                    Um aluno com cadastro inativo ou trancado não deverá
                    ser considerado ativo para novos registros de acesso
                    ou matrícula.
                </li>

                <li>
                    Um registro de acesso somente poderá ser realizado
                    para um aluno cadastrado e apto.
                </li>

                <li>
                    Um treino deverá estar vinculado a um aluno e a um
                    instrutor responsável.
                </li>

                <li>
                    Uma modalidade deverá estar previamente cadastrada.
                </li>

                <li>
                    Um equipamento deverá possuir um cadastro único.
                </li>

                <li>
                    Um equipamento em manutenção não deverá ser considerado
                    disponível para utilização.
                </li>

                <li>
                    Uma manutenção deverá estar vinculada a um equipamento.
                </li>

                <li>
                    Um fornecedor deverá possuir cadastro antes de ser associado
                    à aquisição de equipamentos ou manutenção.
                </li>

                <li>
                    O sistema deverá impedir o cadastro de dois alunos
                    com o mesmo CPF.
                </li>

                <li>
                    O sistema deverá impedir o cadastro duplicado de
                    fornecedores utilizando o mesmo CNPJ.
                </li>

                <li>
                    Informações obrigatórias deverão ser preenchidas antes
                    da conclusão de um cadastro.
                </li>

                <li>
                    Somente usuários autorizados poderão alterar ou excluir
                    informações administrativas e financeiras.
                </li>

                <li>
                    As informações registradas deverão manter seus
                    relacionamentos.
                </li>

            </ul>


            <h3>Restrições organizacionais</h3>

            <ul>

                <li>
                    <strong>Proteção dos dados pessoais:</strong>
                    o sistema deverá proteger dados como CPF, endereço
                    e telefone.
                </li>

                <li>
                    <strong>Acesso restrito às informações:</strong>
                    determinadas informações deverão ser acessíveis somente
                    aos funcionários autorizados.
                </li>

                <li>
                    <strong>Dependência da rotina da academia:</strong>
                    o sistema deverá ser compatível com o funcionamento
                    de segunda-feira a sábado.
                </li>

                <li>
                    <strong>Registros obrigatórios:</strong>
                    informações obrigatórias deverão ser preenchidas antes
                    da conclusão de processos.
                </li>

                <li>
                    <strong>Controle financeiro:</strong>
                    pagamentos deverão seguir os valores e condições dos planos.
                </li>

                <li>
                    <strong>Controle de equipamentos:</strong>
                    equipamentos em manutenção deverão ter o status atualizado.
                </li>

                <li>
                    <strong>Limitação de recursos:</strong>
                    a solução deverá considerar os recursos da academia.
                </li>

                <li>
                    <strong>Facilidade de adaptação:</strong>
                    o sistema deverá ser simples para os colaboradores.
                </li>

            </ul>

        </div>

    </section>


    <!-- 5 -->
    <section>

        <h2>5. Dicionário de Dados Conceitual</h2>

        <p>
            A tabela abaixo apresenta os principais atributos,
            suas descrições e respectivas regras de negócio.
        </p>


        <table>

            <thead>

                <tr>
                    <th>Entidade</th>
                    <th>Atributo</th>
                    <th>Descrição</th>
                    <th>Regra de negócio</th>
                </tr>

            </thead>

            <tbody>

                <tr>
                    <td>Fornecedor</td>
                    <td>ID_FORNECEDOR</td>
                    <td>Identifica unicamente o fornecedor.</td>
                    <td>Obrigatório e único.</td>
                </tr>

                <tr>
                    <td>Fornecedor</td>
                    <td>NM_FORNECEDOR</td>
                    <td>Nome do fornecedor.</td>
                    <td>Obrigatório.</td>
                </tr>

                <tr>
                    <td>Fornecedor</td>
                    <td>CD_CNPJ</td>
                    <td>Cadastro Nacional da Pessoa Jurídica.</td>
                    <td>Obrigatório e único.</td>
                </tr>

                <tr>
                    <td>Fornecedor</td>
                    <td>NM_EMAIL</td>
                    <td>E-mail para contato.</td>
                    <td>Não obrigatório.</td>
                </tr>

                <tr>
                    <td>Equipamento</td>
                    <td>ID_EQUIPAMENTO</td>
                    <td>Identificação única do equipamento.</td>
                    <td>Obrigatório e único.</td>
                </tr>

                <tr>
                    <td>Equipamento</td>
                    <td>NM_EQUIPAMENTO</td>
                    <td>Nome do equipamento.</td>
                    <td>Obrigatório.</td>
                </tr>

                <tr>
                    <td>Equipamento</td>
                    <td>DS_EQUIPAMENTO</td>
                    <td>Descrição do equipamento.</td>
                    <td>Obrigatório.</td>
                </tr>

                <tr>
                    <td>Equipamento</td>
                    <td>QT_EQUIPAMENTO</td>
                    <td>Quantidade disponível.</td>
                    <td>Obrigatório e não pode ser negativa.</td>
                </tr>

                <tr>
                    <td>Equipamento</td>
                    <td>TP_STATUS</td>
                    <td>Situação atual.</td>
                    <td>Obrigatório.</td>
                </tr>

                <tr>
                    <td>Manutenção</td>
                    <td>ID_MANUTENCAO</td>
                    <td>Identificador único.</td>
                    <td>Obrigatório e único.</td>
                </tr>

                <tr>
                    <td>Manutenção</td>
                    <td>ID_EQUIPAMENTO</td>
                    <td>Equipamento que recebeu manutenção.</td>
                    <td>Obrigatório.</td>
                </tr>

                <tr>
                    <td>Manutenção</td>
                    <td>DT_MANUTENCAO</td>
                    <td>Data da manutenção.</td>
                    <td>Obrigatório.</td>
                </tr>

                <tr>
                    <td>Manutenção</td>
                    <td>TP_MANUNTENCAO</td>
                    <td>Tipo de manutenção.</td>
                    <td>Obrigatório.</td>
                </tr>

                <tr>
                    <td>Manutenção</td>
                    <td>DS_MANUNTENCAO</td>
                    <td>Descrição dos serviços realizados.</td>
                    <td>Não obrigatório.</td>
                </tr>

                <tr>
                    <td>Manutenção</td>
                    <td>VS_CUSTO</td>
                    <td>Valor gasto.</td>
                    <td>Não obrigatório.</td>
                </tr>

                <tr>
                    <td>Pessoa</td>
                    <td>ID_PESSOA</td>
                    <td>Identificador único.</td>
                    <td>Obrigatório e único.</td>
                </tr>

                <tr>
                    <td>Pessoa</td>
                    <td>NM_PESSOA</td>
                    <td>Nome completo.</td>
                    <td>Obrigatório.</td>
                </tr>

                <tr>
                    <td>Pessoa</td>
                    <td>CD_CPF</td>
                    <td>CPF da pessoa.</td>
                    <td>Obrigatório e único.</td>
                </tr>

                <tr>
                    <td>Pessoa</td>
                    <td>NM_EMAIL</td>
                    <td>E-mail.</td>
                    <td>Não obrigatório.</td>
                </tr>

                <tr>
                    <td>Pessoa</td>
                    <td>DT_NASCIMENTO</td>
                    <td>Data de nascimento.</td>
                    <td>Obrigatório.</td>
                </tr>

                <tr>
                    <td>Pessoa</td>
                    <td>DT_ENDERECO</td>
                    <td>Endereço da pessoa.</td>
                    <td>Não obrigatório.</td>
                </tr>

                <tr>
                    <td>Instrutor</td>
                    <td>ID_INSTRUTOR</td>
                    <td>Identificador único.</td>
                    <td>Obrigatório e único.</td>
                </tr>

                <tr>
                    <td>Instrutor</td>
                    <td>CD_CREF</td>
                    <td>Registro profissional.</td>
                    <td>Obrigatório e único.</td>
                </tr>

                <tr>
                    <td>Instrutor</td>
                    <td>TP_STATUS</td>
                    <td>Situação.</td>
                    <td>Obrigatório.</td>
                </tr>

                <tr>
                    <td>Instrutor</td>
                    <td>DS_ESPECIALIDADE</td>
                    <td>Área de especialização.</td>
                    <td>Não obrigatório.</td>
                </tr>

                <tr>
                    <td>Instrutor</td>
                    <td>DT_ADMISSAO</td>
                    <td>Data de admissão.</td>
                    <td>Obrigatório.</td>
                </tr>

                <tr>
                    <td>Aluno</td>
                    <td>ID_ALUNO</td>
                    <td>Identificador único.</td>
                    <td>Obrigatório e único.</td>
                </tr>

                <tr>
                    <td>Aluno</td>
                    <td>ID_PLANO</td>
                    <td>Identificador do plano.</td>
                    <td>Obrigatório.</td>
                </tr>

                <tr>
                    <td>Aluno</td>
                    <td>DT_MATRICULA</td>
                    <td>Data de matrícula.</td>
                    <td>Obrigatório.</td>
                </tr>

                <tr>
                    <td>Aluno</td>
                    <td>DS_OBJETIVO</td>
                    <td>Objetivo do aluno.</td>
                    <td>Não obrigatório.</td>
                </tr>

                <tr>
                    <td>Aluno</td>
                    <td>VR_PESO</td>
                    <td>Peso do aluno.</td>
                    <td>Não obrigatório.</td>
                </tr>

                <tr>
                    <td>Aluno</td>
                    <td>VR_ALTURA</td>
                    <td>Altura do aluno.</td>
                    <td>Não obrigatório.</td>
                </tr>

                <tr>
                    <td>Plano</td>
                    <td>ID_PLANO</td>
                    <td>Identificador único.</td>
                    <td>Obrigatório e único.</td>
                </tr>

                <tr>
                    <td>Plano</td>
                    <td>NM_PLANO</td>
                    <td>Nome do plano.</td>
                    <td>Obrigatório.</td>
                </tr>

                <tr>
                    <td>Plano</td>
                    <td>DS_PLANO</td>
                    <td>Descrição do plano.</td>
                    <td>Não obrigatório.</td>
                </tr>

                <tr>
                    <td>Plano</td>
                    <td>VR_PLANO</td>
                    <td>Valor do plano.</td>
                    <td>Obrigatório.</td>
                </tr>

                <tr>
                    <td>Plano</td>
                    <td>QT_DURACAO_MESES</td>
                    <td>Duração em meses.</td>
                    <td>Obrigatório.</td>
                </tr>

                <tr>
                    <td>Pagamento</td>
                    <td>ID_PAGAMENTO</td>
                    <td>Identificador único.</td>
                    <td>Obrigatório.</td>
                </tr>

                <tr>
                    <td>Pagamento</td>
                    <td>ID_ALUNO</td>
                    <td>Identificador do aluno.</td>
                    <td>Obrigatório.</td>
                </tr>

                <tr>
                    <td>Pagamento</td>
                    <td>VR_PAGAMENTO</td>
                    <td>Valor do pagamento.</td>
                    <td>Obrigatório.</td>
                </tr>

                <tr>
                    <td>Pagamento</td>
                    <td>DT_VENCIMENTO</td>
                    <td>Data de vencimento.</td>
                    <td>Obrigatório.</td>
                </tr>

                <tr>
                    <td>Pagamento</td>
                    <td>DT_PAGAMENTO</td>
                    <td>Data do pagamento.</td>
                    <td>Não obrigatório quando pendente.</td>
                </tr>

                <tr>
                    <td>Treino</td>
                    <td>ID_TREINO</td>
                    <td>Identificador único.</td>
                    <td>Obrigatório e único.</td>
                </tr>

                <tr>
                    <td>Treino</td>
                    <td>ID_ALUNO</td>
                    <td>Identificador do aluno.</td>
                    <td>Obrigatório.</td>
                </tr>

                <tr>
                    <td>Treino</td>
                    <td>ID_INSTRUTOR</td>
                    <td>Identificador do instrutor.</td>
                    <td>Obrigatório.</td>
                </tr>

                <tr>
                    <td>Treino</td>
                    <td>NM_TREINO</td>
                    <td>Nome do treino.</td>
                    <td>Obrigatório.</td>
                </tr>

                <tr>
                    <td>Exercício</td>
                    <td>ID_EXERCICIO</td>
                    <td>Identificador único.</td>
                    <td>Obrigatório e único.</td>
                </tr>

                <tr>
                    <td>Exercício</td>
                    <td>NM_EXERCICIO</td>
                    <td>Nome do exercício.</td>
                    <td>Obrigatório.</td>
                </tr>

                <tr>
                    <td>Exercício</td>
                    <td>DS_EXERCICIO</td>
                    <td>Descrição do exercício.</td>
                    <td>Não obrigatório.</td>
                </tr>

                <tr>
                    <td>Exercício</td>
                    <td>TP_GRUPO_MUSCULAR</td>
                    <td>Grupo muscular trabalhado.</td>
                    <td>Obrigatório.</td>
                </tr>

                <tr>
                    <td>Exercício</td>
                    <td>DS_EQUIPAMENTO_NECESSARIO</td>
                    <td>Equipamento necessário.</td>
                    <td>Não obrigatório.</td>
                </tr>

                <tr>
                    <td>Treino_Exercicio</td>
                    <td>ID_TREINO_EXERCICIO</td>
                    <td>Identificador da relação.</td>
                    <td>Obrigatório e único.</td>
                </tr>

                <tr>
                    <td>Treino_Exercicio</td>
                    <td>ID_TREINO</td>
                    <td>Identificador do treino.</td>
                    <td>Obrigatório.</td>
                </tr>

                <tr>
                    <td>Treino_Exercicio</td>
                    <td>ID_EXERCICIO</td>
                    <td>Identificador do exercício.</td>
                    <td>Obrigatório.</td>
                </tr>

                <tr>
                    <td>Treino_Exercicio</td>
                    <td>QT_SERIES</td>
                    <td>Quantidade de séries.</td>
                    <td>Obrigatório.</td>
                </tr>

                <tr>
                    <td>Treino_Exercicio</td>
                    <td>QT_REPETICOES</td>
                    <td>Quantidade de repetições.</td>
                    <td>Obrigatório.</td>
                </tr>

                <tr>
                    <td>Avaliação</td>
                    <td>ID_AVALIACAO</td>
                    <td>Identificador único.</td>
                    <td>Obrigatório e único.</td>
                </tr>

                <tr>
                    <td>Avaliação</td>
                    <td>DT_AVALIACAO</td>
                    <td>Data da avaliação física.</td>
                    <td>Obrigatório.</td>
                </tr>

                <tr>
                    <td>Avaliação</td>
                    <td>VR_PESO</td>
                    <td>Peso registrado.</td>
                    <td>Obrigatório.</td>
                </tr>

                <tr>
                    <td>Avaliação</td>
                    <td>VR_ALTURA</td>
                    <td>Altura registrada.</td>
                    <td>Obrigatório.</td>
                </tr>

            </tbody>

        </table>

    </section>


    <!-- 6 -->
    <section>

        <h2>
            6. Modelagem Conceitual —
            Entidades, Atributos e Relacionamentos
        </h2>

        <div class="card">

            <h3>Entidades reconhecidas</h3>

            <ul>

                <li>
                    <strong>Aluno:</strong>
                    representa o cliente matriculado na academia,
                    centralizando dados cadastrais e informações físicas.
                </li>

                <li>
                    <strong>Instrutor:</strong>
                    representa os profissionais responsáveis pela orientação
                    dos treinos e acompanhamento dos alunos.
                </li>

                <li>
                    <strong>Plano:</strong>
                    armazena os pacotes de serviços oferecidos.
                </li>

                <li>
                    <strong>Matrícula:</strong>
                    representa o vínculo formal entre o aluno e o plano.
                </li>

                <li>
                    <strong>Pagamento:</strong>
                    controla as mensalidades e os valores pagos.
                </li>

                <li>
                    <strong>Treino:</strong>
                    armazena a ficha de exercícios.
                </li>

                <li>
                    <strong>Exercício:</strong>
                    cataloga os exercícios disponíveis.
                </li>

                <li>
                    <strong>Avaliação:</strong>
                    registra o histórico de avaliações físicas.
                </li>

                <li>
                    <strong>Equipamento:</strong>
                    controla os aparelhos disponíveis.
                </li>

                <li>
                    <strong>Manutenção:</strong>
                    registra reparos e revisões dos equipamentos.
                </li>

                <li>
                    <strong>Fornecedor:</strong>
                    cadastra empresas responsáveis pelo fornecimento.
                </li>

            </ul>


            <h3>Relacionamentos pertinentes</h3>

            <ul>

                <li>
                    <strong>Aluno e Plano / Matrícula:</strong>
                    o aluno estabelece um vínculo de matrícula associado
                    a um plano cadastrado.
                </li>

                <li>
                    <strong>Aluno e Pagamento:</strong>
                    um aluno pode realizar múltiplos pagamentos.
                </li>

                <li>
                    <strong>Aluno e Treino:</strong>
                    um aluno pode possuir diferentes fichas de treino.
                </li>

                <li>
                    <strong>Treino e Exercício:</strong>
                    relacionamento N para N.
                </li>

                <li>
                    <strong>Instrutor e Treino:</strong>
                    o instrutor é responsável pelo treino.
                </li>

                <li>
                    <strong>Equipamento, Fornecedor e Manutenção:</strong>
                    equipamentos possuem fornecedores e podem ter
                    diversas manutenções.
                </li>

            </ul>


            <h3>Restrições e políticas</h3>

            <ul>

                <li>
                    <strong>Proteção de Dados Pessoais (LGPD)</strong>
                </li>

                <li>
                    <strong>Integridade Referencial</strong>
                </li>

                <li>
                    <strong>Regras de Unicidade</strong>
                </li>

                <li>
                    <strong>Controle de Status Operacional</strong>
                </li>

            </ul>

        </div>

    </section>


    <!-- 7 -->
    <section>

        <h2>7. Diagrama Entidade-Relacionamento (DER)</h2>

        <div class="der">

            <p>
                <strong>Diagrama Entidade-Relacionamento</strong>
            </p>

            <p class="note">
                Coloque a imagem do DER na mesma pasta deste arquivo
                e renomeie para <strong>der.png</strong>.
            </p>

            <img
                src="der.png"
                alt="Diagrama Entidade-Relacionamento da ARGOS FITNESS"
            >

        </div>

    </section>


    <!-- 8 -->
    <section>

        <h2>8. Justificativa Técnica</h2>

        <div class="card">

            <p>
                A modelagem do banco de dados da ARGOS FITNESS foi definida
                a partir dos principais processos identificados durante a
                pesquisa de campo, buscando representar de forma organizada
                as informações necessárias para o funcionamento da academia.
            </p>

            <p>
                As entidades, atributos, relacionamentos e cardinalidades
                foram escolhidos considerando a realidade observada na
                organização, evitando tanto a criação de estruturas
                desnecessárias quanto a concentração excessiva de informações
                em uma única entidade.
            </p>

            <p>
                A entidade <strong>Aluno</strong> foi definida como uma das
                principais entidades do modelo, pois representa o elemento
                central dos processos analisados.
            </p>

            <p>
                Informações como nome, CPF, data de nascimento, telefone,
                e-mail, endereço, status do cadastro e data de matrícula
                foram selecionadas por serem relevantes para identificação,
                comunicação e acompanhamento dos alunos.
            </p>

            <p>
                O CPF foi definido como um atributo único para evitar
                a existência de cadastros duplicados.
            </p>

            <p>
                A entidade <strong>Plano</strong> foi separada da entidade
                Aluno porque representa uma informação independente do aluno.
                Dessa forma, diferentes alunos podem contratar o mesmo plano.
            </p>

            <p>
                A <strong>Matrícula</strong> foi considerada uma estrutura
                própria para representar a relação entre aluno e plano.
            </p>

            <p>
                A entidade <strong>Pagamento</strong> foi criada separadamente
                porque um aluno pode realizar diversos pagamentos ao longo
                do tempo, permitindo manter o histórico financeiro.
            </p>

            <p>
                A entidade <strong>Instrutor</strong> foi incluída para
                representar os profissionais responsáveis pelas atividades
                e pelos treinos.
            </p>

            <p>
                A entidade <strong>Treino</strong> foi definida para armazenar
                as informações relacionadas à ficha de exercícios do aluno.
            </p>

            <p>
                A entidade <strong>Acesso</strong> foi criada para registrar
                as entradas dos alunos na academia e permitir o controle
                do histórico de frequência.
            </p>

            <p>
                Um <strong>Fornecedor</strong> pode fornecer diversos
                equipamentos ou materiais, enquanto um equipamento pode
                possuir diversas ocorrências de manutenção ao longo de sua
                vida útil.
            </p>

            <p>
                A entidade <strong>Manutenção</strong> foi criada
                separadamente para preservar o histórico dos equipamentos.
            </p>

            <p>
                Os atributos foram selecionados buscando representar apenas
                informações relevantes para os processos identificados.
            </p>

            <p>
                A utilização de chaves primárias permite identificar cada
                registro de forma única, enquanto as chaves estrangeiras
                estabelecem os relacionamentos entre as entidades.
            </p>

            <p>
                A opção por separar as entidades também contribui para reduzir
                a redundância de dados, facilitar atualizações e preservar
                a consistência das informações.
            </p>

            <p>
                Portanto, as decisões de abstração e modelagem foram tomadas
                buscando equilibrar representatividade, simplicidade,
                integridade e possibilidade de expansão.
            </p>

        </div>

    </section>


    <!-- 9 -->
    <section>

        <h2>9. Uso de Inteligência Artificial</h2>

        <div class="card">

            <h3>Ferramentas utilizadas</h3>

            <table>

                <thead>
                    <tr>
                        <th>Etapa</th>
                        <th>Ferramenta</th>
                    </tr>
                </thead>

                <tbody>

                    <tr>
                        <td>Dicionário de Dados</td>
                        <td>ChatGPT e Gemini</td>
                    </tr>

                    <tr>
                        <td>DER</td>
                        <td>ChatGPT</td>
                    </tr>

                    <tr>
                        <td>Regras de Negócio</td>
                        <td>ChatGPT</td>
                    </tr>

                    <tr>
                        <td>Caracterização da Organização</td>
                        <td>ChatGPT</td>
                    </tr>

                </tbody>

            </table>


            <h3>Motivação</h3>

            <ul>

                <li>
                    <strong>Dicionário de Dados:</strong>
                    apoio na estruturação e padronização inicial.
                </li>

                <li>
                    <strong>DER:</strong>
                    compreensão das diferenças de representação
                    e aplicação das cardinalidades.
                </li>

                <li>
                    <strong>Regras de Negócio:</strong>
                    apoio na identificação e redação das regras.
                </li>

                <li>
                    <strong>Caracterização:</strong>
                    auxílio na estruturação e revisão do texto.
                </li>

            </ul>


            <h3>Prompts utilizados</h3>

            <ul>

                <li>
                    “Como estruturar o dicionário de dados em formato
                    de tabela para um sistema de academia contendo entidades
                    como Aluno, Plano, Pagamento e Equipamento?”
                </li>

                <li>
                    “Qual a diferença de notação de cardinalidade 1 para N
                    e N para N entre o DER conceitual padrão e ferramentas
                    práticas de modelagem?”
                </li>

                <li>
                    “Quais são as regras de negócio essenciais para o controle
                    de matrículas, pagamentos e manutenção de equipamentos
                    em uma academia?”
                </li>

            </ul>


            <h3>Fontes consultadas e verificadas</h3>

            <p>
                As sugestões geradas pelas ferramentas de IA foram comparadas
                e validadas com a realidade observada na pesquisa de campo
                realizada presencialmente na Argos Fitness.
            </p>


            <h3>Trechos rejeitados ou corrigidos</h3>

            <ul>

                <li>
                    Algumas sugestões traziam atributos excessivos ou
                    complexos demais para o porte da academia.
                </li>

                <li>
                    Foram removidas sugestões de integrações automáticas
                    e automações incompatíveis com a realidade observada.
                </li>

            </ul>


            <h3>Justificativa da escolha final</h3>

            <p>
                O grupo manteve apenas as estruturas, atributos e regras
                que se alinham diretamente ao porte da Argos Fitness e aos
                limites propostos pelo escopo do trabalho acadêmico.
            </p>


            <h3>Reflexão crítica</h3>

            <p>
                Identificou-se que a IA tende a generalizar processos de
                grandes redes de academias, sugerindo automações complexas
                incompatíveis com uma organização de pequeno porte.
            </p>

            <p>
                O uso exigiu constante senso crítico do grupo para filtrar
                alucinações e excessos tecnológicos, garantindo que o modelo
                refletisse fielmente a realidade da empresa estudada.
            </p>

        </div>

    </section>


    <!-- RODAPÉ -->
    <footer>

        <p>
            <strong>Projeto de Banco de Dados — ARGOS FITNESS</strong>
        </p>

        <p>
            Modelo Conceitual e Dicionário de Dados
        </p>

    </footer>

</div>

</body>
</html>
