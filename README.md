# sql-internship-repository
Task 1
 Database Schema : Library Management System 

 Domain : Library Management System

Tools Used : MySQL Workbench 

Entities:1)author : Represents authors who write books.
         2)book : Represents books available in the library.
         3)member : Represents registered members who borrow books.
         4)loan : Represents the transaction of a member borrowing a book.

Relationships :
  from entity | to entity | type        | description                                  |
|-------------|-----------|-------------|----------------------------------------------|
| Author      | Book      | 1:N         | One author can write many books              |
| Book        | Loan      | 1:N         | One book can be loaned many times            |
| Member      | Loan      | 1:N         | One member can borrow multiple books         |

primary keys:
  author: author_id
  book: book_id
  member: member_id

  loan: loan_id

  foreign keys:
  book.author_id (refers)→ author.author_id
  loan.book_id (refers)→ book.book_id
  loan.member_id(refers) → member.member_id                                                                                                                            

  Task2:
  1)inserting values to the tables author,book,member,loan
  2) to display the tables using select * folllowed by table_name;
  3)updating the table values using where condition , if not used where condition it will update the values of entire table.
  example 1 :
  update member
   set phone = '1122334455'
   WHERE name = 'Kavya';
   here it will only update Kavya's phone number.
   example 2 :
  update member
   set phone = '1122334455'
   here i have not used where condition , therefore it update's everybody's phone number.
   4)delete command , will delete the existing rows.
