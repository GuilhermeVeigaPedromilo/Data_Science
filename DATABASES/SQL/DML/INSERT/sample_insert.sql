-- Run these scripts to have data to select
-- CREATE SCHEMA IF NOT EXISTS ecommerce;

-- USE ecommerce;

-- CREATE TABLE IF NOT EXISTS client (
--     id_client INT NOT NULL AUTO_INCREMENT,
--     name_client VARCHAR(100) NOT NULL,
--     register_date DATE NOT NULL,
--     PRIMARY KEY(id_client)
-- );

-- USE THE INSERT COMMAND TO INSERT DATA INTO TABLES OF DATABASE

-- Single Insert, an unique register
INSERT INTO client (name_client, register_date) VALUES ("Samuel Porter Doors", "2025-12-12");

-- Single Insert, several different registers
INSERT INTO client (name_client, register_date) VALUES
    -- ("Samuel Porter Doors", "2025-12-12"), EQUALS THE FIRST INSERT
    ("Robust Express", "2025-12-23"),
    ("Heartgirl", "2026-01-21"),
    ("Isabel", "2026-01-23");

-- Syntax:

-- INSERT INTO table_name (column1, column2, ..., columnX) VALUES 
    -- ("valueToColumn1", "valueToColumn2", ..., "valueToColumnX");