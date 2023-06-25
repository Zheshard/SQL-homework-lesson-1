CREATE DATABASE mobile_phone;
USE mobile_phone;

-- Создать таблицу с мобильными телефонами
CREATE TABLE phones 
(id INT PRIMARY KEY NOT NULL,
ProductName VARCHAR(30) NOT NULL,
Manufacturer VARCHAR(30) NOT NULL,
ProductCount INT NOT NULL,
Price INT);

-- Добавить данные о телефонах
INSERT INTO phones(id, ProductName, Manufacturer, ProductCount, Price)
VALUES
(1, 'iPhone X', 'Apple', 3, 75000),
(2, 'iPhone 8', 'Apple', 2, 51000),
(3, 'Galaxy S9', 'Samsung', 2, 55000),
(4, 'Galaxy S8', 'Samsung', 1, 41900),
(5, 'P20 Pro', 'Huawei', 5, 35000);

SELECT * FROM phones;

-- Получить название, произовдителя и цену для товаров, количество которых превышает 2
SELECT ProductName, Manufacturer, Price FROM phones
WHERE ProductCount > 2;

-- Получить весь ассоритмент товаров марки Samsung
SELECT * FROM phones
WHERE Manufacturer = 'Samsung';

-- Получить товары, у кторых есть упомиание Samsung
SELECT * FROM phones
WHERE ProductName LIKE '%Samsung%'
	OR Manufacturer LIKE '%Samsung%';

-- Получить товары, у кторых есть упомиание iPhone
SELECT * FROM phones
WHERE ProductName LIKE '%iPhone%'
	OR Manufacturer LIKE '%iPhone%';

-- Получить товары, у кторых встречается цифра 8
SELECT * FROM phones
WHERE ProductName LIKE '%8%';