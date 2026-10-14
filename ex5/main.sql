select * from books where books.Price > 100 AND books.Pages > 300;

select * from books where books.Price < 100 or books.Pages < 200;

select * from books where books.Author = 'Robert C. Martin' AND books.Price > 150;
