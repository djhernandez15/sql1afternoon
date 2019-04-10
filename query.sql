--TABLE PERSON --------------------------------------------------------------------------------------------------------------------

-- 1
CREATE TABLE person
(
    id SERIAL PRIMARY KEY,
    name VARCHAR(255),
    age INTEGER,
    height INTEGER,
    city VARCHAR(255),
    favorite_color VARCHAR(255)
);

--2
INSERT INTO person
    (name, favorite_color, city, height, age)
VALUES
    ('David', 'Green', 'Miami', 172, 25),
    ('Morgan', 'Coral', 'Tampa', 160, 23),
    ('Buddy', 'Green', 'Tampa', 193, 28),
    ('Carlos', 'Pink', 'Harlem', 165, 38),
    ('Jenny', 'Black', 'Racine', 155, 36);


--3
SELECT name
FROM person
ORDER BY
height DESC;


--4
SELECT name
FROM person
ORDER BY 
height ASC;


--5
SELECT name
FROM person
ORDER BY
age DESC;

--6
SELECT name
FROM person
ORDER BY
age
> 20;

--7
SELECT name
FROM person
ORDER BY
age
= 18;

--8
SELECT name
FROM person
WHERE 
age > 30
    OR
    age < 20

--9
SELECT name
FROM person
WHERE 
age != 27;

--10
SELECT name
FROM person
WHERE
favorite_color != 'red';

--11
SELECT name
FROM person
WHERE
favorite_color != 'red'
    AND
    favorite_color != 'blue';

--12
SELECT name
FROM person
WHERE
favorite_color = 'orange'
    OR
    favorite_color != 'green';

--13
SELECT name
FROM person
WHERE
favorite_color IN ('Orange','Green','Blue');

--14
SELECT name
FROM person
WHERE
favorite_color IN ('Yellow','Purple');

--TABLE ORDERS--------------------------------------------------------------------------------------------------------------------

--1
CREATE TABLE orders
(
    person_id SERIAL PRIMARY KEY,
    product_name VARCHAR(255),
    product_price FLOAT,
    quantity INTEGER
);

--2
INSERT INTO orders
    (product_name, product_price, quantity)
VALUES
    ('rear differential', 850, 1),
    ('rear axle', 400, 2);

--3
SELECT *
FROM orders;

--4
SELECT SUM(quantity)
FROM orders;

--5
SELECT SUM(product_price)
FROM orders;

--6
SELECT SUM(product_price)
FROM orders
WHERE 
person_id = 1;



--TABLE ARTIST--------------------------------------------------------------------------------------------------------------------

--1
INSERT INTO artist
    (name)
VALUES
    ('Deftones')

,
    ('Aphex Twin')

,
    ('Team Sleep');

--2
SELECT name
FROM artist
ORDER BY
name DESC
LIMIT 10;

--3
SELECT name
FROM artist
ORDER BY
name ASC LIMIT 5;

--4
SELECT name
FROM artist
WHERE
name LIKE '%Black';

--5
SELECT name
FROM artist
WHERE
name LIKE '%Black%';

--TABLE EMPLOYEE--------------------------------------------------------------------------------------------------------------------

--1
SELECT first_name, last_name
FROM employee
WHERE city = 'Calgary';

--2
SELECT MAX(birth_date)
FROM employee;

--3
SELECT MIN(birth_date)
FROM employee;

--4
SELECT first_name, last_name
FROM employee
WHERE reports_to = 2;

--5
SELECT first_name, last_name
FROM employee
WHERE city = 'Lethbridge';

--TABLE INVOICE--------------------------------------------------------------------------------------------------------------------


--1
SELECT COUNT(*)
FROM invoice
WHERE billing_country = 'USA';

--2
SELECT MAX(total)
FROM invoice;

--3
SELECT MIN(total)
FROM invoice;

--4
SELECT invoice_id
FROM invoice
WHERE 
total > 5;

--5
SELECT COUNT(*)
FROM invoice
WHERE total < 5;

--6
SELECT COUNT(*)
FROM invoice
WHERE billing_state in ('CA', 'TX', 'AZ');


--7
SELECT AVG(total)
FROM invoice;

--8
SELECT SUM(total)
FROM invoice;

