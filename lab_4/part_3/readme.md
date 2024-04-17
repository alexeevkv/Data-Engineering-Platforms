# Fancy ETL - airflow 

Для того, чтобы развернуть у себя Apache Airflow будем использорвать `docker-compose`, который взяли с их [сайта](https://airflow.apache.org/docs/apache-airflow/2.9.0/docker-compose.yaml).

Внутри `docker-compose` мы поменяли некоторые значения, например изменили расположение volume, создав для этого директорию airflow_volume. Также изменили значение переменной `AIRFLOW__CORE__LOAD_EXAMPLES` на `false`, чтобы по дефолту не появилось миллион дагов с примера. 

Сами даги хранятся в директории `airflow_volume/dags`, которая является вольюмом.

После успешного запуска 


```bash

docker-compose up -d
```

Проверим, что все сервисы успешно поднялись.

![1](./resources/docker_ps.png)


Можем перейти по localhost:8080

и увидеть, что можно войти по логину/пароля airflow/airflow

![1](./resources/airflow_login.png)

где можно увидеть наш даг hello_world

![1](./resources/dags.png)

Перейдем в него и запустим.

![1](./resources/success_run.png)


Сделаем простой даг, который подключается к БД МГПУ, забирате оттуда 2 датафрейма (orders и returns), создает таблицу sales_fact и пишет её в схему airflow в моей ДБ - dep17. Код [тут](./airflow_volume/dags/sales_fact.py)

Но ресурсов на выполнение дага не хватило...

Вот логи [ошибки](./airflow_volume/logs/dag_id=sales_fact/run_id=manual__2024-04-17T074935.724301+0000/)

