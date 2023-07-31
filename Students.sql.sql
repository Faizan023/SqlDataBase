create database Students;
use Students;

create table StudentsDetails(
Id int Identity(1,1) not null,
Name varchar(20) not null,
Email varchar(50) not null,
Phone int not null,
Standard int not null,
Section varchar(6) not null,

constraint pk_Id primary key (Id)
);

select * from StudentsDetails;