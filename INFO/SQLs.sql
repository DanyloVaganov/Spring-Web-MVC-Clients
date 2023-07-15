
-- SQL-запросы --

-- База данных
CREATE DATABASE client_db;

-- Права нового пользователя 
-- (создание, изменение, удаление таблиц).
GRANT CREATE, ALTER, DROP
ON client_db.*
TO 'dev'@'localhost';

-- Права нового пользователя 
-- (манипуляции с данными таблиц).
GRANT INSERT, SELECT, UPDATE, DELETE
ON client_db.*
TO 'dev'@'localhost';

USE client_db;
-- Таблица
CREATE TABLE IF NOT EXISTS client (
  id INTEGER NOT NULL AUTO_INCREMENT,
  first_name VARCHAR(255) NOT NULL,
  last_name VARCHAR(255) NOT NULL,
  phone VARCHAR(255) NOT NULL,
  PRIMARY KEY (id)
);


