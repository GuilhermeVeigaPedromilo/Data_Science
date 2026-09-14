# Case 1: E-commerce Analytics

Você entrou em uma empresa de e-commerce que possui as seguintes tabelas:

```
clientes
---------
id_cliente
nome
cidade
data_cadastro

pedidos
---------
id_pedido
id_cliente
data_pedido
valor_total

itens_pedido
---------
id_item
id_pedido
id_produto
quantidade
valor_unitario

produtos
---------
id_produto
nome_produto
categoria
```

## Contexto

A diretoria quer responder algumas perguntas de negócio.

Você recebeu a missão de analisar os dados e propor melhorias.

## Parte 1 - Modelagem
### Pergunta 1

Observe as tabelas acima.

Responda:

Quais são as PKs?
Quais são as FKs?
Qual tipo de relacionamento existe entre cada tabela?
Você identificaria algum risco de redundância ou problema de modelagem?

Explique seu raciocínio.

## Parte 2 - SQL
### Pergunta 2

Escreva uma query que retorne:
- Cliente
- Quantidade de Pedidos
- Valor Total Gasto

Ordenando do maior para o menor gasto.

### Pergunta 3

Retorne os 5 produtos mais vendidos considerando: soma da quantidade vendida.

### Pergunta 4

A área de negócio quer saber:

    "Quais clientes não realizaram nenhum pedido?"

Escreva a consulta.

## Parte 3 - Análise de Dados

Agora imagine que a empresa reportou:

    O faturamento caiu 20% no último trimestre.

Sem acessar os dados ainda:

### Pergunta 5

- Quais hipóteses você levantaria? Liste pelo menos 5.

## Parte 4 - Engenharia de Dados

A empresa possui:
- 100 milhões de pedidos
- 500 milhões de itens_pedido

e a consulta da Pergunta 2 está demorando muito.

### Pergunta 6

O que você faria para melhorar a performance?

Considere:
- Índices
- Particionamento
- Estratégias de agregação
- Mudanças de arquitetura

## Parte 5 - Situação Real

Todos os dias chega um CSV com novos pedidos.

Exemplo: `pedidos_20260914.csv`

### Pergunta 7

Descreva como você construiria um pipeline de ingestão desses dados.

Não precisa escrever código.

Quero entender:

- etapas
- validações
- armazenamento
- tratamento de erros
- carga incremental

Critérios da avaliação

| Habilidade | Peso |
|---|---|
| SQL | 30% |
| Modelagem | 20% |
| Engenharia de Dados | 25% |
| Performance | 15% |
| Pensamento Analítico | 10% |