# Library-Management-System - SQL-Project

## Objective
The objective of this project is to design and implement a relational database for a Library Management System, ensuring efficient storage, retrieval, and management of library-related data.

## Aim
The aim of this project is to create a structured database system that maintains information about books, customers, employees, branches, and book transactions (issue and return status). The system provides efficient data handling and useful queries for managing library operations.

## Overview
This project is a SQL-based Library Management System that includes database creation, table setup, data insertion, and useful queries for analyzing library operations.

## Features
- **Database Creation**: Initializes the `Library` database.
- **Tables & Relationships**:
  - `Branch`: Stores library branch details.
  - `Employee`: Holds employee information with foreign key reference to `Branch`.
  - `Customer`: Maintains customer details.
  - `Books`: Contains book information, including category and rental price.
  - `IssueStatus`: Tracks book issues with references to `Customer` and `Books`.
  - `ReturnStatus`: Records returned books with references to `Customer` and `Books`.
- **Data Insertion**: Pre-populated sample data for each table.
- **Queries for Insights**:
  - Retrieve available books.
  - List employees by salary.
  - Find books issued by customers.
  - Get book counts per category.
  - Identify customers with multiple book issues.
  - Find branches with more than 3 employees.

## SQL Queries Included
- Retrieve book titles, categories, and rental prices of available books.
- List employee names and salaries in descending order.
- Find books issued by each customer.
- Display total book count per category.
- Identify employees earning above ₹50,000.
- Find customers registered before a certain date who haven't issued books.
- Count employees per branch.
- Retrieve customers who issued books in June 2023.
- Find books categorized under "History".
- List branches with more than 3 employees.
- Find total issued books.
- Retrieve books that were never issued.
- Identify customers who issued more than one book.
- Find the customer who issued the most books.
- Find customers who returned all issued books.


