create database BookTicket;
use BookTicket;

create table Theators(
Id int identity(1,1) primary key not null,
Name varchar(20) not null,
Address varchar(50) not null,

);

create table Movies (
Id int identity(1,1) primary key not null,
Name varchar(25) not null,
RelesedDate datetime not null,
);

create table TelecastShow(
Id int identity(1,1) primary key not null,
TheaterId int not null,
MovieId int not null,
ShowTime datetime not null,
AvailableSeats int not null,
Amount int not null,
Duration int not null,

foreign key (TheaterId) references Theators(Id),
foreign key (MovieId) references Movies (Id)
);



insert into Theators(Name,Address)
values('Devi Cinema','New Naroda');

insert into Theators(Name,Address)
values('Rajhans Cinema','Vastral');

insert into Theators(Name,Address)
values('Anupam Cinema','Khokhara');

insert into Theators(Name,Address)
values('Gita Gauri Cinema','New Naroda');

insert into Theators(Name,Address)
values('PVR','Nikol');

insert into Movies(Name,RelesedDate)
values('Pathaan','2023-06-13 12:00:00')

insert into Movies(Name,RelesedDate)
values('Dilwale','2023-06-15 10:00:00')

insert into Movies(Name,RelesedDate)
values('Robot','2023-06-20 01:00:00')

insert into Movies(Name,RelesedDate)
values('Rowdy','2023-06-15 12:00:00')

insert into Movies(Name,RelesedDate)
values('Bahubali','2023-07-01 12:00:00')

insert into TelecastShow(TheaterId,MovieId,ShowTime,AvailableSeats,Amount,Duration)
values(1,1,'2023-06-13 12:00:00',20,250,2);


insert into TelecastShow(TheaterId,MovieId,ShowTime,AvailableSeats,Amount,Duration)
values(2,2,'2023-06-15 10:00:00',10,200,2);

insert into TelecastShow(TheaterId,MovieId,ShowTime,AvailableSeats,Amount,Duration)
values(3,3,'2023-06-20 01:00:00',50,180,2);

insert into TelecastShow(TheaterId,MovieId,ShowTime,AvailableSeats,Amount,Duration)
values(4,4,'2023-06-15 12:00:00',14,200,3);

insert into TelecastShow(TheaterId,MovieId,ShowTime,AvailableSeats,Amount,Duration)
values(5,5,'2023-06-13 12:00:00',25,200,2);

create table CustomerDetails(
Id int Identity(1,1) primary key not null,
Name varchar(20) not null,
PhoneNumber int not null,
Email varchar(30) not null,
Address varchar(70) not null,

);

create table CustomerBookings(
Id int Identity(1,1) primary key not null,
CustomerId int not null,
TheaterId int not null,
MovieId int not null,
BookedTickets int not null,
);

alter table CustomerBookings 
add foreign key (CustomerId) references CustomerDetails (Id);

alter table CustomerBookings 
add foreign key (TheaterId) references Theators (Id);

alter table CustomerBookings 
add foreign key (MovieId) references Movies (Id);

insert into CustomerDetails(Name,PhoneNumber,Email,Address)
values('Faizan',0110101257,'mansurifaizan@gmail.com','Ajit mill');

insert into CustomerDetails(Name,PhoneNumber,Email,Address)
values('Afzal',0110101257,'mansuriafzal@gmail.com','Bapunagar');

insert into CustomerDetails(Name,PhoneNumber,Email,Address)
values('Atif',0110101257,'mansuriatif@gmail.com','Juhapura');

insert into CustomerDetails(Name,PhoneNumber,Email,Address)
values('Saad',0110101257,'mansurisaad@gmail.com','Bapunagar');

insert into CustomerDetails(Name,PhoneNumber,Email,Address)
values('Zayan',0110101257,'mansurizayan@gmail.com','Bapunagar');

insert into CustomerBookings (CustomerId,TheaterId,MovieId,BookedTickets)
values(1,1,1,5)

insert into CustomerBookings (CustomerId,TheaterId,MovieId,BookedTickets)
values(2,2,2,10)

insert into CustomerBookings (CustomerId,TheaterId,MovieId,BookedTickets)
values(3,3,3,15)

insert into CustomerBookings (CustomerId,TheaterId,MovieId,BookedTickets)
values(4,4,4,25)



select Name from Movies where Id=1 

alter table CustomerBookings
drop constraint FK__CustomerB__Custo__4CA06362




select top 2 * from Movies order by Id desc

select Max(ms.Id) from Movies ms 
select MIn(ms.Id) from Movies ms 


select Count(ms.Name) from Movies ms where ms.Id <= 3  


select AVG(ms.Id)  from Movies ms 

select SUM(ms.Id)  from Movies ms 


select * from Movies ms where ms.Name like '%Rowdy%'

select ms.Name as FullName,* from Movies as ms where ms.Name like '%t%'

select * from Movies ms where ms.Id in (1,2,3)

select * from Theators ts 

select * from CustomerDetails cd

select 
cbooking.Id,
cbooking.CustomerId,
cdetails.Name
from CustomerBookings cbooking inner join CustomerDetails cdetails on cbooking.CustomerId = cdetails.Id



select 
cbooking.Id,
cbooking.CustomerId,
cdetails.Name
from CustomerBookings cbooking left join CustomerDetails cdetails on cbooking.CustomerId = cdetails.Id


select 
cbooking.Id,
cbooking.CustomerId,
cdetails.Name
from CustomerBookings cbooking right join CustomerDetails cdetails on cbooking.CustomerId = cdetails.Id

where cdetails.Id = 3

Order by cdetails.Id asc




---- Join



