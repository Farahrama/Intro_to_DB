CREATE DATABASE IF NOT EXISTS alx_book_store;

USE alx_book_store;

CREATE TABLE IF NOT EXISTS Books (
    book_id (PRIMARY KEY),
    title VARCHAR(130),
    author_id (Foreign Key referencing Authors table),
    price DOUBLE,
    publication_date DATE
);

CREATE TABLE IF NOT EXISTS Authors (
    author_id (Primary Key),
    author_name VARCHAR(215)
);

CREATE TABLE IF NOT EXISTS Customers (
    customer_id (PRIMARY KEY),
    customer_name VARCHAR(215),
    email VARCHAR(215),
    address TEXT
);
CREATE TABLE IF NOT EXISTS Orders (
    order_id (INT PRIMARY KEY),
    customer_id (INT Foreign Key referencing Customers table),
    order_date DATE
);
CREATE TABLE IF NOT EXISTS Order_Details (
    orderdetailid (PRIMARY KEY),
    order_id (INT FOREIGN KEY referencing Orders table),
    book_id (FOREIGN KEY referencing Books table),
    quantity DOUBLE
);