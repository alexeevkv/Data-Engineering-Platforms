-- Создание таблицы Sales Fact
CREATE TABLE Sales_Fact (
    sales_id SERIAL PRIMARY KEY,
    dimension_id INT,
    sales_amount DECIMAL,
    profit_amount DECIMAL
);

-- Вставка данных в таблицу Sales Fact с использованием id из таблицы Dimensions
INSERT INTO Sales_Fact (dimension_id, sales_amount, profit_amount)
VALUES (1, 1000.00, 500.00),
       (2, 1500.00, 700.00),
       (3, 800.00, 300.00),
       (4, 1200.00, 600.00),
       (5, 2000.00, 900.00);