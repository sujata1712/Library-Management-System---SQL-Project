# Create a Database
create database Library;

#use this database
use Library;

# -----------------------------------------------------------------CREATE TABLES AND INPUT DATA ON ITS---------------------------------------------------------------------
# Create table 'Branch'
create table Branch(
	branch_no varchar(10) primary key,
	manager_id varchar(10),
	branch_add varchar(50),
	contact_no varchar(15)
);

# Insert data into Branch table
insert into Branch values 
('B001', 'M101', '123 Main St', '+919099988676'),
('B002', 'M102', '456 Elm St', '+919099988677'),
('B003', 'M103', '789 Oak St', '+919099988678'),
('B004', 'M104', '567 Pine St', '+919099988679'),
('B005', 'M105', '890 Maple St', '+919099988680'),
('B006', 'M106', '560 Main St', '+919099988674');

# Show Branch table
select*from Branch;

# Create table 'Employee'
create table Employee (
    Emp_id VARCHAR(10) PRIMARY KEY,
    Emp_name VARCHAR(50),
    Position VARCHAR(30),
    Salary DECIMAL(10,2),
    branch_no VARCHAR(10),
    foreign key (branch_no) references Branch(branch_no) on delete set null
);

# Insert data into Employee table
insert into Employee values
('E101', 'John Doe', 'Manager', 60000.00, 'B001'),
('E102', 'Jane Smith', 'Clerk', 45000.00, 'B001'),
('E103', 'Mike Johnson', 'Librarian', 55000.00, 'B001'),
('E104', 'Emily Davis', 'Assistant', 40000.00, 'B001'),
('E105', 'Sarah Brown', 'Assistant', 42000.00, 'B002'),
('E106', 'Michelle Ramirez', 'Assistant', 43000.00, 'B003'),
('E107', 'Michael Thompson', 'Manager', 62000.00, 'B002'),
('E108', 'Jessica Taylor', 'Clerk', 46000.00, 'B002'),
('E109', 'Daniel Anderson', 'Librarian', 57000.00, 'B002'),
('E110', 'Laura Martinez', 'Assistant', 41000.00, 'B004'),
('E111', 'Christopher Lee', 'Manager', 65000.00, 'B003');

# Show Employee table
select*from Employee;

# Create table 'Customer'
create table Customer (
    Cust_Id VARCHAR(10) PRIMARY KEY,
    Cust_name VARCHAR(50),
    Cust_address VARCHAR(100),
    Reg_date DATE
);

# Insert data into Customer table
insert into Customer values 
('C101', 'Alice Johnson', '123 Main St', '2021-05-15'),
('C102', 'Bob Smith', '456 Elm St', '2021-06-20'),
('C103', 'Carol Davis', '789 Oak St', '2021-07-10'),
('C104', 'Dave Wilson', '567 Pine St', '2021-08-05'),
('C105', 'Eve Brown', '890 Maple St', '2021-09-25'),
('C106', 'Frank Thomas', '234 Cedar St', '2021-10-15'),
('C107', 'Grace Taylor', '345 Walnut St', '2021-11-20'),
('C108', 'Henry Anderson', '456 Birch St', '2021-12-10'),
('C109', 'Ivy Martinez', '567 Oak St', '2022-01-05'),
('C110', 'Jack Wilson', '678 Pine St', '2022-02-25');

# Show the Customer table
select*from Customer;

# Create table 'Books'
create table Books (
    ISBN VARCHAR(25) PRIMARY KEY,
    Book_title VARCHAR(100),
    Category VARCHAR(30),
    Rental_Price DECIMAL(10,2),
    Status ENUM('Yes', 'No'),
    Author VARCHAR(50),
    Publisher VARCHAR(50)
);
# Instert data into Books table
INSERT INTO Books VALUES
('978-0-553-29698-2', 'The Catcher in the Rye', 'Classic', 7.00, 'yes', 'J.D. Salinger', 'Little, Brown and Company'),
('978-0-330-25864-8', 'Animal Farm', 'Classic', 5.50, 'yes', 'George Orwell', 'Penguin Books'),
('978-0-14-118776-1', 'One Hundred Years of Solitude', 'Literary Fiction', 6.50, 'yes', 'Gabriel Garcia Marquez', 'Penguin Books'),
('978-0-525-47535-5', 'The Great Gatsby', 'Classic', 8.00, 'yes', 'F. Scott Fitzgerald', 'Scribner'),
('978-0-141-44171-6', 'Jane Eyre', 'Classic', 4.00, 'yes', 'Charlotte Bronte', 'Penguin Classics'),
('978-0-307-37840-1', 'The Alchemist', 'Fiction', 2.50, 'yes', 'Paulo Coelho', 'HarperOne'),
('978-0-679-76489-8', "Harry Potter and the Sorcerer's Stone", 'Fantasy', 7.00, 'yes', 'J.K. Rowling', 'Scholastic'),
('978-0-7432-4722-4', 'The Da Vinci Code', 'Mystery', 8.00, 'yes', 'Dan Brown', 'Doubleday'),
('978-0-09-957807-9', 'A Game of Thrones', 'Fantasy', 7.50, 'yes', 'George R.R. Martin', 'Bantam'),
('978-0-393-05081-8', "A People's History of the United States", 'History', 9.00, 'yes', 'Howard Zinn', 'Harper Perennial'),
('978-0-19-280551-1', 'The Guns of August', 'History', 7.00, 'yes', 'Barbara W. Tuchman', 'Oxford University Press'),
('978-0-307-58837-1', 'Sapiens: A Brief History of Humankind', 'History', 8.00, 'yes', 'Yuval Noah Harari', 'Harper Perennial'),
('978-0-375-41398-8', 'The Diary of a Young Girl', 'History', 6.50, 'yes', 'Anne Frank', 'Bantam'),
('978-0-14-044930-3', 'The Histories', 'History', 5.50, 'yes', 'Herodotus', 'Penguin Classics'),
('978-0-393-91257-8', 'Guns, Germs, and Steel: The Fates of Human Societies', 'History', 7.00, 'yes', 'Jared Diamond', 'W. W. Norton & Company'),
('978-0-7432-7357-1', '1491: New Revelations of the Americas Before Columbus', 'History', 6.50, 'yes', 'Charles C. Mann', 'Vintage Books');

