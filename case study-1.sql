
 create database employeemanagement;
 use employeemanagement;
 
 
 create table departments(id INT Primary Key, name VARCHAR(50)not null);
 select*from departments;
 insert into departments values(1,'human resource'),(3,'finance'),(2,'marketing'),(5,'Production');
 insert into departments values(6,'IT');
 select*from departments;
 
create table employees(id INT Primary Key Auto_Increment,name VARCHAR(50) not Null, 
age INT Not Null, gender VARCHAR(10) Not Null,
salary INT not Null, Check (salary >30000),
department_id INT, foreign Key(department_id) references Departments(id));
select*from employees;
insert into employees values(101,'nithya',20,'female',31000,1),(102,'priya',25,'female',32000,2),(103,'sujitha',24,'female',35000,3),(104,'kathir',27,'male',40000,5);
insert into employees values(105,'sathya',30,'female',45000,6);
select*from employees;

create Table projects(id INT Primary Key Auto_Increment,
name VARCHAR(50) Not Null,
budget INT Not Null, Check (Budget > 10000));
select*from projects;
insert into  projects values(1,'Articleship',12000),(2,'student database',15000),(3,'social welfare',18000),(4,'strategic marketing',13000);
select*from employees;


create table Employee_Projects( employee_id INT, Foreign Key (employee_id) References employees(id),project_id  INT, 
Foreign Key(project_id) References projects(id), primary Key (employee_id, project_id));
select *from Employee_Projects;
insert into employee_projects values(101,1),(102,2),(103,3),(104,1);

    
create table Attendance( id INT Primary Key Auto_Increment,employee_id INT, 
Foreign Key(employee_id) References employees(id),date DATE Not Null,
status ENUM ('Present','Absent','On Leave'));
select *from Attendance;

insert into Attendance values
(1,101,'2024-11-18',1),
(2,102,'2024-11-18','Present'),
(3,103,'2024-11-18',2),
(4,104,'2024-11-18',3);
select * from Attendance;


select*from employees;

select *, departments.name from employees 
join departments 
on employees.department_id=departments.id
where departments.id=6;


select departments.name,employees.name,age,salary 
from employees 
join departments 
on employees.department_id=departments.id
where departments.id=5;

select * from projects;
select * from employee_projects;
select * from employees;

select * from projects where budget>15000;

select employees.name,projects.name 
from employees 
join employee_projects 
on employees.id=employee_projects.employee_id
join projects
on projects.id=employee_projects.project_id;


 select*from employees where salary>35000;
 
create table database1(employeename varchar(20),age int check (age>18));
select *from database1;
insert into database1 values('nithya',20);
insert into database1 values('priya',15);
create table database2(employeename varchar(20),age int,email varchar(20) unique);
select*from database2;
insert into database2 values('sujitha',30, 'sujitha23@gmail.com');
insert into database2 values('sathya',40,'sujitha23@gmail.com');
select*from database2;
create table database3(employeename varchar (20),age int,gender varchar(10) default 'unknown');
select*from database3;
insert into database3(employeename,age) values('sathya',30);
select*from database3;

select*from employees join departments on employees.department_id=departments.id where departments.name="IT";

select*from employees; 

select departments.name, department_id,count(*)
from employees 
join  departments
on departments.id=employees.department_id
group by department_id;

update employees 
join departments 
on employees.department_id=departments.id 
set salary=salary*(1/10)
where departments.name='human resource';


update employees join departments on employees.department_id=departments.id  set departments.name="cust_service" Where departments.name="human resourse";  

set sql_safe_updates=0;

select*from departments;

delete from employees where employee_id=101;
 

     
	
     
 
 
  

