-- Run these scripts to have data to select
-- CREATE SCHEMA IF NOT EXISTS ecommerce;

-- USE ecommerce;

-- CREATE TABLE IF NOT EXISTS client (
--     id_client INT NOT NULL AUTO_INCREMENT,
--     name_client VARCHAR(100) NOT NULL,
--     register_date DATE NOT NULL,
--     PRIMARY KEY(id_client)
-- );

-- INSERT INTO client (name_client, register_date) VALUES
--     ("Rydery", "2026-09-08"),
--     ("Ocelote", "2026-09-08"),
--     ("Small Boss", "2026-09-08"),
--     ("Sain't Paz", "2026-09-08"),
--     ("Diamond Cats", "2026-09-08"),
--     ("Doctor South", "2026-07-22"),
--     ("Liquid Dog", "2026-07-25");

-- USE UPDATE TO UPDATE YOURS DATA
UPDATE client SET register_date = '2026-09-05' WHERE register_date = '2026-09-08';

SELECT * FROM client;

-- Syntax:
-- UPDATE table_name SET column1 = value1, columnX = valueX WHERE condition;