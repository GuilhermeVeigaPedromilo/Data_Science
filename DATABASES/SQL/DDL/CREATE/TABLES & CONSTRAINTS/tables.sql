-- Creating a table with some constraints
CREATE TABLE my_first_table(
    id INT NOT NULL, -- NOT NULL constaint, so ID isn't null
    msg VARCHAR(75) NOT NULL, -- msg isn't null
    PRIMARY KEY (id)); -- primary key is ID.