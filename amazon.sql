DROP DATABASE IF EXISTS  bamazon ;

CREATE DATABASE bamazon;

USE bamazon;

CREATE TABLE products (
  item_id INT NOT NULL AUTO_INCREMENT,
  product_name VARCHAR(45) NULL,
  department_name VARCHAR(45) NULL,
  price DECIMAL(10),
  stock_quantity INT NULL,
  PRIMARY KEY (item_id)
);
-- 

INSERT products(item_id, product_name, department_name, price, stock_quantity)
VALUES(1,"finance_information", "data_mart_1",500, 1500);

INSERT products(item_id, product_name, department_name, price, stock_quantity)
VALUES(2,"consumer_information", "data_mart_2",500, 1500);

INSERT products(item_id, product_name, department_name, price, stock_quantity)
VALUES(3,"macro_economic_information", "data_mart_3",500, 1500);

INSERT products(item_id, product_name, department_name, price, stock_quantity)
VALUES(4,"micro_economic_information", "data_mart_4",500, 1500);

INSERT products(item_id, product_name, department_name, price, stock_quantity)
VALUES(5,"healthcare_information", "data_mart_5",500, 1500);

INSERT products(item_id, product_name, department_name, price, stock_quantity)
VALUES(6,"transportation_cost_information", "data_mart_6",500, 1500);

INSERT products(item_id, product_name, department_name, price, stock_quantity)
VALUES(7,"environmental_information", "data_mart_7",500, 1500);

INSERT products(item_id, product_name, department_name, price, stock_quantity)
VALUES(8,"frequency_of_purchases_information", "data_mart_8",500, 1500);

INSERT products(item_id, product_name, department_name, price, stock_quantity)
VALUES(9,"quantity_of_purchases_information", "data_mart_9",500, 1500);

INSERT products(item_id, product_name, department_name, price, stock_quantity)
VALUES(10,"general_information", "data_mart_10",500, 1500);
