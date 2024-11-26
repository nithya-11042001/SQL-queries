create table emp_data1(name varchar(20),age int, gender varchar(10),Check(age>18 and age<65),check(gender='female' and gender='male'and gender='others'));

select*from emp_data;
insert into emp_data1 values( 'viji',30,'unknown');
insert into emp_data values( 'jaya',75,'female');
create table emp_data2(name varchar(20),age int, gender varchar(10),salary int,check(salary>10000));
insert into emp_data2 values( 'viji',30,'female',20000);
select*from emp_data2;
insert into emp_data2 values( 'sai',30,'female',5000);

create table my_data (id int,
name varchar(50) not null,
gender varchar(25) default 'not specified',check(gender='female' and gender='male'and gender='others'),
aadhar_num int unique,
pan_num varchar(50) unique,
salary int, check (salary>10000),
age int default'25', Check(age>18 and age<65),
email varchar(30) unique,
city varchar(50) default'chennai' not null,
country varchar(45) default'india',
mobile int);


