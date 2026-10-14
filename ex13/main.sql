select * from books where books.Price > 100;

select books.Title, books.Author from books;

select  * from books where books.Author = 'Paulo Coelho';

select  * from books where  books.Price > 50 and  books.Price < 150;

select   * from books where  books.Pages > 300;

select * from books order by books.Price asc;

select * from books order by books.Price desc limit 3;

select * from books order by books.Pages asc limit 5;

select * from books order by books.Title asc;

update books set Price = 250 where id = 3;

update books set Price = 200 where books.Price < 100;

update books set Price = Price + 20  where  Price < 100;

delete from books where ID = 5;

delete from books where books.Author = 'Paulo Coelho';

delete from books where books.Pages < 100;