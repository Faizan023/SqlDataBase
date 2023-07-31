create database companyname;
use companyname;


create table Employee (
E_Id int identity(1,1)  not null,
E_Name varchar(20) not null,
E_Phone int not null,
E_Email varchar(50) not null,
address varchar(70) not null,
DepartId int not null,

foreign key (DepartId) references Department (D_Id)
);

create table Department (
D_Id int identity(1,1) not null,
D_Name varchar(50) not null

constraint pk_departid primary key  (D_Id)
);

create table Projects (
P_Id int identity(1,1) not null,
D_Id int not null,
alloteddate date not null,
Duedate date not null

foreign key( D_Id )references Department (D_Id)
);

insert into Employee (E_Name,E_Phone,E_Email,address,DepartId)
values('Faizan',1010125741,'mansurifaizan@gmail.com','Ajitmill',1);

insert into Employee (E_Name,E_Phone,E_Email,address,DepartId)
values('Afzal',1210125732,'mansuriafzal@gmail.com','Juhapura',2);

insert into Employee (E_Name,E_Phone,E_Email,address,DepartId)
values('Atif',1110125741,'mansuriatifn@gmail.com','Bapunagar',3);

insert into Employee (E_Name,E_Phone,E_Email,address,DepartId)
values('saad',00110125741,'mansurisaad@gmail.com','Vaadodara',4);

insert into Employee (E_Name,E_Phone,E_Email,address,DepartId)
values('Zayan',00110125741,'mansurizayan@gmail.com','Sarkhej',5);

insert into Department(D_Name)
values('It');

insert into Department(D_Name)
values('Network');

insert into Department(D_Name)
values('Finance');

insert into Department(D_Name)
values('Management');

insert into Department(D_Name)
values('Administrator');

insert into Projects (D_Id,alloteddate,Duedate)
values (1,'2023-02-20','2023-05-13');

insert into Projects (D_Id,alloteddate,Duedate)
values (2,'2023-4-12','2023-06-20');

insert into Projects (D_Id,alloteddate,Duedate)
values (3,'2023-05-13','2023-07-15');

insert into Projects (D_Id,alloteddate,Duedate)
values (4,'2023-02-20','2023-04-20');

insert into Projects (D_Id,alloteddate,Duedate)
values (5,'2023-04-20','2023-06-20');

select * from Projects