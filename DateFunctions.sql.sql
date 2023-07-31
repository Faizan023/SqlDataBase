create database joins;
use joins;

create table Departments(
Id int identity(1,1) primary key not null,
Name varchar(30) not null,

);

create table Employees(
Id int identity(1,1) primary key not null,
DepartmentId int not null,
Name varchar(20) not null,
PhoneNumber int not null,
Email varchar(30) not null,
Address varchar(70) not null,
Salary int not null,
DateOfBirth date not null,

foreign key (DepartmentId) references Departments (Id)
);

insert into Departments (Name)
values('IT')

insert into Departments (Name)
values('Network')

insert into Departments (Name)
values('Marketing')

insert into Departments (Name)
values('Banking')

select * from Departments

delete Departments where Id>0

truncate table Departments

insert into Employees (DepartmentId,Name,PhoneNumber,Email,Address,Salary,DateOfBirth)
values(5,'Zain Mansuri',0110101251,'mansurizayan@gmail.com','ajit mill',20000,'2007-07-17');

insert into Employees (DepartmentId,Name,PhoneNumber,Email,Address,Salary,DateOfBirth)
values(5,'Faizan Mansuri',0110101251,'mansurifaizan@gmail.com','ajit mill',20000,'2007-07-17');

insert into Employees (DepartmentId,Name,PhoneNumber,Email,Address,Salary,DateOfBirth)
values(5,'Afzal Mansuri',0110101251,'mansuriafzal@gmail.com','ajit mill',50000,'2007-07-17');

insert into Employees (DepartmentId,Name,PhoneNumber,Email,Address,Salary,DateOfBirth)
values(5,'Saad Mansuri',0110101251,'mansurisaad@gmail.com','ajit mill',70000,'2007-07-17');

insert into Employees (DepartmentId,Name,PhoneNumber,Email,Address,Salary,DateOfBirth)
values(5,'Idrish Mansuri',0110101251,'mansuriidrish@gmail.com','ajit mill',40000,'2007-07-17');

insert into Employees (DepartmentId,Name,PhoneNumber,Email,Address,Salary,DateOfBirth)
values(6,'Atif Mansuri',0110101251,'mansuriatif@gmail.com','ajit mill',40000,'2007-07-17')

insert into Employees (DepartmentId,Name,PhoneNumber,Email,Address,Salary,DateOfBirth)
values(6,'Adnan mansuri',0110101251,'mansuriadnan@gmail.com','ajit mill',60000,'2007-07-17')

insert into Employees (DepartmentId,Name,PhoneNumber,Email,Address,Salary,DateOfBirth)
values(7,'Noman Mansuri',0110101251,'mansurinoman@gmail.com','ajit mill',30000,'2007-07-17')

insert into Employees (DepartmentId,Name,PhoneNumber,Email,Address,Salary,DateOfBirth)
values(7,'Zain Mansuri',0110101251,'mansurizain@gmail.com','ajit mill',20000,'2007-07-17')

insert into Employees (DepartmentId,Name,PhoneNumber,Email,Address,Salary,DateOfBirth)
values(7,'Faisal Mansuri',0110101251,'mansurifaisal@gmail.com','ajit mill',30000,'2007-07-17')

insert into Employees (DepartmentId,Name,PhoneNumber,Email,Address,Salary,DateOfBirth)
values(8,'Ayan Mansuri',0110101251,'mansuriayan@gmail.com','ajit mill',30000,'2007-07-17')

insert into Employees (DepartmentId,Name,PhoneNumber,Email,Address,Salary,DateOfBirth)
values(8,'Sejan Mansuri',0110101251,'mansurisejan@gmail.com','ajit mill',30000,'2007-07-17')


select * from Employees

select 
em.Id,
em.Name,
dm.Name
from Employees em inner join   Departments dm on  dm.Id = em.DepartmentId

select count(Departments.Name) as employes,Departments.Name from Employees inner join Departments 
on Employees.DepartmentId = Departments.Id 
group by Departments.Name
order by employes desc


select CURRENT_TIMESTAMP	

select GETUTCDATE()
select GETDATE()
select SYSDATETIME()
select SYSUTCDATETIME()

select SYSDATETIMEOFFSET()


select * from Employees where DateOfBirth = cast(GETDATE() as date)

SELECT DATEDIFF(year,'2019/2/3', '2023/3/5') AS TotalDays
--update Employees
--set
--DateOfBirth = '2023-06-09'
--where id > 5