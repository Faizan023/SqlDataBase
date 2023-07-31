create database instagramClone;
use instagramClone;

create table Users(
Id int identity(1,1) primary key not null,
UserName varchar(20) not null,
FullName varchar(30) not null,
EmailId varchar(50) not null,
PhoneNumber int not null

);

create table UsersFollowingAndFollowersMapping(
Id int identity(1,1) not null,
FollowedBy int not null,
FollowingTo int not null,

foreign key (FollowedBy) references Users (Id),
foreign key (FollowingTo) references Users (Id)
);

create table Posts(
Id int identity(1,1) primary key not null,
UserId int not null,
PostDate datetime not null,
Url varchar(70) not null,

foreign key (UserId) references Users (Id)
);

create table PostLikes(
Id int identity(1,1) not null,
PostId int not null,
UserId int not null,
LikedBy int not null,
Date datetime not null,

foreign key (UserId) references Users (Id),
foreign key (PostId) references Posts (Id),
foreign key (LikedBy) references Users (Id),
);

create table UsersComments(
Id int identity(1,1) not null,
UserId int not null,
PostId int not null,
CommentBy int not null,
comment varchar(99) not null,
foreign key (UserId) references Users (Id),
foreign key (PostId) references Posts (Id),
foreign key (CommentBy) references  Users (Id)

);

			--INSERT DATA IN USERS TABLE--
insert into Users(UserName,FullName,EmailId,PhoneNumber)
values('faizan_mn','Faizan Mansuri','mansurifaizan@gmail.com',0110101210);

insert into Users(UserName,FullName,EmailId,PhoneNumber)
values('afzal_021','Afzal Mansuri','mansuriafzal@gmail.com',1010101212);

insert into Users(UserName,FullName,EmailId,PhoneNumber)
values('mansuri_atif','Atif Mansuri','mansuriatif315@gmail.com',1010101257);

insert into Users(UserName,FullName,EmailId,PhoneNumber)
values('_saaaddd','Saad Mansuri','saadmansuri@gmail.com',1122101210);

insert into Users(UserName,FullName,EmailId,PhoneNumber)
values('zayan_67','Zayan Mansuri','mansurizayan@gmail.com',1110101210);

insert into Users(UserName,FullName,EmailId,PhoneNumber)
values('idrish_vhora','Idrish Mansuri','mansuriidrish@gmail.com',108395044);

insert into Users(UserName,FullName,EmailId,PhoneNumber)
values('hasnain','Hasnain Mansuri','mansurihasnain@gmail.com',1010101257);

insert into Users(UserName,FullName,EmailId,PhoneNumber)
values('harun_mn_67','Harun Mansuri','mansuriharun@gmail.com',00910101210);

insert into Users(UserName,FullName,EmailId,PhoneNumber)
values('heena_54','heena Mansuri','mansurizayan@gmail.com',1010101210);

insert into Users(UserName,FullName,EmailId,PhoneNumber)
values('boat_34','boat boat','mansuriboat@gmail.com',221010120);
			--INSERT DATA IN USERSFOLLOWINGANDFOLLOWERSMAPPING TABLE--
insert into UsersFollowingAndFollowersMapping(FollowedBy,FollowingTo)
values(1,2);

insert into UsersFollowingAndFollowersMapping(FollowedBy,FollowingTo)
values(2,4);

insert into UsersFollowingAndFollowersMapping(FollowedBy,FollowingTo)
values(3,1);

insert into UsersFollowingAndFollowersMapping(FollowedBy,FollowingTo)
values(4,5);

insert into UsersFollowingAndFollowersMapping(FollowedBy,FollowingTo)
values(5,3);

insert into UsersFollowingAndFollowersMapping(FollowedBy,FollowingTo)
values(6,7);

insert into UsersFollowingAndFollowersMapping(FollowedBy,FollowingTo)
values(7,7);

insert into UsersFollowingAndFollowersMapping(FollowedBy,FollowingTo)
values(9,10);

