-- TO USE THIS EXAMPLE, 
--  - CREATE A DATABASE OR SCHEMA;
--  - CREATE A TABLE INTO IT (Follow this script):

    CREATE TABLE IF NOT EXISTS client  (
        idClient INT NOT NULL AUTO_INCREMENT,
        nameClient VARCHAR(75) NOT NULL,
        birthDate DATE NOT NULL,
        observations TEXT NOT NULL,
        PRIMARY KEY(idClient)
    );

--  - USE THIS COMMAND TO RENAME THIS COLUMN INTO YOURS TABLE

    ALTER TABLE client RENAME TO clients;

-- Syntax
-- ALTER TABLE table_name RENAME TO new_table_name;

-- Context: the RENAME command allows to rename the table.
