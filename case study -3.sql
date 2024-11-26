create database studentDB;
use studentDB;

Create table students(id INT Primary Key Auto_Increment ,name VARCHAR(50) Not Null ,age INT Not Null,email VARCHAR(50) Not Null Unique);
select*from students;
insert into students values(1,'abitha',20,'abitha768@gmail.com'),(2,'udhaya',25,'uday5436@gmail.com'),(3,'priya',26,'priya1234@gmail.com'),(4,'divya',27,'divya1244@gmail.com');

create table Courses(id INT Primary Key Auto_Increment,name VARCHAR(50) Not Null);
select*from courses;
insert into courses values(10,'B.com'),(11,'B,B.A'),(12,'B.SC'),(13,'B.C.A');

create table Enrollments (student_id INT, Foreign Key(student_id) References Students(id),
course_id INT, Foreign Key(course_id) References Courses(id),
grade CHAR(1),Primary Key (student_id, course_id));
insert into Enrollments values (1,10,'a'),(2,11,'o'),(3,12,'b'),(4,13,'c');
select*from enrollments;

select *from students;

select*from courses;


select courses.name,count(student_id)
from courses 
join enrollments
on enrollments.course_id=courses.id
group by courses.id,courses.name;


SELECT students.name,courses.name FROM students  JOIN enrollments 
ON students.id = enrollments.student_id
JOIN courses ON enrollments.course_id = courses.id;


#Show the names of students and the courses they are enrolled in.
#Count the number of students in each course.

