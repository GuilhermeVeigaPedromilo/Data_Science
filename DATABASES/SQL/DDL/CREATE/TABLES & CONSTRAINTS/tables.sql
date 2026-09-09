-- Creating a table with some constraints
CREATE TABLE my_first_table(
    id INT NOT NULL, -- NOT NULL constaint, so ID isn't null
    msg VARCHAR(75) NOT NULL, -- msg isn't null
    PRIMARY KEY (id)); -- primary key is ID.

-- Syntax
-- CREATE TABLE table_name (
--     column1 data_type constraints,
--     column2 data_type constraints,
--     ...
--     columnX data_type constraints
-- );

-- OR

-- CREATE TABLE table_name (
--     column1 data_type constraints,
--     column2 data_type constraints,
--     ...
--     columnX data_type constraints,
--     constraints -- example: PRIMARY KEY (column1)
-- );

-- Creating a table with foreign key
CREATE TABLE IF NOT EXISTS my_second_table (
    id_second_table INT NOT NULL AUTO_INCREMENT,
    msg2 VARCHAR(75) NOT NULL,
    id_first_table INT NOT NULL,
    PRIMARY KEY(id_second_table),
    CONSTRAINT fk_first_table
    FOREIGN KEY(id_first_table) REFERENCES my_first_table(id_first_table)
);