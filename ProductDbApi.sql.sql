create database ProductApi;
use ProductApi;

create table Customer(
Id int Identity(1,1) not null,
Name varchar(20) not null,
Email varchar(50) not null,
Phone int not null,
Address varchar(70) not null,

constraint Pk_Id primary key (Id)
);

create table Product(
Id int Identity(1,1) not null,
Name varchar(50) not null,
Price int not null,
Discount int null,
Quantity int not null,
Description varchar(max) null

constraint PK_PId primary key (Id)
);

create table Cart(
Id int Identity(1,1) not null,
ProductId int not null,

constraint Pk_CId primary key (Id),
constraint Fk_PId foreign key (ProductId) References Product (Id)
);

create table Orders (
Id int Identity(1,1) not null,
CustomerId int not null,
ProductId int not null,
DeliveryAddress varchar(70) not null,
PaymentMethod varchar(25) not null,

constraint Pk_OId Primary Key (Id),
Constraint Fk_CId Foreign Key (CustomerId) references Customer(Id),
Constraint FK_ProductId Foreign Key (ProductId) references Product (Id)
);

insert into Customer(Name,Email,Phone,Address) 
values('Faizan','mansurifaizan315@gmail.com',1234567890,'Ajit Mill');

insert into Customer(Name,Email,Phone,Address) 
values('Afzal','mansuriafzal315@gmail.com',1234567890,'Bapunagar');

insert into Cart(ProductId) values(1);
insert into Cart(ProductId) values(2);

insert into Product(Name,Price,Discount,Quantity,Description)
values ('Hair dry',200,20,10,'Best');


insert into Product(Name,Price,Discount,Quantity,Description)
values ('Shampoo',200,20,10,'Best');

insert into Orders(CustomerId,ProductId,DeliveryAddress,PaymentMethod)
values(1,1,'Ajit Mill','Cash');


insert into Orders(CustomerId,ProductId,DeliveryAddress,PaymentMethod)
values(2,1,'Bapunagar','Online');
