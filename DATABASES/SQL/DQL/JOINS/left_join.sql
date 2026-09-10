-- Left Join is a difference bewtween tables based on them attributes and data
-- In math is represented like A - B (A without B).

-- Run this scripts to use data to the LEFT JOIN

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

-- SELECT ALL REGISTERS WHERE ID_CLIENT is on A and not on B.
-- Just will show id_sale and total_value of sales
SELECT c.id_client, c.name_client
    FROM client AS c INNER JOIN sales AS s
        ON c.id_client = s.id_client;

-- Syntax:

-- SELECT table_name1.columns and table_name2.columns
--  FROM table_name1 LEFT JOIN table_name2
--    ON table_name1.column = table_name2.column;