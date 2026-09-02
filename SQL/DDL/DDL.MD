# DDL - Data Definition Language (Linguagem de Definição dos Dados)

## Tipos de Dados

É a característica da coluna da tabela do banco de dados que determina o tipo de dado que pode ser armazenado.

### Alfanuméricos

- **Char (tamanho):** armazena uma quantidade fixa (estática) de caracteres. Pode conter letras, números e caracteres especiais. Armazena até 255 caracteres.
- **Varchar (tamanho):** possui o mesmo conteúdo do tipo CHAR. O armazenamento é dinâmico e pode armazenar até 255 caracteres.
- **Text:** armazena até 65.535 caracteres.

### Data

- **Date:** o valor referente a uma data no formato 'CCYY-MM-DD'. Por exemplo 1985-11-25 (ano-mês-dia).
- **Time:** um valor hora no formato 'hh:mm:ss' (horas-minutos-segundos).
- **Timestamp:** é uma sequência de caracteres ou informação codificada que identifica uma marca temporal ou um dado momemnto em que ume evento ocorreu. No MySQL, ele tem o formado 'CCYY-MM-DD hh:mm:ss' - nesse caso, seguem a padronização ISO 8601.
- **Year:** armazena um ano no formato 'CCYY' ou 'YY'.

### Numérico

#### Para Inteiros

| Tipo | Tamanho (bytes) | Range |
| --- | --- | --- |
| TINYINT | 1 | -128 to 127 |
| SMALLINT | 2 | -32768 to 32767 |
| MEDIUMINT | 3 | -8388608 to 8388607 |
| INT and INTEGER | 4 | -2147483648 to 2147483647 |
| BIGINT | 8 | -9223372036854775808 to 9223372036854775807 |

#### Outros

| Tipo | Tamanho (bytes) |
| --- | --- |
| FLOAT(X) | 4 se X <= 24 ou 8 se 25 <= X <= 53 |
| FLOAT | 4 |
| DOUBLE | 8 |
| DOUBLE PRECISION | 8 |
| REAL | 8 |
| DECIMAL(M,D) | M+2 se D > 0, M+1 se D = 0 (D+2, se M < D) |
| NUMERIC(M,D) | M+2 se D > 0, M+1 se D = 0 (D+2, se M < D) |

### Lógico:

Projetado para armazenar os valores lógicos 'TRUE' ou 'FALSE'. No MySQL não existe o tipo booleano, entretanto o Workbench lida com o tipo lógico usando o TINYINT, sendo 1 igual a 'TRUE' e 'FALSE' como 0.

## Esquemas (schemas)

É uma abstração para armazenar um conjunto de objetos de banco de dados que possuem uma relação semântica.

## Constaints (restrições)

Quando são criadas as tabelas, é possível especificar vários tipos de restrições:
- PK (Primary Key).
- FK (Foreign Key).
- UNIQUE.
- CHECK (restrição de domínio).
- NOT NULL.

## Lista de Comandos DDL

| Comando | Descrição |
|---|---|
| CREATE | Serve para criar objetos |
| ALTER | Serve para modificar estruturas |
| DROP | Serve para deletar objetos |
| TRUNCATE | Limar uma tabela por completo | 