CREATE TABLE test_table (
                            id SERIAL PRIMARY KEY,
                            name VARCHAR(255),
                            email VARCHAR(255)
);

INSERT INTO test_table (name, email)
VALUES ('Test Name', 'test.email@example.com');