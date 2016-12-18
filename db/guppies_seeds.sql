
-- #seed the customers table
INSERT INTO customers (name, address_line_1,address_line_2,postcode,funds) VALUES ('Daniel Smith','93 Altyre Avenue', 'Glenrothes','KY7 4PY', 100);
INSERT INTO customers (name, address_line_1,address_line_2,postcode,funds) VALUES ('Stephen Ritchie','113 Martin Crescent', 'Ballingry','KY5 8PU', 100);
INSERT INTO customers (name, address_line_1,address_line_2,postcode,funds) VALUES ('Maureen Guppy','6 Strathye Place', 'Glenrothes','KY7 6XQ', 100);

-- seed the products table
INSERT INTO products (specie,latin_name, image, price, quantity) VALUES ('Full Red Guppy', 'poecilia reticulata','./images/red_guppies.JPG',1.50,10);
INSERT INTO products (specie,latin_name, image, price, quantity) VALUES ('Red Robin Gourami', 'Colisa chuna','./images/red_robin Gourami.jpg',2.50,5);

-- seed the sales table
INSERT INTO receipts (customer_id,product_id, purchase_type, purchase_time, delivery_type) VALUES (1, 2,'online',timeofday(),'delivery');
INSERT INTO receipts (customer_id,product_id, purchase_type, purchase_time, delivery_type) VALUES (2, 1,'in-store',timeofday(),'collection');
INSERT INTO receipts (customer_id,product_id, purchase_type, purchase_time, delivery_type) VALUES (1, 1,'auction',timeofday(),'delivery');