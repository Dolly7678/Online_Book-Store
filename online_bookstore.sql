--create tables
drop table if exists Books;
create table Books(
Book_ID serial primary key,
Title varchar(100),
Author varchar(100),
Genre varchar(50),
Published_Year int,
Price numeric(10,2),
Stock int
);
drop table if exists Customers;
create table Customers(
Customer_ID serial primary key,
Name varchar(100),
Email varchar(100),
Phone varchar(15),
City varchar(50),
Country varchar(150)
);
drop table if exists Orders;
create table orders(
Order_ID serial primary key,
Customer_ID int References customers(Customer_ID),
Book_ID int References Books(Book_ID),
Order_Date date,
Quantity int,
Total_amount numeric(10,2)
);
select *from Books;
select *from Customers;
select *from Orders;
--1) retrive all books in the "Fiction" genre:
select * from Books
where genre = 'Fiction';

--2) find book published after the year 1950
select *from Books
where published_year > 1950;

--3) list all customers from canada
select *from customers
where country = 'Canada';

--4) show order placed in november 2023
select *from Orders
where  order_date between '2023-11-01' and '2023-11-30';

--5) retrieve the total stock of books avaliable
select sum(stock) as total_stock
from Books;

--6) find the details of the most expensive book
select *from Books order by price desc limit 1;

--7) show all customer who ordered more than 1 quantity of books
select *from Orders
where quantity >1;

--8) retrieve all orders where the total amount exceeds $20:
select *from Orders
where total_amount > 20;

--9) list all genres avaliable in the books table:
select distinct genre
from Books;

--10) find the books with the lowest stocks:
select *from books
order by stock asc
limit 1;

--11) calculate the total revenue generated from all orders:
select sum(total_amount) as Revenue
from Orders;

-- advance question
--1) Retrieve the total number of books sold for each genre:
select b.genre , sum(o.quantity) as total_books_sold 
from Orders o 
join Books b on o.book_id = b.book_id
group by b.genre;

--2)find the average price of books in the 'fantasy' genre:
select avg(price) as avg_price
from books
where genre = 'Fantasy';

--3list customer who have placed at least 2 orders
select o.customer_id , c.name ,  count(o.Order_id) as order_count
from Orders o
join Customers c on o.customer_id = c.customer_id
group by o.customer_id , c.name
having count(Order_id) >= 2;

--4) find the most frequently orderd book:
select o.Book_id , b.title, count(o.Order_id) as order_count
from Orders o
join Books b on o.Book_id = b.Book_id
group by o.Book_id , b.title
order by order_count desc limit 1;

--5)  show the top 3 most expensive book of 'fantasy' genre:
select*from Books
where genre ='Fantasy'
order by price desc limit 3;

--6) Retrive the total quantity of book sold by each author:
select b.author , sum(o.quantity) as total_book_sold
from Orders o 
join Books b on o.Book_id = b.Book_id
group by b.author;

--7) list the cities where customers who spent over $30 are located
select distinct c.city , total_amount
from Orders o 
join Customers c on o.customer_id = c.customer_id
where o.total_amount > 300;

--8) find the customer who spent the most on orders:
select c.customer_id , c.name , sum(o.total_amount) as total_spent
from  orders o 
join Customers c on o.customer_id = c.customer_id
group by c.customer_id , c.name
order by total_spent desc limit 2;

--9) calculate the stock remaning after fulfulling all orders:
select b.Book_id , b.title , b.stock  , coalesce(sum(o.quantity),0) as order_quantity, b.stock -  coalesce(sum(o.quantity),0) 
as reamining_quantity
from Books b 
left join Orders o on o.Book_id = b.Book_id
group by b.Book_id order by b.Book_id;