# Show the Books table
select*from Books;

# Create table 'IssueStatus'
create table IssueStatus (
    Issue_Id VARCHAR(10) PRIMARY KEY,
    Issued_cust VARCHAR(10),
    ISBN VARCHAR(25),
    Issue_date DATE,
    FOREIGN KEY (Issued_cust) REFERENCES Customer(Cust_Id) ON DELETE CASCADE,
    FOREIGN KEY (ISBN) REFERENCES Books(ISBN) ON DELETE CASCADE
);

# Insert data into 'IssueStatus' table
insert into IssueStatus (Issue_Id, Issued_cust, ISBN, Issue_date) values
('IS101', 'C101', '978-0-553-29698-2', '2023-05-01'),
('IS102', 'C102', '978-0-7432-4722-4', '2023-05-02'),
('IS103', 'C103', '978-0-7432-7357-1', '2023-05-03'),
('IS104', 'C104', '978-0-307-58837-1', '2023-05-04'),
('IS105', 'C105', '978-0-375-41398-8', '2023-05-05');

# Show the IssueStatus table
select*from IssueStatus;

# Create table 'ReturnStatus'
CREATE TABLE ReturnStatus (
    Return_Id VARCHAR(10) PRIMARY KEY,
    Return_cust VARCHAR(10),
    ISBN VARCHAR(25),
    Return_date DATE,
    FOREIGN KEY (Return_cust) REFERENCES Customer(Cust_Id) ON DELETE CASCADE,
    FOREIGN KEY (ISBN) REFERENCES Books(ISBN) ON DELETE CASCADE
);

# Insert data into 'ReturnStatus' table
insert into ReturnStatus (Return_Id, Return_cust, ISBN, Return_date) values
('RS101', 'C101', '978-0-553-29698-2', '2023-06-06'),
('RS102', 'C102', '978-0-7432-4722-4', '2023-06-07'),
('RS103', 'C105', '978-0-375-41398-8', '2023-06-08'),
('RS104', 'C108', '978-0-14-044930-3', '2023-06-09'),
('RS105', 'C110', '978-0-09-957807-9', '2023-06-10');

# Show the 'ReturnStatus' table
select*from ReturnStatus;


#  -------------------------------------------------------------------QUEIRIS TO SOLVE------------------------------------------------------------------------------

-- 1.Retrieve the book title, category, and rental price of all available books.

select Book_title,Category,Rental_Price from Books where Status='Yes';

-- 2.List the employee names and their respective salaries in descending order of salary.

select Emp_name,Salary from Employee order by Salary desc;

-- 3.Retrieve the book titles and the corresponding customers who have issued those books.

select B.Book_title as booktitle,C.Cust_name as name
from IssueStatus I
inner join Books B
on I.ISBN = B.ISBN
inner join Customer C
on I.Issued_cust=C.Cust_ID;

-- 4.Display the total count of books in each category.

select Category,count(*)
from Books
group by Category; 

-- 5.Retrieve the employee names and their positions for the employees whose salaries are above Rs.50,000.

select Emp_name, Position from Employee where Salary>5000;

-- 6.List the customer names who registered before 2022-01-01 and have not issued any books yet.

select C.Cust_name from Customer C
left join IssueStatus I 
on C.Cust_ID = I.Issued_cust
where C.Reg_date<'2022-01-01' and I.Issue_ID is null;

-- 7.Display the branch numbers and the total count of employees in each branch.

select branch_no,count(Emp_id) as total_empolyees
from Employee
group by branch_no;

-- 8.Display the names of customers who have issued books in the month of June 2023.

select C.Cust_name from Customer C
left join IssueStatus I 
on C.Cust_ID = I.Issued_cust
where I.Issue_date between '2023-06-01' and '2023-06-30';

-- 9.Retrieve book titles from the book table containing the category "history".

select Book_title from Books where Category='History';

-- 10.Retrieve the branch numbers along with the count of employees for branches having more than 3 employees.

select branch_no, count(Emp_ID) as total_employees from Employee group by Branch_no having count(Emp_ID)>3;

-- 11.Find the total number of books issued so far.

select count(*) as total_issued_books from IssueStatus;

-- 12.Retrieve the book titles that have never been issued.

select Book_title from Books
where ISBN not in(select ISBN from IssueStatus);

-- 13.List the names of customers who have issued more than one book. 

select Customer.Cust_name, count(IssueStatus.Issue_ID) as total_issued_books
from Customer
inner join IssueStatus on Customer.Cust_Id = IssueStatus.Issued_cust
group by Customer.Cust_Id
having count(IssueStatus.Issue_ID)>1;

-- 14.Retrieve the name of the customer who issued the most books.

select C.Cust_name, count(IssueStatus.Issue_ID) as total_issued_books
from Customer C
inner join IssueStatus on C.Cust_Id = IssueStatus.Issued_cust
group by C.Cust_Id
order by total_issued_books desc
limit 1;

-- 15.Find customers who have returned all the books they issued.

select distinct C.Cust_name
from Customer C
left join IssueStatus I on C.Cust_ID=I.Issued_cust
left join ReturnStatus R on I.ISBN = R.ISBN
group by C.Cust_ID
having count(distinct I.ISBN) =count(distinct R.ISBN);
            