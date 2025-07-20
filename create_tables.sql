Enter password: ****
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 10
Server version: 9.3.0 MySQL Community Server - GPL

Copyright (c) 2000, 2025, Oracle and/or its affiliates.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> show databases;
+--------------------+
| Database           |
+--------------------+
| 14_feb_batch       |
| information_schema |
| librarydb          |
| mysql              |
| performance_schema |
| serenemind         |
| sys                |
| tables             |
+--------------------+
8 rows in set (0.807 sec)

mysql> create database Online_Retail_Sales;
Query OK, 1 row affected (0.260 sec)

mysql> use online_reatial_sales;
ERROR 1049 (42000): Unknown database 'online_reatial_sales'
mysql> use online_retail_sales;
Database changed
mysql> CREATE TABLE Category (
    ->     category_id INT PRIMARY KEY AUTO_INCREMENT,
    ->     category_name VARCHAR(100) NOT NULL
    -> );
Query OK, 0 rows affected (0.438 sec)

mysql> CREATE TABLE Product (
    ->     product_id INT PRIMARY KEY AUTO_INCREMENT,
    ->     name VARCHAR(100) NOT NULL,
    ->     description TEXT,
    ->     price DECIMAL(10,2),
    ->     stock INT,
    ->     category_id INT,
    ->     FOREIGN KEY (category_id) REFERENCES Category(category_id)
    -> );
Query OK, 0 rows affected (0.396 sec)

mysql> CREATE TABLE Customer (
    ->     customer_id INT PRIMARY KEY AUTO_INCREMENT,
    ->     name VARCHAR(100) NOT NULL,
    ->     email VARCHAR(100) UNIQUE,
    ->     phone VARCHAR(15),
    ->     address TEXT
    -> );
Query OK, 0 rows affected (0.338 sec)

mysql> CREATE TABLE Orders (
    ->     order_id INT PRIMARY KEY AUTO_INCREMENT,
    ->     order_date DATE NOT NULL,
    ->     customer_id INT,
    ->     FOREIGN KEY (customer_id) REFERENCES Customer(customer_id)
    -> );
Query OK, 0 rows affected (0.346 sec)

mysql> CREATE TABLE OrderItem (
    ->     order_item_id INT PRIMARY KEY AUTO_INCREMENT,
    ->     order_id INT,
    ->     product_id INT,
    ->     quantity INT,
    ->     unit_price DECIMAL(10,2),
    ->     FOREIGN KEY (order_id) REFERENCES Orders(order_id),
    ->     FOREIGN KEY (product_id) REFERENCES Product(product_id)
    -> );
Query OK, 0 rows affected (0.373 sec)

mysql> CREATE TABLE Payment (
    ->     payment_id INT PRIMARY KEY AUTO_INCREMENT,
    ->     order_id INT,
    ->     amount DECIMAL(10,2),
    ->     payment_date DATE,
    ->     payment_method VARCHAR(50),
    ->     FOREIGN KEY (order_id) REFERENCES Orders(order_id)
    -> );
Query OK, 0 rows affected (0.367 sec)

mysql> show tables;
+-------------------------------+
| Tables_in_online_retail_sales |
+-------------------------------+
| category                      |
| customer                      |
| orderitem                     |
| orders                        |
| payment                       |
| product                       |
+-------------------------------+
6 rows in set (0.116 sec)

mysql> desc category;
+---------------+--------------+------+-----+---------+----------------+
| Field         | Type         | Null | Key | Default | Extra          |
+---------------+--------------+------+-----+---------+----------------+
| category_id   | int          | NO   | PRI | NULL    | auto_increment |
| category_name | varchar(100) | NO   |     | NULL    |                |
+---------------+--------------+------+-----+---------+----------------+
2 rows in set (0.056 sec)

mysql> desc customer;
+-------------+--------------+------+-----+---------+----------------+
| Field       | Type         | Null | Key | Default | Extra          |
+-------------+--------------+------+-----+---------+----------------+
| customer_id | int          | NO   | PRI | NULL    | auto_increment |
| name        | varchar(100) | NO   |     | NULL    |                |
| email       | varchar(100) | YES  | UNI | NULL    |                |
| phone       | varchar(15)  | YES  |     | NULL    |                |
| address     | text         | YES  |     | NULL    |                |
+-------------+--------------+------+-----+---------+----------------+
5 rows in set (0.043 sec)

mysql> desc orderitem;
+---------------+---------------+------+-----+---------+----------------+
| Field         | Type          | Null | Key | Default | Extra          |
+---------------+---------------+------+-----+---------+----------------+
| order_item_id | int           | NO   | PRI | NULL    | auto_increment |
| order_id      | int           | YES  | MUL | NULL    |                |
| product_id    | int           | YES  | MUL | NULL    |                |
| quantity      | int           | YES  |     | NULL    |                |
| unit_price    | decimal(10,2) | YES  |     | NULL    |                |
+---------------+---------------+------+-----+---------+----------------+
5 rows in set (0.038 sec)

mysql> desc orders;
+-------------+------+------+-----+---------+----------------+
| Field       | Type | Null | Key | Default | Extra          |
+-------------+------+------+-----+---------+----------------+
| order_id    | int  | NO   | PRI | NULL    | auto_increment |
| order_date  | date | NO   |     | NULL    |                |
| customer_id | int  | YES  | MUL | NULL    |                |
+-------------+------+------+-----+---------+----------------+
3 rows in set (0.044 sec)

mysql> desc payment;
+----------------+---------------+------+-----+---------+----------------+
| Field          | Type          | Null | Key | Default | Extra          |
+----------------+---------------+------+-----+---------+----------------+
| payment_id     | int           | NO   | PRI | NULL    | auto_increment |
| order_id       | int           | YES  | MUL | NULL    |                |
| amount         | decimal(10,2) | YES  |     | NULL    |                |
| payment_date   | date          | YES  |     | NULL    |                |
| payment_method | varchar(50)   | YES  |     | NULL    |                |
+----------------+---------------+------+-----+---------+----------------+
5 rows in set (0.038 sec)

mysql> desc product;
+-------------+---------------+------+-----+---------+----------------+
| Field       | Type          | Null | Key | Default | Extra          |
+-------------+---------------+------+-----+---------+----------------+
| product_id  | int           | NO   | PRI | NULL    | auto_increment |
| name        | varchar(100)  | NO   |     | NULL    |                |
| description | text          | YES  |     | NULL    |                |
| price       | decimal(10,2) | YES  |     | NULL    |                |
| stock       | int           | YES  |     | NULL    |                |
| category_id | int           | YES  | MUL | NULL    |                |
+-------------+---------------+------+-----+---------+----------------+
6 rows in set (0.040 sec)