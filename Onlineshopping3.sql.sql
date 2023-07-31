create database employeethree;
use employeethree;

create table Employee(
E_Id int identity(1,1) primary key not null,
Name varchar(20) not null,
phone int not null,
E_Mail varchar(50) not null,
Address varchar(70) not null,
Branch varchar(25) not null,
Education varchar(25) not null,
Dateofjoin date not null,
Behaviour varchar(15) not null,
Salaryperyear int not null
);

create table Shop(
Shop_id int identity(1,1) not null,
shop_Name varchar(50) not null,
Owner_Name varchar(15) not null,
BusinessType varchar(30) not null,
Phone int not null,
E_mail varchar(50) not null,
Address varchar(70) not null
);

create table Deliveryboy(
D_Boy int identity(1,1) not null,
Name varchar(20) not null,
E_mail varchar(50) not null,
Phone int not null,
Address varchar(70) not null,
vehicaltype varchar(20) not null,
Vehicalnumber int not null,
DocumentApprovel varchar(10) not null,
Alertlocation varchar(25) not null,
shifts varchar(10) not null
);

ALTER TABLE Employee
DROP  PK__Employee__D730AF34818E2DC5;

alter table Employee 
add constraint pk_eid primary key (E_Id);

alter table Employee
drop constraint pk_eid;

insert into Employee(Name,phone,E_Mail,Address,Branch,Education,Dateofjoin,Behaviour,Salaryperyear)
values('Faizan',1234567890,'mansurifaizan@gmail.com','Ajit mill','Ahmedabad','12thpass', '2022-03-13','Good',1200000);

insert into Employee(Name,phone,E_Mail,Address,Branch,Education,Dateofjoin,Behaviour,Salaryperyear)
values('Afzal',0234567890,'mansuriafzal@gmail.com','Bapunagar','Ahmedabad','graduated', '2022-03-13','Good',1000000);

insert into Employee(Name,phone,E_Mail,Address,Branch,Education,Dateofjoin,Behaviour,Salaryperyear)
values('Atif',1034567890,'mansuriatif@gmail.com','juhapura','Sarkhej','12thpass', '2022-03-13','Good',500000);

insert into Employee(Name,phone,E_Mail,Address,Branch,Education,Dateofjoin,Behaviour,Salaryperyear)
values('Saad',1234567890,'mansurisaad@gmail.com','Bapunagar','Ahmedabad','12thpass', '2022-03-13','Good',2000000);

insert into Employee(Name,phone,E_Mail,Address,Branch,Education,Dateofjoin,Behaviour,Salaryperyear)
values('Zayan',1134567890,'mansurizayan@gmail.com','juhapura','Sarkhej','12thpass', '2022-03-13','Good',100000);

insert into 

select * from Employee