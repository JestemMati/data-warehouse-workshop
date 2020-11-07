#!/usr/bin/python

import psycopg2
import os

def execute_sql(sql):
    conn = None
    try:
        conn = psycopg2.connect(
            host=os.getenv('DB_HOST'),
            database=os.getenv('DB_NAME'),
            user=os.getenv('DB_USER'),
            password=os.getenv('DB_PW')
        )
        cur = conn.cursor()
        cur.execute(sql)
        conn.commit()
        cur.close()
    except (Exception, psycopg2.DatabaseError) as error:
        print(error)
    finally:
        if conn is not None:
            conn.close()

def insert_list(table, items):
    """ insert multiple into the table  """
    print(",".join(items[0]))
    sql = "INSERT INTO {} VALUES({})".format(table, ",".join(map(lambda x: '%s', items[0])))
    conn = None
    try:
        conn = psycopg2.connect(
            host=os.getenv('DB_HOST'),
            database=os.getenv('DB_NAME'),
            user=os.getenv('DB_USER'),
            password=os.getenv('DB_PW')
        )
        cur = conn.cursor()
        cur.executemany(sql, items)
        conn.commit()
        cur.close()
    except (Exception, psycopg2.DatabaseError) as error:
        print(error)
    finally:
        if conn is not None:
            conn.close()

from itertools import islice
import itertools

def grouper(iterable, n):
    try:
        while True:
            yield itertools.chain((next(iterable),), itertools.islice(iterable, n-1))
    except StopIteration as e:
        pass

def map_bool(values):
    values = [value.rstrip() for value in values]
    values = [value if value else 'f' for value in values]
    values = ['t' if value == 'TRUE' else value for value in values]
    values = ['f' if value == 'FALSE' else value for value in values]
    values = [0 if value == '\\N' else value for value in values]
    return values

def extract_pipe_row(row):
    values = row.split('|')
    return map_bool(values)

def extract_tab_row(row):
    values = row.split("\t")
    return map_bool(values)


if __name__ == '__main__':
    execute_sql('delete from event')
    with open('allevents_pipe.txt', 'r') as f:
        for chunk in grouper(f, 1000):
            insert_list('event', list(map(lambda item: item.split('|'), chunk)))
    
    execute_sql('delete from users')
    with open('allusers_pipe.txt', 'r') as f:
        for chunk in grouper(f, 2000):
            insert_list('users', list(map(extract_pipe_row, chunk)))

    execute_sql('delete from category')
    with open('category_pipe.txt', 'r') as f:
        for chunk in grouper(f, 2000):
            insert_list('category', list(map(extract_pipe_row, chunk)))
    
    execute_sql('delete from listing')
    with open('listings_pipe.txt', 'r') as f:
        for chunk in grouper(f, 2000):
            insert_list('listing', list(map(extract_pipe_row, chunk)))
    
    execute_sql('delete from venue')
    with open('venue_pipe.txt', 'r') as f:
        for chunk in grouper(f, 2000):
            insert_list('venue', list(map(extract_pipe_row, chunk)))
    
    execute_sql('delete from sales')
    with open('sales_tab.txt', 'r') as f:
        for chunk in grouper(f, 2000):
            insert_list('sales', list(map(extract_tab_row, chunk)))

    execute_sql('delete from date')
    with open('date2008_pipe.txt', 'r') as f:
        for chunk in grouper(f, 1000):
            insert_list('date', list(map(lambda item: item.split('|'), chunk)))