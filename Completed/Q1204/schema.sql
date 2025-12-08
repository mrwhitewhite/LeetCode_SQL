DROP DATABASE leetcode;
CREATE DATABASE IF NOT EXISTS leetcode DEFAULT CHARACTER SET utf8 DEFAULT COLLATE utf8_general_ci;

USE leetcode;

-- SCHEMA here
Create table If Not Exists Queue (person_id int, person_name varchar(30), weight int, turn int);
Truncate table Queue;
insert into Queue (person_id, person_name, weight, turn) values ('5', 'Alice', '250', '1');
insert into Queue (person_id, person_name, weight, turn) values ('4', 'Bob', '175', '5');
insert into Queue (person_id, person_name, weight, turn) values ('3', 'Alex', '350', '2');
insert into Queue (person_id, person_name, weight, turn) values ('6', 'John Cena', '400', '3');
insert into Queue (person_id, person_name, weight, turn) values ('1', 'Winston', '500', '6');
insert into Queue (person_id, person_name, weight, turn) values ('2', 'Marie', '200', '4');