insert into UsersFollowingAndFollowersMapping(FollowedBy,FollowingTo)
values(10,6);

			--INSERT DATA IN POSTS TABLE-- 
insert into Posts(UserId,PostDate,Url)
values(1,'2023-04-20 12:20:45','faizan.jpg/post/instagram');

insert into Posts(UserId,PostDate,Url)
values(2,'2021-01-17 02:39:00','faizan.jpg/post/instagram');

insert into Posts(UserId,PostDate,Url)
values(3,'2020-11-27 08:24:38','atif.jpg/post/instagram');

insert into Posts(UserId,PostDate,Url)
values(4,'2018-07-20 04:33:52','saad.jpg/post/instagram');

insert into Posts(UserId,PostDate,Url)
values(5,'2016-06-06 06:06:06','zayan.jpg/post/instagram');

insert into Posts(UserId,PostDate,Url)
values(6,'2017-05-14 08:42:21','idrish.jpg/post/instagram');

insert into Posts(UserId,PostDate,Url)
values(7,'2015-12-25 12:20:45','hasnain.jpg/post/instagram');

insert into Posts(UserId,PostDate,Url)
values(9,'2022-02-28 09:14:25','harun.jpg/post/instagram');

insert into Posts(UserId,PostDate,Url)
values(10,'2023-01-01 12:00:00','heena.jpg/post/instagram');

insert into Posts(UserId,PostDate,Url)
values(12,'2023-06-09 04:25:59','boat.jpg/post/instagram');

			--INSERT DATA IN POSTLIKES TABLE-- 
insert into PostLikes(PostId,LikedBy,Date)
values(1,1,'2023-04-20 02:40:45')

insert into PostLikes(PostId,LikedBy,Date)
values(2,3,'2023-04-21 12:20:55')

insert into PostLikes(PostId,LikedBy,Date)
values(3,5,'2020-11-28 03:22:32')

insert into PostLikes(PostId,LikedBy,Date)
values(5,2,'2016-06-06 08:18:28')

insert into PostLikes(PostId,LikedBy,Date)
values(4,4,'2018-07-20 06:03:02')

insert into PostLikes(PostId,LikedBy,Date)
values(6,7,'2015-12-25 02:10:52');

insert into PostLikes(PostId,LikedBy,Date)
values(7,9,'2022-02-28 09:18:56');

insert into PostLikes(PostId,LikedBy,Date)
values(8,9,'2022-02-28 10:02:52');

insert into PostLikes(PostId,LikedBy,Date)
values(9,10,'2023-01-01 12:20:20');

insert into PostLikes(PostId,LikedBy,Date)
values(11,12,'2023-06-09 05:02:59');


			--INSERT DATA IN POSTCOMMENT TABLE--

insert into UsersComments(PostId,CommentBy,comment)
values(1,2,'Nice Pic');

insert into UsersComments(PostId,CommentBy,comment)
values(4,3,'On Fire');

insert into UsersComments(PostId,CommentBy,comment)
values(3,5,'Video Quality is NOt Good');

insert into UsersComments(PostId,CommentBy,comment)
values(2,1,'Blur Quality');

insert into UsersComments(PostId,CommentBy,comment)
values(5,4,'Very Good');

insert into UsersComments(PostId,CommentBy,comment)
values(6,7,'Happy March');

insert into UsersComments(PostId,CommentBy,comment)
values(7,9,'Chrismas');

insert into UsersComments(PostId,CommentBy,comment)
values(8,10,'Hey');

insert into UsersComments(PostId,CommentBy,comment)
values(9,10,'Good Evening');

select * from UsersComments

alter table UsersComments
drop constraint FK__UsersComm__UserI__4222D4EF;

alter table UsersComments
drop column UserId
 
alter table PostLikes
add foreign key (LikedBy) references  Users (Id)

alter table PostLikes
drop constraint FK__PostLikes__Liked__403A8C7D;

alter table PostLikes
drop column UserId

      