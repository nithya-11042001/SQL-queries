create table product_details(productid int,name varchar(20),price int,departmentid int,producerid int);
select* from product_details;

insert into product_details values(1,'pen',10,2,1),(2,'pencil',5,2,1),(3,'bag',200,2,1);

create table department_details(departmentid int,department_name varchar(20));
select*from department_details;

create table producer_details(producerid int,producername varchar(30));
select *from producer_details;
