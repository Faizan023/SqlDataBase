--create database Onlineshopping2;
--use Onlineshopping2;

/*create table Customers (
Id Int identity(1,1) not null primary key,
Name varchar(20) not null,
E_Mail varchar(30) not null,
Phone int not null,
Address varchar(50) not null
);

create table Product2(
Productid int not null primary key,
Prize int not null,
Discount int null,
Available bit not null
);

create table Orders2(
Orderid int not null,
Customerid int ,
Productsid int,
OrderAddress varchar(50) not null,
O_Date date not null,
Quntity int not null
foreign key (Customerid) references Customers (id),
foreign key (Productsid) references Product2 (Productid)
);*/

/*insert into Customers (Name,E_Mail,Phone,Address)
values('faizan','faizanmansuri@gmail.com',123456789,'ajitmill');

insert into Customers (Name,E_Mail,Phone,Address) 
values ('afzal','mansuriafzal@gmail.com', 0987654321, 'bapunagar');

insert into Customers (Name,E_Mail,Phone,Address) 
values ('atif','atifmansuri@gmail.com',123.564789,'juhapura');

update Customers 
set Phone = 123456789 where id=4;*/


--delete from Customers where id =1 ;
--select * from Customers;

--alter table Orders2 
--Orderid int not null identity(1,1) ;

--delete  from  Orders2;


--exec sp_rename 'Orders2.Orderid','Order_id','Column';


--select * from Orders2;

/*create table Orders_table(
Orderid int not null,
Customerid int ,
Productsid int,
OrderAddress varchar(50) not null,
O_Date date not null,
Quntity int not null
foreign key (Customerid) references Customers (id),
foreign key (Productsid) references Product2 (Productid)
);*/

--delete from Orders_table;

create table Orders_tables(
Orderid int identity(1,1) not null,
Customerid int ,
Productsid int,
OrderAddress varchar(50) not null,
O_Date date not null,
Quntity int not null
foreign key (Customerid) references Customers (id),
foreign key (Productsid) references Product2 (Productid)
);

insert into Orders_tables (Customerid,Productsid,OrderAddress,O_Date,Quntity)
values (2,3,'ajitmill', '10/05/2023',5);

select * from customers;

select * from Product2

insert into Product2 (Productid,Prize,Discount,Available)
values (1, 2000, 20, 1);

insert into Product2 (Productid,Prize,Discount,Available)
values (2, 2800, 0, 0);

insert into Product2 (Productid,Prize,Discount,Available)
values (3, 200, 0, 1);

insert into Orders_tables (Customerid,Productsid,OrderAddress,O_Date,Quntity)
values (2,3,'ajitmill', '10/05/2023',5);

 