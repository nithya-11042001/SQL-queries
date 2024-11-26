create database HospitalDB;
Use HospitalDB;

Create table Patients(id INT Primary Key Auto_Increment,name VARCHAR(50) Not Null,age INT Not Null,gender VARCHAR(10),contact VARCHAR(50));
select*from patients;
insert into patients values (201,'sathya',30,'female','8765900012'),(202,'subha',35,'female','9700023458'),(203,'kumar',40,'male','7200500162'),(204,'sathish',25,'male','9780045672');
select*from patients;

create table Doctors ( id INT Primary Key Auto_Increment, name VARCHAR(50) Not Null,specialization VARCHAR(50) Not Null);
select*from Doctors;
insert into Doctors values (11,'premakumari','neurologist'),(12,'senthamzil','psychologist'),(13,'divya','dentist'),(14,'shankar','dermatologist'),(15,'nithyalakshmi','gynaecology');
select*from Doctors;

Create table Appointments(id INT Primary Key Auto_Increment,patients_id INT, Foreign Key (patients_id) References Patients(id),
doctors_id INT, Foreign Key (Doctors_id) References Doctors(id),appointment_date DATE Not Null,
status ENUM ('Scheduled','Completed','Cancelled'));
insert into Appointments values( 51,201,11,'2024-11-18',1),(52,202,12,'2024-11-18',2),(53,203,13,'2024-11-18',3),(54,204,15,'2024-11-18',2);
select*from Appointments;

select*from patients;
select*from doctors;

select  Patients.name as patients_name ,Doctors.name as Doctors_name
from Patients join Appointments
on Appointments.patients_id=Patients.id inner join Doctors on Doctors.id=Appointments.doctors_id;

select Doctors.name as Doctors_name,count(Appointments.id) as Appointments from Doctors join Appointments on Appointments.doctors_id=Doctors.id group by  Appointments.id;
		
   
   
   















       
   
      
        
        
