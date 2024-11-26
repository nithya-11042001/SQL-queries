create database RetailDB;
Use RetailDB;
Create table products( id INT Primary Key Auto_Increment,
productsname VARCHAR(50) Not Null,
price DECIMAL(10,2) Not Null, Check (Price > 0),
stock INT Not Null, Check (Stock >= 0));
insert into products values(1,'pencil',10.20,5),(2,'pen',20.50,10),(3,'chart',15.75,15),(4,'stickers',12.50,20);
select*from products;

create table suppliers(id INT Primary Key Auto_Increment,suppliersname VARCHAR(50) Not Null, contact VARCHAR(50));
select*from suppliers;
insert into suppliers values (20,'siva','9867564567'),(21,'jeeva','8902345678'),(22,'karthick','9876523450'),(24,'adharva','7200800151');
select*from suppliers;

create table Sales( id INT Primary Key Auto_Increment,product_id INT, Foreign Key (product_id) References Products(id),
date DATE Not Null,quantity INT Not Null, Check (Quantity > 0),total_price DECIMAL(10, 2) Not Null);
insert into sales values(101,1,'2024-11-20',10,1000.20),(102,2,'2024-11-20',20,1500.75),(103,3,'2024-11-20',30,2000.45),(104,4,'2024-11-20',40,2500.75);
select*from sales;

select *from products;

select*from products where stock<10;

select products.productsname,sales.total_price from products join sales on products.id=sales.product_id;

select products.productsname,sum(sales.quantity*products.price) as total_sales from products join sales on products.id=sales.product_id group by product_id;



