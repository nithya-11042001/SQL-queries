Create database libraryDB;
Use libraryDB;

Create table books(id int primary key Auto_Increment,title varchar(50) not null,author varchar(50) not null,published_year YEAR Not null,gender varchar(30));
Select*from books;
insert into books values(1,'history','hitler',1950,'male'),(2,'geography','charles',1970,'male'),(3,'maths','ramanujam',1985,'male'),(4,'science','edison',1960,'male');
Select*from books;

Create table memebers(id INT Primary Key Auto_Increment,membername VARCHAR(50) Not Null,membership_date DATE Not Null);
Select*from memebers;
insert into memebers values(1,'priya','2024-11-19'),(2,'nithya','2024-11-18'),(3,'subha','2024-11-19'),(4,'sruthi','2024-11-19');
select *from memebers;

create table Borrowing (id INT Primary Key Auto_Increment,book_id INT, Foreign Key(book_id) References Books(id),
memebers_id INT, Foreign Key( memebers_id )References Memebers(id),borrow_date DATE Not Null,
return_date DATE);

select*from borrowing;
insert into borrowing values(10,1,1,'2024-11-17','2024-11-21'),(11,2,2,'2024-11-18','2024-11-20'),(12,3,3,'2024-11-15','2024-11-18'),(13,4,4,'2024-11-14','2024-11-16');
select*from borrowing;

select*from books;
select*from memebers;

select books.id,count(*)
from books
join borrowing
on books.id=borrowing.book_id group by books.id;

select memebers.membername,books.title
from memebers 
join borrowing
on memebers.id=borrowing.memebers_id inner join books on books.id=borrowing.book_id;








