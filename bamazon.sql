-- Drops the favorite_db if it exists currently --
DROP DATABASE IF EXISTS bamazon;
-- Creates the "favorite_db" database --
CREATE DATABASE bamazon;

USE bamazon;

CREATE TABLE products (
   id INTEGER NOT NULL AUTO_INCREMENT,
  product_name VARCHAR(100),
  department_name VARCHAR(100),
  price DECIMAL(10,2),
  stock_quantity DECIMAL(10,2),
  PRIMARY KEY (id)
);

SELECT * FROM products;

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES("Bubly Sparkling Water", "Food & Grocery", 7.16, 200);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES("Lip Trip SPF 15", "Beauty & Health", 39.99, 123);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES("Harry Potter and the Sorcerer's Stone", "Books & Audible", 6.99, 30);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES("Jumanji: Welcome To The Jungle", "Movies, Music & Games", 4.99, 120);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES("Ceramic Cup", "Handmade", 27.99, 3);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES("Under Armour Men's Tech Short Sleeve T-Shirt", "Sports & Outdoors", 24.00, 204);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES("Champion Men's Jersey Short", "Sports & Outdoors", 13.99, 400);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES("To Kill a Mockingbird", "Books & Audible", 8.99, 783);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES("Star Wars: The Last Jedi (Theatrical Version)", "Movies, Music & Games", 4.99, 300);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES("Glass Cleaner", "Automotive & Industrial", 15.29, 38);