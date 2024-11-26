create database LearningDB;
use LearningDB;

Create Table Courses(id INT Primary Key Auto_Increment,title VARCHAR(100) Not Null,description TEXT);
Select* from courses;
insert into courses values(10,'python',"learning python within 30 days"),(11,'java',"learning java within 60 days"),
(12,'sql',"learning sql within 30 days"),(13,'c',"learning C within 60 days");

create table Instructors(id INT Primary Key Auto_Increment,name VARCHAR(50) Not Null,expertise VARCHAR(50) Not Null );
select*from Instructors;
insert into Instructors values(1,'sathish',"python developer"),(2,'vinith',"java developer"),(3,'subhash',"sql developer"),(4,'dinesh',"c developer");


create table Students(id INT Primary Key Auto_Increment,name VARCHAR(50) Not Null,email VARCHAR(50) Not Null Unique );
select*from students;
insert into students values(1,'nithya',"nithya5653@gmail.com"),(2,'Ramya',"Ramya2345@gmail.com"),(3,'priya',"priya4567@gmail.com"),(4,'divya',"divya1234@gmail.com");


create table Enrollments(students_id INT, Foreign Key (students_id) References Students(id),
course_id INT,Foreign Key (course_id) References Courses(id),enrollment_date DATE Not Null, Primary Key (students_id,course_id));
select*from Enrollments;
insert into Enrollments values(1,10,'2024-11-18'),(2,11,'2024-11-18'),(3,12,'2024-11-18'),(4,13,'2024-11-18');

select*from courses;

select*from instructors;

select 
students.name AS Student_name,
Courses.title as course_title 
From Students join Enrollments on Enrollments.students_id=Students.id 
inner join Courses on Enrollments.course_id=Courses.id;

select Courses.title,count(Enrollments.students_id) from Courses join Enrollments on Enrollments.course_id=Courses.id  group by Courses.title;


      
      
      
      
   
   - 
   -
