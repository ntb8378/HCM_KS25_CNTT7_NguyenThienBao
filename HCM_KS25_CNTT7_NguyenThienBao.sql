create database ShopManager;

use ShopManager;

create table Categories (
	category_id int primary key not null auto_increment,
    category_name char(50) not null
);

create table Products (
	product_id int primary key auto_increment,
    product_name char(50) not null,
    price decimal(18,2) not null,
    stock int not null,
    category_id int,
    
	FOREIGN KEY (category_id)
    REFERENCES Persons(category_id)
);

insert into Categories(category_name) 
values('Điện tử'),
('Thời trang');

insert into Products(product_name ,price ,stock ,category_id)
values('iPhone 15','25000000','10 ','1'),
('Samsung S23 ','20000000','5 ','1'),
('Áo sơ mi nam','500000','50 ','2'),
('Giày thể thao','1200000','20','2');


UPDATE Products 
SET price = 26000000
WHERE product_name ='iPhone 15';

UPDATE Products 
SET stock = stock + 10
WHERE category_id= '1';



DELETE FROM Products WHERE product_id = 4 and price < 1000000;


SELECT * FROM Products;

SELECT *FROM Products
where stock >15;

SELECT *FROM Products
where  price > 1000000 and price  < 25000000;


SELECT *FROM Products
where  product_name <> 'iPhone 15' and stock >0;


SELECT *FROM Products
where  category_id <> '1' and price  > 500000;
