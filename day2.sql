insert into author
(name,bio)
values
("Shahi","The bibliophile"),
("Manas","The literary escape artist"),
("Shahi","The genre-hopper"),
("Nikhil",NULL),
("tharun",null);


select * from author;

insert into book
(title,author_id,publisher,year,isbn,copies)
values
('Pride and Prejudice',3,'T. Egerton',1990,'9780141439518', 3),
('1984', 2, 'Secker & Warburg', 1949, '9780451524935', 5),
('Rest in Peace',1,'Bloomsbury', 1997, '9780747532743', 10),
('Gemini AI',5,'Elon Mush',2024,34857845789478,1);
    
insert into book
(title,author_id,publisher,year,isbn)
values
('Pride and Prejudice',3,'T. Egerton',1990,'9780141439518' ),
('1984', 2, 'Secker & Warburg', 1949, '9780451524935' ),
('Rest in Peace',1,'Bloomsbury', 1997, '9780747532743'),
('Gemini AI',5,'Elon Mush',2024,34857845789478);

select * from book;

insert into member
(name,email,phone,join_date )
values
('Kavya','kavya@gmail.com',1234567892,'2025-09-20'),
 ('Chandan', 'chandan@gmail.com', NULL, '2025-09-22'), 
('harish', 'harish.com', '0987654321', '2025-09-21');

select * from member;

insert into loan
(book_id,member_id,loan_date,due_date,return_date)
values
  (1, 1, '2025-09-21', '2025-09-28', NULL), 
  (2, 2, '2025-09-22', '2025-09-29', NULL),
  (3, 3, '2025-09-23', '2025-09-30', NULL);
  
  
  update loan set return_date='2025-09-23' where return_date is NULL and book_id =1;
  select * from loan;
  update member set email='kavyaba@gmail.com' where email='kavya@gmail.com';
  
  delete from member where phone is NULL;
  delete from loan where member_id = 2;
   delete from member where member_id = 2;
    delete from member where phone is NULL;
    select * from loan;
  
  
  

