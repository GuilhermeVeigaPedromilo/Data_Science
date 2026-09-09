-- TO USE THIS EXAMPLE, 
--  - CREATE A DATABASE OR SCHEMA;
--  - CREATE A INDEX

    CREATE DATABASE IF NOT EXISTS sales;

    CREATE TABLE IF NOT EXISTS client (
        id_client INT NOT NULL AUTO_INCREMENT,
        name_client VARCHAR(100) NOT NULL,
        birth_date DATE NOT NULL,
        PRIMARY KEY(id_client)
    );

    CREATE INDEX index_client ON client (name_client);

--  - USE THIS COMMAND TO REMOVE THIS INDEX
    DROP INDEX index_client;


-- Syntax
-- DROP INDEX index_name;

-- Context: the DROP command allows to delete databases, schemas and indexs.
