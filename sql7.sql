create table product_details(productid int,name varchar(20),price int,departmentid int,producerid int);
select* from product_details;

insert into product_details values(1,'pen',10,2,1),(2,'pencil',5,2,1),(3,'bag',200,2,1);
insert into product_details values(4,'doll',50,3,2),(5,'teddy',100,3,2),(6,'Gun',150,3,2),(7,'photo frame',250,4,3),(8,'cup',150,4,3),(9,'god statue',200,4,3);
select* from product_details;

create table department_details(departmentid int,department_name varchar(20));
select*from department_details;
insert into department_details values(2,'stationery'),(3,'toys'),(4,'gift');

create table producer_details(producerid int,producername varchar(30));
select *from producer_details;
insert into producer_details values(1,'jeeva'),(2,'surya'),(3,'Karthick');
select *from producer_details;
select name, price, producername,department_name from product_details 
join producer_details on product_details.producerid=producer_details.producerid
join department_details on product_details.departmentid=department_details.departmentid;







