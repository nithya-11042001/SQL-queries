create table emp_data(name varchar(20),age int, gender varchar(10),Check (age>18 and age<65));
select*from emp_data;
insert into emp_data values( 'viji',30,'female');
insert into emp_data values ('jaya',80,'male');

create table emp_data1(name varchar(20),age int, gender varchar(10),check(gender='female' and gender='male'and gender='others'));
select*from emp_data1;
insert into emp_data1 values( 'viji',30,'unknown');

create table emp_data3(name varchar(20),age int, gender varchar(10),salary int,check(salary>10000));
select*from emp_data3;
insert into emp_data3 values('viji',30,'female',20000);
insert into emp_data3 values('sai',30,'female',5000);

create table emp_data4(name varchar(20),age int, gender varchar(10),pan_num varchar(50) unique);
select*from emp_data4;
insert into emp_data4 values('vijay',50,'male','PNXCD1234J');
Insert into emp_data4 values('surya',45,'male','BNPXZ6789G');
insert into emp_data4 values('vikram',55,'male','PNXCD1234J');

create table emp_data5(name varchar(20),age int, gender varchar(10),city varchar(50) default'chennai');
select*from emp_data5;
insert into emp_data5(name,age,gender) values('karthick',40,'male');

create table emp_data8(fullname varchar(20) not null,age int, gender varchar(10));
insert into emp_data8(age,gender) values(40,'male');
select *from emp_data8;

create table emp_data9(name varchar(20),age int, gender varchar(10),emailid varchar(30) unique);
select *from emp_data9;
insert into emp_data9 values('vikram',55,'male','shree2345@gmail.com');
insert into emp_data9 values('vishal',50,'male','nithya123@gmail.com');
insert into emp_data9 values('sasi kumar',53,'male','shree2345@gmail.com');

create table emp_details(name varchar(20),age int,gender varchar(30) default 'not specified');
select*from emp_details;
insert into emp_details(name,age) values('nithya',20);

create table information(name varchar(20),age int,gender varchar(10),Check (age>0));
select*from information;
insert into information values( 'vimal',50,'female');
insert into information values( 'vishnu',-50,'male');

create table emp_data11(city varchar(20) not null,age int, gender varchar(10));
insert into emp_data11(city,age,gender) values("chn",40,'male');
insert into emp_data11(age,gender) values(40,'male');
select *from emp_data11;

create table emp_data12(name varchar(20),age int default '25',gender varchar(10));
select*from emp_data12;
insert into emp_data12(name,gender) values('karthick','male');

create table emp_data13(fullname varchar(20) check (char_length(fullname) between 3 and 20),age int, gender varchar(10));
select*from emp_data13;
insert into emp_data13 values('AK',30,'MALE');

create table emp_data14(mobile int, check (length(mobile)=10), age int, gender varchar(10));
select * from emp_data14 ;
insert into emp_data14 values(97895678,20,'female');

create table emp_data15(name varchar(20),age int, salary int,Check (salary>15000 and age<50000));
select*from emp_data15;
insert into emp_data15 values('siva',20,30000);
insert into emp_data15 values('siva',20,10000);

















