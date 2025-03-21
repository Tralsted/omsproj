CREATE TABLE customers(
id serial PRIMARY KEY,
username VARCHAR(50) UNIQUE NOT NULL,
password VARCHAR(50) NOT NULL,
email VARCHAR(355) UNIQUE NOT NULL,
created_on TIMESTAMP NOT NULL,
last_login TIMESTAMP
);

CREATE TABLE products(
id serial PRIMARY KEY,
name VARCHAR(150) UNIQUE NOT NULL,
amount int NOT NULL,
price REAL NOT NULL,
);

CREATE TABLE orders(
order_id serial PRIMARY KEY,
customer_id integer NOT NULL REFERENCES customers(id),
date TIMESTAMP NOT NULL
);

CREATE TABLE order_lines (

order_id integer, 
product_id integer, 
amount integer NOT NULL
PRIMARY KEY (order_id, product_id),
FOREIGN KEY (order_id) REFERENCES orders(order_id),
FOREIGN KEY (product_id) REFERENCES products(product_id)
);
