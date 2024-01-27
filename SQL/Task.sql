-- Creating the customers and orders tables
create database customerdb;
use customerdb;

CREATE TABLE customers(
    id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(100),
    last_name VARCHAR(100),
    email VARCHAR(100)
);

CREATE TABLE orders(
    id INT AUTO_INCREMENT PRIMARY KEY,
    order_date DATE,
    amount DECIMAL(8,2),
    customer_id INT,
    FOREIGN KEY(customer_id) REFERENCES customers(id)
);

/*  -----------------------------------------    */
insert into customers(first_name, last_name, email)
values ("Boy", 	"George",	"george@gmail.com"),
	("George",	"Michael",	"gm@gmail.com"),
    ("David" ,	"Bowie",	"david@gmail.com"),
    ("Blue",	"Steele"	,"blue@gmail.com");

insert into orders(order_date, amount, customer_id)
values( "2016/01/01", 34.56, 1),
("2017/09/12", 56.67, 1),
("2022/04/12", 345.56, 2),
("2022/03/03", 56.67, 2);

-- IMPLICIT INNER JOIN

SELECT * FROM customers, orders 
WHERE customers.id = orders.customer_id;

-- IMPLICIT INNER JOIN

SELECT first_name, last_name, order_date, amount
FROM customers, orders 
    WHERE customers.id = orders.customer_id;

 -- EXPLICIT INNER JOINS

SELECT * FROM customers
JOIN orders
    ON customers.id = orders.customer_id;
    
SELECT first_name, last_name, order_date, amount 
FROM customers
JOIN orders
    ON customers.id = orders.customer_id;
    
SELECT *
FROM orders
JOIN customers
    ON customers.id = orders.customer_id;

-- ARBITRARY JOIN - meaningless, but still possible 

SELECT * FROM customers
JOIN orders ON customers.id = orders.id;

-- Getting Fancier (Inner Joins Still)

SELECT first_name, last_name, order_date, amount 
FROM customers
JOIN orders
    ON customers.id = orders.customer_id
ORDER BY order_date;

SELECT 
    first_name, 
    last_name, 
    SUM(amount) AS total_spent
FROM customers
JOIN orders
    ON customers.id = orders.customer_id
GROUP BY orders.customer_id
ORDER BY total_spent DESC;

-- LEFT JOINS

SELECT * FROM customers
LEFT JOIN orders
    ON customers.id = orders.customer_id;

SELECT first_name, last_name, order_date, amount
FROM customers
LEFT JOIN orders
    ON customers.id = orders.customer_id;

-- OUR FIRST RIGHT JOIN (seems the same as a left join?)

SELECT * FROM customers
RIGHT JOIN orders
ON customers.id = orders.customer_id;

-- ALTERING OUR SCHEMA to allow for a better example (optional)
create database customerdb;
use customerdb;
drop table customers;
drop  table orders;

CREATE TABLE customers(
    id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(100),
    last_name VARCHAR(100),
    email VARCHAR(100)
);

CREATE TABLE orders(
    id INT AUTO_INCREMENT PRIMARY KEY,
    order_date DATE,
    amount DECIMAL(8,2),
    customer_id INT
);

-- INSERTING NEW DATA (no longer bound by foreign key constraint)</strong></p>

INSERT INTO customers (first_name, last_name, email) 
VALUES ('Boy', 'George', 'george@gmail.com'),
       ('George', 'Michael', 'gm@gmail.com'),
       ('David', 'Bowie', 'david@gmail.com'),
       ('Blue', 'Steele', 'blue@gmail.com'),
       ('Bette', 'Davis', 'bette@aol.com');
       
INSERT INTO orders (order_date, amount, customer_id)
VALUES ('2016/02/10', 99.99, 1),
       ('2017/11/11', 35.50, 1),
       ('2014/12/12', 800.67, 2),
       ('2015/01/03', 12.50, 2),
       ('1999/04/11', 450.25, 5);

INSERT INTO orders (order_date, amount, customer_id) VALUES
('2017/11/05', 23.45, 45),
(CURDATE(), 777.77, 109);

select * from customers;

select * from orders;

SELECT 
    first_name, 
    last_name,
   IFNULL(SUM(amount), 0) AS total_spent
FROM customers
LEFT JOIN orders
    ON customers.id = orders.customer_id
GROUP BY customers.id
ORDER BY total_spent;


/*    -----------------------------               */
drop database if exists studentdb;
create database studentdb;
use studentdb;

create table students(
	id int not null primary key auto_increment,
    first_name varchar(100)
);

create table papers(
	id int not null primary key auto_increment,
    title varchar(50),
    grade int,
    student_id int,
    foreign key (student_id) references students(id)
);

INSERT INTO students (first_name) VALUES 
('Caleb'), ('Samantha'), ('Raj'), ('Carlos'), ('Lisa');

