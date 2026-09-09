-- TO USE THIS EXAMPLE, 
--  - CREATE A DATABASE OR SCHEMA;
--  - CREATE A TABLE INTO IT (Follow this script):

    CREATE TABLE IF NOT EXISTS client  (
        idClient INT NOT NULL AUTO_INCREMENT,
        nameClient VARCHAR(75) NOT NULL,
        birthDate DATE NOT NULL,
        observations TEXT NOT NULL,
        age INT NOT NULL,
        PRIMARY KEY(idClient)
    );

--  - USE THIS COMMAND TO REMOVE THIS COLUMN INTO YOURS TABLE

    ALTER TABLE client DROP age;

-- Syntax
-- ALTER TABLE table_name DROP column_name;

-- Context: the DROP command allows to delete attributes into tables.
