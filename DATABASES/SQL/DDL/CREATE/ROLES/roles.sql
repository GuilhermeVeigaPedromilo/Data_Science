-- Create a Role and Users based on it

CREATE SCHEMA IF NOT EXISTS ecommerce;

CREATE ROLE 'DataAnalyst'@'localhost';

GRANT SELECT ON ecommerce.* TO 'DataAnalyst';

CREATE USER 'Guilherme Analyst'@'localhost' IDENTIFIED BY 'ada3e3we-tt83w@E2';

GRANT 'DataAnalyst' TO 'Guilherme Analyst'@'localhost';

ALTER USER 'Guilherme Analyst'@'localhost' DEFAULT ROLE DataAnalyst;