INSERT INTO papers (student_id, title, grade ) VALUES
(1, 'My First Book Report', 60),
(1, 'My Second Book Report', 75),
(2, 'Russian Lit Through The Ages', 94),
(2, 'De Montaigne and The Art of The Essay', 98),
(4, 'Borges and Magical Realism', 89);


select first_name, title, grade from 
students right join papers
on students.id = papers.student_id
order by grade desc;

select first_name, title, grade from 
students left join papers
on students.id = papers.student_id;

select first_name, ifnull(title, "MISSING") as title, ifnull(grade, 0) as grade from 
students left join papers
on students.id = papers.student_id;

select first_name, ifnull(avg(grade), 0) as average,
case 
	when ifnull(avg(grade), 0) >= 75 then "PASSING"
    else "FAILING"
end as "passing_status"
from students left join papers
on students.id = papers.student_id
group by first_name
order by average desc;


create table series(
	id int not null primary key auto_increment,
    title varchar(100),
    released_year varchar(4),
    genre varchar(50)
);

create table reviewers(
	id int not null primary key auto_increment,
    first_name varchar(100),
    last_name varchar(100)
);

create table reviews(
	 id int not null primary key auto_increment,
     ratings decimal(2, 1),
     series_id int,
     reviewers_id int,
     foreign key (series_id) references series(id),
     foreign key (reviewers_id) references reviewers(id)
);

INSERT INTO series (title, released_year, genre) VALUES
    ('Archer', 2009, 'Animation'),
    ('Arrested Development', 2003, 'Comedy'),
    ("Bob's Burgers", 2011, 'Animation'),
    ('Bojack Horseman', 2014, 'Animation'),
    ("Breaking Bad", 2008, 'Drama'),
    ('Curb Your Enthusiasm', 2000, 'Comedy'),
    ("Fargo", 2014, 'Drama'),
    ('Freaks and Geeks', 1999, 'Comedy'),
    ('General Hospital', 1963, 'Drama'),
    ('Halt and Catch Fire', 2014, 'Drama'),
    ('Malcolm In The Middle', 2000, 'Comedy'),
    ('Pushing Daisies', 2007, 'Comedy'),
    ('Seinfeld', 1989, 'Comedy'),
    ('Stranger Things', 2016, 'Drama');
    
INSERT INTO reviewers (first_name, last_name) VALUES
    ('Thomas', 'Stoneman'),
    ('Wyatt', 'Skaggs'),
    ('Kimbra', 'Masters'),
    ('Domingo', 'Cortes'),
    ('Colt', 'Steele'),
    ('Pinkie', 'Petit'),
    ('Marlon', 'Crafford');
    
INSERT INTO reviews(series_id, reviewers_id, ratings) VALUES
    (1,1,8.0),(1,2,7.5),(1,3,8.5),(1,4,7.7),(1,5,8.9),
    (2,1,8.1),(2,4,6.0),(2,3,8.0),(2,6,8.4),(2,5,9.9),
    (3,1,7.0),(3,6,7.5),(3,4,8.0),(3,3,7.1),(3,5,8.0),
    (4,1,7.5),(4,3,7.8),(4,4,8.3),(4,2,7.6),(4,5,8.5),
    (5,1,9.5),(5,3,9.0),(5,4,9.1),(5,2,9.3),(5,5,9.9),
    (6,2,6.5),(6,3,7.8),(6,4,8.8),(6,2,8.4),(6,5,9.1),
    (7,2,9.1),(7,5,9.7),
    (8,4,8.5),(8,2,7.8),(8,6,8.8),(8,5,9.3),
    (9,2,5.5),(9,3,6.8),(9,4,5.8),(9,6,4.3),(9,5,4.5),
    (10,5,9.9),
    (13,3,8.0),(13,4,7.2),
    (14,2,8.5),(14,3,8.9),(14,4,8.9);
    
    
select title, ratings from series left join reviews
on series.id = reviews.series_id
order by title;


select title, avg(ratings) as avg_ratings from series right join reviews
on series.id = reviews.series_id
group by title
order by avg_ratings;

select first_name, last_name, ratings from reviewers left join reviews
on reviewers.id = reviews.reviewers_id;

select title as unreviewd_title  from series left join reviews
on series.id = reviews.series_id
where ratings is null;


select genre, avg(ratings) as avg_ratings from series left join reviews
on series.id = reviews.series_id
group by genre;

select first_name, last_name, count(ratings) as COUNT, ifnull(min(ratings), 0) as MIN, ifnull(max(ratings), 0) as MAX, ifnull(avg(ratings), 0) as AVG,
case 
	when count(ratings) = 0 then "INACTIVE"
    else "ACTIVE"
end as STATUS
 from reviewers left join reviews
on reviewers.id = reviews.reviewers_id
group by first_name, last_name order by status ;