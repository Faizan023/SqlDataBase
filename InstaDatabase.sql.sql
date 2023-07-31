create database instagram;
use instagram;

create table Users(
Users_Id int identity(1,1) not null,
Users_Name varchar(20) not null,
Users_Password varchar(10) not null,
Users_Phone int not null,
Users_Email varchar(50) not null,
Activate_Date date not null,
constraint UserId primary key (Users_Id)
);

create table Profile(
Use_Id int not null,
Posts int not null,
Followers int not null,
Following int not null

foreign key (Use_Id) references Users (Users_Id)
);


create table Post(
Post_Id int identity(1,1) not null,
U_Id int not null,
Likes int not null,
Post_Date date not null,
foreign key (U_Id) references Users (Users_Id)
);

create table Followers(
UId int not null,
UName Varchar(25) not null,
Followres int not null,
foreign key (UId) references Users (Users_Id)
);

create table Following(
UserId int not null,
UName Varchar(25) not null,
Folloing int not null,
foreign key (UserId) references Users (Users_Id)
);

			--INSERT DATA IN USERS TABLE--
insert into Users(Users_Name,Users_Password,Users_Phone,Users_Email,Activate_Date)
values('_faizan_mn','Mansuri@12',1011010102,'mansurifaizan@gmail.com','2019-12-20');

insert into Users(Users_Name,Users_Password,Users_Phone,Users_Email,Activate_Date)
values('_azzaa_','Azza@12',1011010102,'mansuriafzal@gmail.com','2017-08-01');

insert into Users(Users_Name,Users_Password,Users_Phone,Users_Email,Activate_Date)
values('atif_023','Mansuri@12',11010102,'mansuriatif@gmail.com','2020-12-10');

insert into Users(Users_Name,Users_Password,Users_Phone,Users_Email,Activate_Date)
values('saad_mansuri','saad@man',1011010102,'mansurisaad@gmail.com','2021-09-08');

insert into Users(Users_Name,Users_Password,Users_Phone,Users_Email,Activate_Date)
values('zayan_mn_121','Mansuri@12',1011010102,'mansuriatif@gmail.com','2022-10-23');

			--INSERT DATA IN PROFILE TABLE--
insert into Profile(Use_Id,Posts,Followers,Following)
values(2,5,249,191);

insert into Profile(Use_Id,Posts,Followers,Following)
values(2,16,300,130);

insert into Profile(Use_Id,Posts,Followers,Following)
values(3,0,500,423);

insert into Profile(Use_Id,Posts,Followers,Following)
values(4,20,1000,140);

insert into Profile(Use_Id,Posts,Followers,Following)
values(6,3,2500,80);

			--INSERT DATA IN POST TABLE--
insert into Post(U_Id,Likes,Post_Date)
values(2,101,'2020-08-08');

insert into Post(U_Id,Likes,Post_Date)
values(2,101,'2020-08-08');

insert into Post(U_Id,Likes,Post_Date)
values(3,90,'2022-12-18');

insert into Post(U_Id,Likes,Post_Date)
values(4,450,'2022-12-08');

insert into Post(U_Id,Likes,Post_Date)
values(6,2100,'2022-12-08');

			--INSERT DATA INTO FOLLOWERS TABLE--
insert into Followers(UId,UName,Followres)
values(2,'_faizan_mn_',249);

insert into Followers(UId,UName,Followres)
values(2,'_azzaa_',300);

insert into Followers(UId,UName,Followres)
values(3,'atif_023',423);

insert into Followers(UId,UName,Followres)
values(4,'saad_mansuri',140);

insert into Followers(UId,UName,Followres)
values(6,'zayan_mn_121',80);


select * from Followers
  