create database BookYourTicket;
use BookYourTicket;

create table Theators(
Id int identity(1,1)   not null,
Name varchar(50) not null,
Address varchar(70) not null,
AvailableSeats int not null,

constraint pk_UniqueId primary key (Id)
);

create table Movies(
Id Int identity(1,1) primary key not null,
TheaterId Int not null,
Name Varchar(50) not null,
DateTime datetime not null,
TicketAmount int not null,

constraint fk_TheaterId foreign key (TheaterId) references Theators (Id)
 );

create table Customers(
id int identity(1,1) not null,
TheaterId int not null,
MovieId int not null,
Name varchar(20) not null,
PhoneNumber int not null,
BookedTickets int not null,

constraint fk_TheatersId foreign key (TheaterId) references Theators (Id),
constraint fk_MoviesId foreign key (MovieId) references Movies (Id)
);

alter table Movies
add Duration varchar(10) not null;

insert into Theators (Name,Address,AvailableSeats)
values('Devi Cinema','New Naroda',50);

insert into Theators (Name,Address,AvailableSeats)
values('Anupam Cinema','Khokhra',20);

insert into Theators (Name,Address,AvailableSeats)
values('Rajhans Cinema','New Naroda',17);

insert into Theators (Name,Address,AvailableSeats)
values('PVR','Vastral',10);

insert into Theators (Name,Address,AvailableSeats)
values('Gita Gori Cinema','Near TO Soni Ni Chal',52);

insert into Theators (Name,Address,AvailableSeats)
values('Devi Cinema','New Naroda',15);

insert into Theators (Name,Address,AvailableSeats)
values('Devi Cinema','New Naroda',22);

insert into Theators (Name,Address,AvailableSeats)
values('Rajhans Cinema','New Naroda',16);

insert into Theators (Name,Address,AvailableSeats)
values('Anupam Cinema','Khokhra',60);

insert into Theators (Name,Address,AvailableSeats)
values('Anupam Cinema','Khokhra',45);

insert into Theators (Name,Address,AvailableSeats)
values('Rajhans Cinema','New Naroda',18);

insert into Theators (Name,Address,AvailableSeats)
values('Rajhans Cinema','New Naroda',30);

insert into Theators (Name,Address,AvailableSeats)
values('Rajhans Cinema','New Naroda',40);

			-- INSERT DATA INTO MOVIES TABLE

insert into Movies (TheaterId,Name,DateTime,TicketAmount,Duration)
values(1,'Robot','2023-06-11 04:10:00',200,'2hr');

insert into Movies (TheaterId,Name,DateTime,TicketAmount,Duration)
values(2,'Pathaan','2023-06-13 12:00:00',150,'2hr');

insert into Movies (TheaterId,Name,DateTime,TicketAmount,Duration)
values(3,'Bajrangi Bhaijaan','2023-06-17 02:30:00',280,'2:20hr');

insert into Movies (TheaterId,Name,DateTime,TicketAmount,Duration)
values(4,'Pathaan','2023-06-13 01:00:00',550,'2hr');

insert into Movies (TheaterId,Name,DateTime,TicketAmount,Duration)
values(5,'jungle Book','2023-06-15 08:45:00',220,'2:30hr');

insert into Movies (TheaterId,Name,DateTime,TicketAmount,Duration)
values(6,'Vansh','2023-06-14 09:40:00',200,'2hr');

insert into Movies (TheaterId,Name,DateTime,TicketAmount,Duration)
values(7,'Ra.One','2023-06-15 10:15:00',250,'2hr');

insert into Movies (TheaterId,Name,DateTime,TicketAmount,Duration)
values(8,'Bajrangi Bhaijaan','2023-06-13 05:00:00',300,'2hr');

insert into Movies (TheaterId,Name,DateTime,TicketAmount,Duration)
values(9,'Rowdy','2023-06-20 11:00:00',150,'2hr');

select * from Theators where Id=6

insert into Movies (TheaterId,Name,DateTime,TicketAmount,Duration)
values(10,'Bajrangi Bhaijaan','2023-06-20 09:15:00',200,'2hr');

insert into Movies (TheaterId,Name,DateTime,TicketAmount,Duration)
values(11,'Nagin','2023-06-20 09:15:00',220,'2hr');

insert into Movies (TheaterId,Name,DateTime,TicketAmount,Duration)
values(12,'Robot','2023-06-20 11:15:00',180,'2hr');

insert into Movies (TheaterId,Name,DateTime,TicketAmount,Duration)
values(13,'Jawan','2023-06-18 09:15:00',200,'2hr');

insert into Customers(TheaterId,MovieId,Name,PhoneNumber,BookedTickets)
values(1,3,'Faizan',0110101257,2);

insert into Customers(TheaterId,MovieId,Name,PhoneNumber,BookedTickets)
values(2,4,'Afzal',1024474488,4);

insert into Customers(TheaterId,MovieId,Name,PhoneNumber,BookedTickets)
values(3,5,'Atif',0110101257,5);

insert into Customers(TheaterId,MovieId,Name,PhoneNumber,BookedTickets)
values(4,6,'Saad',0110101257,4);

insert into Customers(TheaterId,MovieId,Name,PhoneNumber,BookedTickets)
values(5,7,'Zayan',0110101257,7);

insert into Customers(TheaterId,MovieId,Name,PhoneNumber,BookedTickets)
values(6,8,'Idrish',0110101257,12);

insert into Customers(TheaterId,MovieId,Name,PhoneNumber,BookedTickets)
values(7,9,'Zain',0110101257,1);

insert into Customers(TheaterId,MovieId,Name,PhoneNumber,BookedTickets)
values(8,10,'Adnan',0110101257,2);

insert into Customers(TheaterId,MovieId,Name,PhoneNumber,BookedTickets)
values(9,11,'Noman',0110101257,2);

insert into Customers(TheaterId,MovieId,Name,PhoneNumber,BookedTickets)
values(10,12,'Hasnain',0110101257,5);

insert into Customers(TheaterId,MovieId,Name,PhoneNumber,BookedTickets)
values(11,13,'Arsh',0110101257,11);

insert into Customers(TheaterId,MovieId,Name,PhoneNumber,BookedTickets)
values(12,13,'Faiz',0110101257,3);

insert into Customers(TheaterId,MovieId,Name,PhoneNumber,BookedTickets)
values(13,14,'user',0110101257,1);

update Customers
set MovieId=15
where id=14

select * from  Customers