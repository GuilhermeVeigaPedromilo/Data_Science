-- Subqueries allow to create dyamic filters with WHERE

-- Syntax
-- SELECT column1, ..., columnX
--     FROM table HAVING condition;

    
-- Run this scripts to use data to the SUBQUERY

CREATE SCHEMA IF NOT EXISTS ecommerce;

USE ecommerce;

CREATE TABLE IF NOT EXISTS client (
    id_client INT NOT NULL AUTO_INCREMENT,
    name_client VARCHAR(100) NOT NULL,
    register_date DATE NOT NULL,
    PRIMARY KEY(id_client)
);

-- INSERT INTO client (name_client, register_date) VALUES
--     ("Rydery", "2026-09-08"),
--     ("Ocelote", "2026-09-08"),
--     ("Small Boss", "2026-09-08"),
--     ("Sain't Paz", "2026-09-08"),
--     ("Diamond Cats", "2026-09-08"),
--     ("Doctor South", "2026-07-22"),
--     ("Liquid Dog", "2026-07-25");

CREATE TABLE IF NOT EXISTS sales (
    id_sale INT NOT NULL AUTO_INCREMENT,
    total_value DECIMAL(10, 2) NOT NULL,
    id_client INT NOT NULL,
    PRIMARY KEY(id_sale),
    CONSTRAINT fk_client
    FOREIGN KEY(id_client) REFERENCES client(id_client)
);

-- INSERT INTO sales (total_value, id_client) VALUES
--     (2421.34, 4),
--     (21443.23, 6),
--     (34232, 5);

CREATE TABLE IF NOT EXISTS cpf_register (
    id_cpf INT NOT NULL AUTO_INCREMENT,
    cpf CHAR(14) NOT NULL UNIQUE,
    id_client INT NOT NULL UNIQUE,
    PRIMARY KEY(id_cpf),
    CONSTRAINT fk_id_client
    FOREIGN KEY(id_client) REFERENCES client(id_client)
);

-- INSERT INTO cpf_register (cpf, id_client) VALUES
--     ('111.111.111-11', 1),
--     ('222.222.222-22', 2),
--     ('323.234.543-24', 3),
--     ('232.234.232-74', 4),
--     ('223.344.234-33', 6);

-- RETURN THE CLIENT WITH ID_CLIENT = 2
SELECT c.id_client, c.name_client FROM client AS c
    HAVING id_client = 2;