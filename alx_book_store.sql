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
    order_id INT (PRIMARY KEY),
    customer_id INT FOREIGN KEY (customer_id) REFERENCES Customers(customer_id),
    order_date DATE
);
CREATE TABLE Order_Details (
    orderdetailid INT PRIMARY KEY,
    order_id INT,
    book_id INT,
    quantity DOUBLE,
    FOREIGN KEY (order_id) REFERENCES Orders(order_id),
    FOREIGN KEY (book_id) REFERENCES Books(book_id)
);