from datetime import datetime

import psycopg2
import pandas as pd
from sqlalchemy import create_engine

from airflow import DAG
from airflow.operators.empty import EmptyOperator
from airflow.operators.python_operator import PythonOperator
from airflow.utils.dates import days_ago


HOST = '95.131.149.21'
USER = 'm_17'
PASSWORD = '51bo3q'
DATABASE = 'dep17'


default_args = {
    'owner': 'alexeevkv',
    'start_date': days_ago(1),
}


def fetch_df(cur, query) -> pd.DataFrame:
    cur.execute(query)
    res = cur.fetchall()
    field_names = [i[0] for i in cur.description]
    return pd.DataFrame(data=res, columns=field_names)


def sales_fact():
    conn = psycopg2.connect(
        host=HOST,
        user=USER,
        password=PASSWORD,
        database=DATABASE,
    )    

    engine = create_engine(f'postgresql://{USER}:{PASSWORD}@{HOST}:5432/{DATABASE}')

    with conn.cursor() as cur:
        orders_df = fetch_df(cur, query="SELECT * FROM superstore.orders")
        returns_df = fetch_df(cur, query="SELECT * FROM superstore.returns")

        sales_fact = orders_df[~orders_df['order_id'].isin(returns_df['order_id'])]

        sales_fact.to_sql('sales_fact', engine, schema='airflow')


with DAG(
    dag_id='sales_fact',
    default_args=default_args,
    max_active_runs=1,
    catchup=False
) as dag:
    start = EmptyOperator(task_id='start')
    end = EmptyOperator(task_id='end')
    write_data_task = PythonOperator(task_id='sales_fact', python_callable=sales_fact)

    start >> write_data_task >> end
