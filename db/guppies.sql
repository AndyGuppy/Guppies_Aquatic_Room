
DROP TABLE IF EXISTS sales;
DROP TABLE IF EXISTS customers;
DROP TABLE IF EXISTS products;

CREATE TABLE customers (
  id SERIAL4 primary key,
  first_name VARCHAR(255),
  last_name VARCHAR(255),
  address_line_1 VARCHAR(255),
  address_line_2 VARCHAR(255),
  postcode VARCHAR(255),
  funds REAL
);

CREATE TABLE products (
  id SERIAL4 primary key,
  species VARCHAR(255),
  latin_name VARCHAR(255),
  image VARCHAR(255),
  price REAL,
  quantity INT4
);


CREATE TABLE sales (
  id SERIAL4 primary key,
  customer_id INT4 references customers(id) ON DELETE CASCADE,
  product_id INT4 references products(id) ON DELETE CASCADE,
  purchase_type VARCHAR(255),
  Purchase_time text,
  delivery_type VARCHAR(255)
);