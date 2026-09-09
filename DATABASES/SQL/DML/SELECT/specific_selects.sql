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

-- USE SELECT TO SEARCH DATA
SELECT * FROM client WHERE register_date < '2026-08-22'; -- SELECT ALL COLUMNS AND DATA WITH Register Date Behind on '8/22/2026'

SELECT * FROM client WHERE name_client LIKE 'S%'; -- SELECT ALL COLUMNS AND DATA WITH THE NAME STARTS IN 'S'
-- Syntax:

-- SELECT columns FROM table_name;

-- SELECT columns FROM table_name clauses condition;