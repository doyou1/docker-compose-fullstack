DROP DATABASE IF EXISTS jh_db;
CREATE DATABASE jh_db;

USE jh_db;

DROP TABLE IF EXISTS test;

CREATE TABLE test (
  id int NOT NULL AUTO_INCREMENT primary key,
  name varchar(30),
  description varchar(255)
);

INSERT INTO test (id, name, description) VALUES (1, 'test1', 'test data 1');
INSERT INTO test (id, name, description) VALUES (2, 'test2', 'test data 2');
INSERT INTO test (id, name, description) VALUES (3, 'test3', 'test data 3');
INSERT INTO test (id, name, description) VALUES (4, 'test4', 'test data 4');
INSERT INTO test (id, name, description) VALUES (5, 'test5', 'test data 5');
INSERT INTO test (id, name, description) VALUES (6, 'test6', 'test data 6');
INSERT INTO test (id, name, description) VALUES (7, 'test7', 'test data 7');
INSERT INTO test (id, name, description) VALUES (8, 'test8', 'test data 8');
INSERT INTO test (id, name, description) VALUES (9, 'test9', 'test data 9');
INSERT INTO test (id, name, description) VALUES (10, 'test10', 'test data 10');
