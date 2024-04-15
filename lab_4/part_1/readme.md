# Лабораторная работа 4.1

# 1. Установить Pentaho DI

Установка прошла успешно согласно видео.
![1](./resources/welcome.png)

# 2. Запустить примеры 

![1](./resources/staging_orders.png)

![1](./resources/dim_tables.png)

![1](./resources/pentaho_job.png)

# 3. Создать трансформацию для `sales_fact`

Сначала установим подключение к БД МГПУ:

![1](./resources/pentaho_mgpu_db.png)

Потом создадим и запустим трансформацию

![1](./resources/sales_fact.png)

Посмотрим на результат в DBeaver

![1](./resources/pentaho_sales_fact.png)

# 4. Выявить 8-10 подсистем в ETL Pentaho DI

1. Table input 
2. Excel/textfile input
3. Select values
4. Add sequence
5. Sort rows
6. Merge join
7. Join rows
8. Table output