CREATE DATABASE IF NOT EXISTS alx_book_store;

USE alx_book_store;

CREATE TABLE IF NOT EXISTS Books (
    book_id (Primary Key),
    title VARCHAR(130),
    author_id (
        Foreign Key referencing Authors
        table
    ),
    price DOUBLE,
    publication_date DATE
);

CREATE TABLE IF NOT EXISTS Authors (
    author_id (Primary Key),
    author_name VARCHAR(215)
);

CREATE TABLE IF NOT EXISTS Customers (
    customer_id (Primary Key),
    customer_name VARCHAR(215),
    email VARCHAR(215),
    address TEXT
);
CREATE TABLE IF NOT EXISTS Orders (
    order_id (Primary Key),
    customer_id (Foreign Key referencing Customers table),
    order_date DATE
);
CREATE TABLE IF NOT EXISTS Order_Details (
    orderdetailid (Primary Key),
    order_id (Foreign Key referencing Orders table),
    book_id (Foreign Key referencing Books table),
    quantity DOUBLE
);