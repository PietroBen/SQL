1)Create your own customers table, make sure you create it with an auto_increment primary key.

CREATE TABLE COSTUMERS(
ID INT AUTO_INCREMENT,
NAME VARCHAR(255),
FAVOURITE_MEAL_NAME VARCHAR(255),
PRIMARY KEY (ID)
);

2)Insert some customers with an insert statement.

INSERT INTO CUSTOMERS(NAME,FAVOURITE_MEAL_NAME)
VALUES('PIETRO','MEAT');
INSERT INTO CUSTOMERS(NAME,FAVOURITE_MEAL_NAME)
VALUES('MARIO','VEGETARIAN');
INSERT INTO CUSTOMERS(NAME,FAVOURITE_MEAL_NAME)
VALUES('FRANCESCA','VEGAN');

3)Edit these customers using the UPDATE statement with a WHERE clause referring to the id.

UPDATE CUSTOMERS
SET NAME = 'GIOVANNA'
WHERE ID = 1;

4)Delete some customers with delete from statement with a WHERE clause referring to the id.

DELETE FROM CUSTOMERS
WHERE ID = 2;

5)Delete all customers with a truncate statement.

TRUNCATE COSTUMERS;

6)Look at the tables below and write which column(s) you think would make a good primary key.

Question 1: the primary key is costumer_id.

CREATE TABLE Customers (
 customer_id INT NOT NULL AUTO_INCREMENT,
 first_name VARCHAR(255) NOT NULL,
 last_name VARCHAR(255) NOT NULL,
 email VARCHAR(255) NOT NULL,
 PRIMARY KEY (customer_id)
);

Question 2: the primary key is product_name but maybe product_description is better for the uniqueness.

CREATE TABLE Products (
 product_name VARCHAR(255) NOT NULL,
 product_description VARCHAR(255) NOT NULL,
 product_price DECIMAL(10, 2) NOT NULL,
 product_quantity INT NOT NULL
);
Question 3: the primary key is order_id.

CREATE TABLE Orders (
 order_id INT NOT NULL AUTO_INCREMENT,
 customer_id INT NOT NULL,
 expected_arrival_time DATE
);
Question 4: the primary key is order_id.

CREATE TABLE Product_Orders (
 order_id INT NOT NULL AUTO_INCREMENT,
 product_name VARCHAR(255) NOT NULL,
 total_revenue DOUBLE
);