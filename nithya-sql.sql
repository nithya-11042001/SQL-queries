create database shreedb;
use shreedb;
create table author_details(id int,name varchar(30),birth_year int,death_year int,unique (id));
select * from author_details;
insert into author_details values (1,'marcella cole',1950,2020),(2,'George',1960,2022),(3,'charles',1956,2024);
select * from author_details;
insert into author_details values (4,'Samuel',1952,2000),(5,'James',1965,2012),(6,'Charlie',1956,2014);
select * from author_details;
create table book_details(id int,authorid int,title varchar(50),publish_year int,publish_house varchar(50),rating float);
select*from book_details;
insert into book_details values( 1,1,"soulles a girl",1956,"golden albortes",4.3);
select*from book_details;
insert into book_details values(2,2,"weak heart",1980,"diarmud Inc",3.8),(3,3,"Faith of Light",1995,"White Cloud Press",4.3),(4,4,"Memory Of Hope",2000,"Rutis Enterprises",2.7),(5,5,"Warrior Of Wind",2005,"maverick",4.6);
select*from book_details;
create table adaptation_details(bookid int,type varchar(30),title varchar(30),releasing_year int,rating float);
select *from adaptation_details;
insert into adaptation_details values(1,"movie","Gone With The Wolves",2008,3);
select*from adaptation_details;
insert into adaptation_details values(2,"movie","Companions Of Tomorrow",2001,4.2),
(3,"movie","Homeless Warrior",2001,4),
(5,"movie","Blacksmith With Silver",2014,4.3),
(6,"movie","Patrons And Bearers",2004,3.2);
select *from adaptation_details;
create table book_review(bookid int,review varchar(50),authorname varchar(50));
select*from book_review;
insert into book_review values(1,"An incredible book","Sylvia Jones"),
(2,"Great, although it has some flaws","Jessica Parker"),(3,"Dennis Stokes takes full of emotions","Thomas Gree"),
(4,"Incredible craftsmanship of the author","Martin Freeman"),(5,"Not the best book by this author","Jude Falth"),(6,"cannot recall more captivating plot","Alexander Durham");
select * from book_review;
truncate table book_review;