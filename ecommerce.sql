CREATE TABLE users (
  user_id SERIAL PRIMARY KEY,
  username VARCHAR(75),
  user_email VARCHAR(75)
);

CREATE TABLE products (
  product_id SERIAL PRIMARY KEY,
  product_name VARCHAR(75),
  product_price NUMERIC(8,2)
);

CREATE TABLE user_product (
  user_id INT NOT NULL REFERENCES users(user_id),
  product_id INT NOT NULL REFERENCES products(product_id),
  quantity INT
);

--===============================================================================--
--User 1
INSERT INTO users (username,user_email)
VALUES ('Megan Fox', 'MeganFox1@hotmail.com')
--User 2
INSERT INTO users (username,user_email)
VALUES ('Carlos Escobar', 'wherethebusgo@msn.com')
--User 3
INSERT INTO users (username,user_email)
VALUES ('Greg Jennings', 'thebrokenleg@gmail.com')
--=================================================================================--
--Product 1 
INSERT INTO products (product_name,product_price)
VALUES ('Ramen', 0.50 )
--Product 2 
INSERT INTO products (product_name,product_price)
VALUES ('Airpods', 129.99 )
--Product 3
INSERT INTO products (product_name,product_price)
VALUES ('Xbox One', 399.99 )
--Product 4 
INSERT INTO products (product_name,product_price)
VALUES ('Aimbot', 9.99 )
--Product 5
INSERT INTO products (product_name,product_price)
VALUES ('6-speed Fan', 39.99 )

--====================================================================================--