import mysql
from randomuser import RandomUser
from random import randint
import random
import uuid
import mysql.connector
from retry import retry
import urllib

def connection(host, user, password, database):
    mydb = mysql.connector.connect(
      host=host,
      user=user,
      password=password,
      database=database
    )
    
    return mydb

def find_one_by_email(mycursor, email):
    mycursor.execute("SELECT * FROM ecommerce_customer where email = %s", (email,))

    myresult = mycursor.fetchone()
    
    return myresult[0] if myresult is not None else None

def create_address(mycursor, user, user_id):
    sql = '''
        INSERT INTO `ecommerce_address` (`customer_id`, `first_name`, `last_name`, `phone_number`, `street`, `city`, `postcode`, `created_at`, `updated_at`, `country_code`, `province_code`, `province_name`)
        VALUES
        (%s, %s, %s, %s, %s, %s, %s, now(), now(), 'PT', NULL, NULL);

    '''
    args = (user_id, user.get_first_name(), user.get_last_name(), user.get_phone(), user.get_street(), user.get_city(), user.get_postcode())
    
    mycursor.execute(sql, args)
    

def create_account(mycursor, user):
    sql = '''
        INSERT INTO `ecommerce_customer` (`customer_group_id`, `default_address_id`, `email`, `email_canonical`, `first_name`, `last_name`, `birthday`, `gender`, `created_at`, `updated_at`, `phone_number`, `subscribed_to_newsletter`)
        VALUES
        (2, NULL, %s, %s, %s, %s, '1991-11-12 19:46:53', 'u', now(), now(), %s, %s);
    '''
    args = (user.get_email(), user.get_email(), user.get_first_name(), user.get_last_name(), user.get_phone(), randint(0, 1))
    
    mycursor.execute(sql, args)


def get_user_data(mycursor, email):
    mycursor.execute('''
        SELECT c.id as user_id, a.id as address_id FROM ecommerce_customer as c
        JOIN ecommerce_address as a on c.id = a.customer_id
        where email = %s
    ''', (email,))

    myresult = mycursor.fetchone()
    
    return myresult if myresult is not None else None

def available_products_variants(mycursor):
    mycursor.execute('''
        SELECT id FROM ecommerce_product_variant as pv
    ''')
    myresult = mycursor.fetchall()
    
    return [i[0] for i in myresult]

def available_channels(mycursor):
    mycursor.execute('''
        SELECT id FROM ecommerce_channel
    ''')
    myresult = mycursor.fetchall()
    
    return [i[0] for i in myresult]


def compose_order(mycursor, user_data):
    products = available_products_variants(mycursor)
    selected_products = random.sample(products, random.randint(1, 10))
    selected_with_quantity = [(_id, random.randint(1,5)) for _id in selected_products]
    return [(user_data, product) for product in selected_with_quantity]

def get_id_by_token(mycursor, token):
    mycursor.execute("SELECT id FROM ecommerce_order where token = %s", (token,))

    myresult = mycursor.fetchone()
    
    return myresult[0] if myresult is not None else None

@retry((urllib.error.HTTPError), delay=1, backoff=2)
def create_order_address(mycursor):
    user = RandomUser()
    
    sql = '''
        INSERT INTO `ecommerce_address` (`first_name`, `last_name`, `phone_number`, `street`, `city`, `postcode`, `created_at`, `updated_at`, `country_code`, `province_code`, `province_name`)
        VALUES
        (%s, %s, %s, %s, %s, %s, now(), now(), 'PT', NULL, NULL);

    '''
    args = (user.get_first_name(), user.get_last_name(), user.get_phone(), user.get_street(), user.get_city(), user.get_postcode())
    
    mycursor.execute(sql, args)
    
    return mycursor.lastrowid
    

def create_order(mycursor, user_data):
    chanel = random.choice(available_channels(mycursor))
    
    sql = '''
        INSERT INTO `ecommerce_order` (`shipping_address_id`, `billing_address_id`, `channel_id`, `customer_id`, `number`, `notes`, `state`, `checkout_completed_at`, `items_total`, `adjustments_total`, `total`, `created_at`, `updated_at`, `currency_code`, `locale_code`, `checkout_state`, `payment_state`, `shipping_state`, `token_value`, `customer_ip`)
        VALUES
        (%s, %s, %s, %s, %s, NULL, 'fulfilled', now(), 0, 0, 0, now(), now(), 'USD', 'en_US', 'completed', 'paid', 'shipped', %s, NULL);


    '''
    token = str(uuid.uuid4())
    args = (create_order_address(mycursor),
            create_order_address(mycursor),
            chanel,
            user_data[0],
            str(uuid.uuid4()),
            token
    )
    
    mycursor.execute(sql, args)
    
    return mycursor.lastrowid

def fill_with_products(mycursor, order_id, order_data):
    
    sql = '''
        INSERT INTO `ecommerce_order_item` (`order_id`, `variant_id`, `quantity`, `unit_price`, `units_total`, `adjustments_total`, `total`, `is_immutable`, `product_name`, `variant_name`)
        Select order_id, variant_id, quantity, p.price, p.price * quantity, 100, p.price * quantity + 100, 0, product_t.name, pvt.name from
        (Select %s as order_id, %s as variant_id, %s as quantity) as t1
        JOIN ecommerce_channel_pricing as p on p.product_variant_id = t1.variant_id
        JOIN ecommerce_product_variant as pv on pv.id = t1.variant_id
        JOIN ecommerce_product_variant_translation as pvt on pvt.translatable_id = t1.variant_id
        JOIN ecommerce_product as product on pv.product_id = product.id
        JOIN ecommerce_product_translation as product_t on pv.product_id = product_t.translatable_id
    '''
    
    for variant in order_data:        
        args = (
            order_id,
            variant[1][0],
            variant[1][1]
        )
        
        mycursor.execute(sql, args)

@retry((urllib.error.HTTPError), delay=1, backoff=2)
def random_user_exists(mycursor):
    user = RandomUser()
    user_id = find_one_by_email(mycursor, user.get_email())
    if not user_id:
        create_account(mycursor, user)

    loaded = find_one_by_email(mycursor, user.get_email())
    create_address(mycursor, user, loaded)

def user_exists(mycursor, user):
    user_id = find_one_by_email(mycursor, user.get_email())
    if not user_id:
        create_account(mycursor, user)

    loaded = find_one_by_email(mycursor, user.get_email())
    create_address(mycursor, user, loaded)

@retry((urllib.error.HTTPError), delay=1, backoff=2)
def get_random_user_data(mycursor):
    user = RandomUser()
    user_id = find_one_by_email(mycursor, user.get_email())
    if not user_id:
        create_account(mycursor, user)

    loaded = find_one_by_email(mycursor, user.get_email())
    create_address(mycursor, user, loaded)
    return get_user_data(mycursor, user.get_email()) 

@retry((urllib.error.HTTPError), delay=1, backoff=2)
def get_random_users(count = 100):
    return RandomUser.generate_users(count)