-- creating  databse  for library management system.
create database if not exists library_database_management_system; 

use library_database_management_system;


-- creating table for  author
create table author(
author_id int auto_increment primary key,
name varchar(100) not null,
bio TEXT
);


-- creating table for book
create table book(
book_id int auto_increment primary key,
title varchar(150) not null,
author_id int,
foreign key(author_id) references author(author_id),
publisher varchar(100),
year int,
isbn varchar(20),
copies int default 1
);


-- creating table for member
create table member(
member_id int auto_increment primary key,
name varchar(100) not null,
email varchar(100) unique not null,
phone varchar(15),
join_date date not null
);


-- creating table for loan
create table loan(
load_id int auto_increment primary key,
book_id int,
foreign key(book_id) references book(book_id),
member_id int,
foreign key(member_id) references member(member_id),
loan_date date,
due_date date,
return_date date
);
