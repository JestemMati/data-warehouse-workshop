import click
from db_commerce import *
import random
import time

@click.group()
def cli():
    pass

@click.command()
def hello():
    """Simple program that allows feed ecommerce database"""
    click.echo('python commerce.py --help')

@click.command()
@click.option('--host', default="localhost", help='host address')
@click.option('--database', default="ecommerce", help='db  name')
@click.option('--user', default="root", help='db user name')
@click.option('--password', default="root", help='db password')
def add_random_user(host, database, user, password):
    """Add randomly generated users"""
    cn = connection(host, user, password, database)
    mycursor = cn.cursor()
    random_user_exists(mycursor)
    cn.commit()

@click.command()
@click.option('--host', default="localhost", help='host address')
@click.option('--database', default="ecommerce", help='db  name')
@click.option('--user', default="root", help='db user name')
@click.option('--password', default="root", help='db password')
def add_random_order(host, database, user, password):
    """Add randomly generated user and place order"""
    cn = connection(host, user, password, database)
    mycursor = cn.cursor()
    user_data = get_random_user_data(mycursor)
    order_data = compose_order(mycursor, user_data)
    order_id = create_order(mycursor, user_data)
    fill_with_products(mycursor, order_id, order_data)
    cn.commit()

@click.command()
@click.option('--host', default="localhost", help='host address')
@click.option('--database', default="ecommerce", help='db  name')
@click.option('--user', default="root", help='db user name')
@click.option('--password', default="root", help='db password')
@click.option('--customers_count', default=100, help="amount of returning users")
@click.option('--frequency', default=10, help="random waint between 1 and X")
def returning_customers(host, database, user, password, customers_count, frequency):
    """Add randomly generated user and place order"""
    cn = connection(host, user, password, database)
    mycursor = cn.cursor()

    returning_users = get_random_users(customers_count)
    for user in returning_users:
        user_exists(mycursor, user)
        cn.commit()

    while True:
        user = random.choice(returning_users)
        user_data = get_user_data(mycursor, user.get_email())
        order_data = compose_order(mycursor, user_data)
        order_id = create_order(mycursor, user_data)
        fill_with_products(mycursor, order_id, order_data)
        cn.commit()
        sleep_time = random.randint(0, frequency)
        click.echo("Added order with id {} by user {}, sleeping {} ....".format(order_id, user.get_email(), sleep_time))
        time.sleep(sleep_time)

@click.command()
@click.option('--host', default="localhost", help='host address')
@click.option('--database', default="ecommerce", help='db  name')
@click.option('--user', default="root", help='db user name')
@click.option('--password', default="root", help='db password')
@click.option('--frequency', default=10, help="random waint between 1 and X")
def random_customers(host, database, user, password, frequency):
    """Add randomly generated user and place order"""
    cn = connection(host, user, password, database)
    mycursor = cn.cursor()

    while True:
        user_data = get_random_user_data(mycursor)
        order_data = compose_order(mycursor, user_data)
        order_id = create_order(mycursor, user_data)
        fill_with_products(mycursor, order_id, order_data)
        cn.commit()
        sleep_time = random.randint(0, frequency)
        click.echo("Added order with id {} by user guest, sleeping {} ....".format(order_id, sleep_time))
        time.sleep(sleep_time)

@click.command()
@click.option('--host', default="localhost", help='host address')
@click.option('--database', default="ecommerce", help='db  name')
@click.option('--user', default="root", help='db user name')
@click.option('--password', default="root", help='db password')
@click.option('--frequency', default=10, help="random waint between 1 and X")
def only_visitors(host, database, user, password, frequency):
    """Add randomly generated user and place order"""
    cn = connection(host, user, password, database)
    mycursor = cn.cursor()

    while True:
        random_user_exists(mycursor)
        cn.commit()
        sleep_time = random.randint(0, frequency)
        click.echo("User visited but went away, sleeping {} ....".format(sleep_time))
        time.sleep(sleep_time)

cli.add_command(hello)
cli.add_command(add_random_user)
cli.add_command(add_random_order)
cli.add_command(returning_customers)
cli.add_command(random_customers)
cli.add_command(only_visitors)



if __name__ == '__main__':
    cli()