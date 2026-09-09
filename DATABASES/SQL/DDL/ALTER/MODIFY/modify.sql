-- TO USE THIS EXAMPLE, 
--  - CREATE A DATABASE OR SCHEMA;
--  - CREATE A TABLE INTO IT (Follow this script):

    CREATE TABLE IF NOT EXISTS client  (
        idClient INT NOT NULL AUTO_INCREMENT,
        nameClient VARCHAR(75) NOT NULL,
        birthDate DATE NOT NULL,
        observations TEXT,
        PRIMARY KEY(idClient)
    );

-- USE MODIFY:
    ALTER TABLE client MODIFY nameClient VARCHAR(100) NOT NULL;

-- Syntax
-- ALTER TABLE table_name MODIFY column_name data_type constraints;

-- Context: the modify command allows to modify attributes into tables.
