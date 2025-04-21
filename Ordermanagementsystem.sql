create database OrderManagementSystem;
use  OrderManagementSystem;

create table product(
productid int primary key,
productName char(50),
description text,
price double,
quantityinStock int,
type varchar (20));


create table users (
    userId int primary key,
    username varchar(50),
    password varchar(50),
    role VARCHAR(10)         
);


create table orders (
    orderId int auto_increment primary key,
    userId int,
    productId int,
    foreign key (userId) references users(userId),
    foreign key (productId) references product(productId)
);

show tables;

INSERT INTO users (userId, username, password, role) VALUES
(1, 'admin_john', 'admin123', 'Admin'),
(2, 'admin_lisa', 'admin456', 'Admin'),
(3, 'user_akash', 'pass123', 'User'),
(4, 'user_riya', 'riya789', 'User'),
(5, 'user_karthik', 'kar@321', 'User'),
(6, 'user_meena', 'mee@pwd', 'User'),
(7, 'user_ali', 'ali_123', 'User'),
(8, 'user_sneha', 'sneh@pwd', 'User'),
(9, 'user_rohit', 'roh!567', 'User'),
(10, 'user_pooja', 'poo@876', 'User');

-- Electronics (productId 101-105)
INSERT INTO product (productid, productName, description, price, quantityinStock, type) VALUES
(101, 'Smartphone A1', '6.5-inch display, 128GB storage', 29999.00, 30, 'Electronics'),
(102, 'Laptop X2', '16GB RAM, 512GB SSD', 69999.00, 20, 'Electronics'),
(103, 'Bluetooth Speaker', 'Portable, 12-hour battery', 3999.00, 50, 'Electronics'),
(104, 'Smartwatch T1', 'Heart-rate & sleep monitor', 6999.00, 40, 'Electronics'),
(105, 'Wireless Earbuds', 'Noise canceling, water-resistant', 3499.00, 60, 'Electronics'),
(201, 'Denim Jacket', 'Blue denim, M size', 1999.00, 25, 'Clothing'),
(202, 'Cotton T-Shirt', 'White, 100% cotton, L size', 499.00, 100, 'Clothing'),
(203, 'Formal Shirt', 'Slim fit, navy blue', 899.00, 40, 'Clothing'),
(204, 'Chinos Pants', 'Beige color, M size', 1499.00, 35, 'Clothing'),
(205, 'Hoodie', 'Black, fleece inside', 1199.00, 45, 'Clothing');



INSERT INTO orders (userId, productId) VALUES
(3, 101),  
(3, 201),  
(4, 102),  
(4, 204),  
(5, 105),  
(5, 202),  
(6, 103),  
(7, 203),  
(8, 104),  
(9, 205);  

SELECT * FROM product


