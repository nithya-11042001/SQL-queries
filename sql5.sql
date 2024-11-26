create table workshop_workers
(id int not null primary key,
name varchar(100) not null,
specialization varchar(50) not null,
master_id int ,
experience int not null,
project_id int not null
)

select * from workshop_workers;

insert into workshop_workers values
(1,'Mathew Conn','woodworking',null,20,1),(2,'kate brown','woodworking',1,4,1),(3,'john doe','incrusting',5,3,1),(4,'john kowalsky','watchmaking',7,2,3);

insert into workshop_workers values
(5,'Mathew Conn','woodworking',null,15,4);


update  workshop_workers
set master_id=1
where id=1;
SET SQL_SAFE_UPDATES = 0;

select master.name as master_name, apprentice.name as apprentice_name
from workshop_workers master
join workshop_workers apprentice
on master.id=apprentice.master_id;

select name,title from author_details join book_details 
on author_details.id=book_details.authorid;

select name,title
from author_details join book_details 
on author_details.id=book_details.authorid 
where publish_year<2005;

select
book_details.title,publish_year,
adaptation_details.title,releasing_year
from book_details
join adaptation_details on book_details.id=adaptation_details.bookid
where adaptation_details.releasing_year - book_details.publish_year <= 8
AND book_details.rating > adaptation_details.rating;

SELECT
  book_details.title,
  adaptation_details.title,type
FROM book_details
LEFT JOIN adaptation_details
ON book_details.id = adaptation_details.bookid;












