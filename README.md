# Online_Book store project
#Project Overview
. This project focuses on analyzing an online bookstore's sales data using PostgreSQL.
. The project contains three datasets: Books, Customers, and Orders. These datasets are used to analyze book sales, customer purchasing behavior, revenue performance, and inventory.
. The main objective is to use SQL queries to extract meaningful business insights and support data-driven decision-making.
 
 #Project Objectives
. Analyze total revenue generated from book sales.
. Identify the best-selling books.
. Analyze sales performance by genre and author.
. Identify high-value customers.
. Understand customer purchasing behavior.
. Analyze monthly and yearly sales trends.
. Evaluate book inventory and stock availability.
. Answer real-world business questions using SQL.

 #Tools
. PostgreSQL - Database management and SQL analysis
. pgAdmin - Writing and executing SQL queries

#Dataset Description
This project uses three CSV datasets.
1. Books Dataset (book.csv)
Contains information about books available in the bookstore.
Column Description
. Book_ID
Unique book identifier
# Title
. Name of the book
. Author
Book author
. Genre
. Book category
. Published_Year
. Year of publication
. Price
. Price of the book
. Stock
. Available inventory

3. Customers Dataset (customer.csv)
Contains customer-related information.
Column Description
. Customer_ID
Unique customer identifier
. Name
Customer name
. Email
Customer email address
. Phone
Customer phone number
. City
Customer city
. Country
Customer country

4. Orders Dataset (order.csv)
Contains order transaction details.
Column Description
. Order_ID
Unique order identifier
. Customer_ID
Customer who placed the order
. Book_ID
Book associated with the order
. Order_Date
Date of the order
. Quantity
Number of books purchased
. Total_Amount
Total order amount

#Database Schema
The project uses three relational tables:
. Books
. Customers
. Orders

#Table Relationships
Customers → Orders using Customer_ID
Books → Orders using Book_ID
The Orders table connects customer information with book details.

# SQL Concepts Used
The project demonstrates the following PostgreSQL concepts:
. Database and table creation
. Primary Keys and Foreign Keys
. Data Import using CSV files
. SELECT statements
. WHERE and DISTINCT
. ORDER BY and LIMIT
. Aggregate Functions: SUM, AVG, COUNT, MIN, MAX
. GROUP BY and HAVING
. INNER JOIN and LEFT JOIN
. CASE WHEN statements
. Subqueries
. Common Table Expressions (CTEs)
. Date Functions
. Revenue and Sales Analysis

# Business Questions Answered
1. Retrieve all books in the "Fiction" genre
2. Find books published after the year 1950
3. List all customer from the canada
4. Show orders placed in november 2023
5. Retrieve the total stock of books available
6. Find the details of the most expensive book
7. Show all customers who ordered more than 1 quantity of a book
8. Retrieve all orders where the total amount exceeds $20
9. List all genres available in the books table
10. find the books with the lowest stock
11. Calculate the total revenue generated from all orders
# Advance Queries
1.  Retrieve the total number of books sold for each genre
2.  Find the average price of books in the "Fantasy" genre
3.  List customers who have placed at least 2 orders
4.  Find the most frequently ordered books
5.  Show the top 3 most expensive books of "fantasy" genre
6.  Retrieve the total quantity of books sold by each author
7.  List the cities where customers Who spent over $30 are located
8.  Find the customers who spent the most on orders
9.  Calculate the stock remaning after fulfilling all orders

#Project Workflow
Step 1: Data Import
Imported the three CSV datasets into PostgreSQL.
Step 2: Database Design
Created relational tables and established relationships using primary and foreign keys.
Step 3: Data Exploration
Used SQL queries to understand the structure, records, and characteristics of the datasets.
Step 4: Data Analysis
Applied SQL filtering, joins, aggregations, grouping, sorting, and subqueries to answer business questions.
Step 5: Business Insights
Analyzed sales performance, customer behavior, revenue trends, and inventory availability.

Created by: Dolly Thakur
Aspiring Data Analyst
Project: Online_Book store project using PostgreSQL
