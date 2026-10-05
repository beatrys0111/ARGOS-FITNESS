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

**[Acessar Dicionário de Dados - Argos Fitness](https://github.com/beatrys0111/ARGOS-FITNESS/blob/main/docs/01-Dicionario-de-Dados/Dicionario%20de%20Dados%20Sistema%20ARGO%20FITNESS.pdf)**
**[Acessar Dicionário de Dados - Argos Fitness](https://github.com/beatrys0111/ARGOS-FITNESS/blob/main/docs/01-Dicionario-de-Dados/Dicionario%20de%20Dados%20Sistema%20ARGOSFITNESS.pdf)**

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
