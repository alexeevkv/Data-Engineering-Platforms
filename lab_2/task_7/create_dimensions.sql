-- Создание таблицы Dimensions
CREATE TABLE Dimensions (
    id SERIAL PRIMARY KEY,
    dimension_name VARCHAR(50)
);

-- Вставка данных в таблицу Dimensions
INSERT INTO Dimensions (dimension_name)
VALUES ('Dimension 1'),
       ('Dimension 2'),
       ('Dimension 3'),
       ('Dimension 4'),
       ('Dimension 5');