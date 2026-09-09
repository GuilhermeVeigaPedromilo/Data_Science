-- TO USE THIS EXAMPLE, 
--  - CREATE A DATABASE OR SCHEMA;
--  - CREATE A TABLE INTO IT (Follow this script):

    CREATE TABLE IF NOT EXISTS client  (
        idClient INT NOT NULL AUTO_INCREMENT,
        nameClient VARCHAR(75) NOT NULL,
        birthDate DATE NOT NULL,
        PRIMARY KEY(idClient)
    );

--  - USE THIS COMMAND TO ADD THIS COLUMN INTO YOURS TABLE

    ALTER TABLE client ADD observations TEXT;

-- Syntax
-- ALTER TABLE table_name ADD column_name data_type constraints;

-- Context: the ADD command allows to add new attributes into tables.
