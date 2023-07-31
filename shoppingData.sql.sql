--create database shoppingdata;
--use  shoppingdata;

create table Customer_tab (
Id int identity(1,1) not null primary key,
Name varchar not null,
E_mail varchar not null,
Phone int not null,
Address varchar null,
Acccont int null
);



create table Product1(
P_id int identity(1,1) not null primary key,
Prize int not null ,
colour varchar null,
Discount int not null,
Paymentmode varchar not null,
Quntity int not null,
Delivery_charge int not null,
Description varchar null,
Warrent varchar null,
gurntee varchar null
);

create table Orders1(
Orderid int identity(1,1) not null,
Productid int not null,
Customerid int not null,
Orderdate date not null,
Deliverydate date not null,
Deliveryaddress varchar not null

foreign key (Productid) references Customer_tab(Id),
foreign key (Customerid) references Product1 (P_id)
);

select * from Customer_tab 

--delete from Customer_tab
--where id=13;

alter table Customer_tab
 alter column Name varchar(20) not null;

 alter table Customer_tab
 alter column E_mail varchar(20) not null;

 alter table Customer_tab
 alter column Address varchar(20) not null;


insert into Customer_tab (Name,E_mail,Phone,Address,Acccont)
values ('afzal','faizan@gmail.com', 0123456789,'campus',098);

insert into Customer_tab (Name,E_mail,Phone,Address,Acccont)
values ('faizan','faizan@gmail.com', 0123456789,'Ajitmill',0990);

insert into Customer_tab (Name,E_mail,Phone,Address,Acccont)
values ('atif','atifn@gmail.com', 0123456789,'bapunagar',0989);

update Customer_tab
set E_mail='afzal@gmail.com'
where id=14;

alter table Product1 
alter column colour varchar(10) not null;

alter table Product1
alter column Paymentmode varchar(25) not null;

alter table Product1
alter column Description varchar(25) not null;

alter table Product1
alter column Warrent varchar(25) not null;

alter table Product1
alter column gurntee varchar(25) not null;

insert into Product1 (Prize,colour,Discount,Paymentmode,Quntity,Delivery_charge,Description,Warrent,gurntee)
values(200,'black',20,'cash',1,20,'excellent','no','no');

insert into Product1 (Prize,colour,Discount,Paymentmode,Quntity,Delivery_charge,Description,Warrent,gurntee)
values(500,'Blue',10,'Online',5,50,'Good','Yes','No');


insert into Product1 (Prize,colour,Discount,Paymentmode,Quntity,Delivery_charge,Description,Warrent,gurntee)
values(1000,'Red',35,'Online',5,70,'Average','Yes','No');

select * from Product1

alter table Orders1 
alter column Deliveryaddress varchar(50) not null;

insert into Orders1 (Productid,Customerid,Orderdate,Deliverydate,Deliveryaddress)
values (14,7,'2023-05-02','2023-05-09','Home');



ALTER TABLE [dbo].[Orders1] DROP CONSTRAINT [FK__Orders1__Deliver__44FF419A]
GO

ALTER TABLE [dbo].[Orders1] DROP CONSTRAINT [FK__Orders1__Custome__45F365D3]
GO

alter table Orders1
add foreign key  (Productid) references Product1 (P_id);

alter table Orders1
add foreign key  (Customerid) references Customer_tab(Id);