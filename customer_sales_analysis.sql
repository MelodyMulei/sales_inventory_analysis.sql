-- CREATE schema assignment
CREATE SCHEMA assignment;
set search_path to assignment;

-- CREATE Customers table in the assignment schema
CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100),
    phone_number VARCHAR(50),
    registration_date DATE,
    membership_status VARCHAR(10)
);
-- CREATE Products table in the assignment schema
CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    category VARCHAR(50),
    price DECIMAL(10, 2),
    supplier VARCHAR(100),
    stock_quantity INT
);
-- CREATE Sales table in the assignment schema
CREATE TABLE sales (
    sale_id INT PRIMARY KEY,
    customer_id INT,
    product_id INT,
    quantity_sold INT,
    sale_date DATE,
    total_amount DECIMAL(10, 2),
    FOREIGN KEY (customer_id) REFERENCES assignment.customers(customer_id),
    FOREIGN KEY (product_id) REFERENCES assignment.products(product_id)
);

-- CREATE Inventory table in the assignment schema
CREATE table inventory (
    product_id INT PRIMARY KEY,
    stock_quantity INT,
    FOREIGN KEY (product_id) REFERENCES assignment.products(product_id)
);

-- Inserting data into assignment.Customers table
INSERT INTO customers 
(customer_id, first_name, last_name, email, phone_number, registration_date, membership_status) 
VALUES
(1, 'Karen', 'Molina', 'gonzalezkimberly@glass.com', '(728)697-1206', '2020-08-27', 'Bronze'),
(2, 'Elizabeth', 'Archer', 'tramirez@gmail.com', '778.104.6553', '2023-08-28', 'Silver'),
(3, 'Roberta', 'Massey', 'davislori@gmail.com', '+1-365-606-7458x399', '2024-06-12', 'Bronze'),
(4, 'Jacob', 'Adams', 'andrew72@hotmail.com', '246-459-1425x462', '2023-02-10', 'Gold'),
(5, 'Cynthia', 'Lowery', 'suarezkiara@ramsey.com', '001-279-688-8177x4015', '2020-11-13', 'Silver'),
(6, 'Emily', 'King', 'igoodwin@howard.com', '(931)575-5422x5900', '2021-05-01', 'Silver'),
(7, 'Linda', 'Larsen', 'pware@yahoo.com', '289-050-2028x7673', '2021-08-20', 'Silver'),
(8, 'Angela', 'Hanson', 'zanderson@gmail.com', '+1-403-917-3585', '2023-03-17', 'Bronze'),
(9, 'Whitney', 'Wilson', 'norma70@yahoo.com', '001-594-317-6656', '2024-01-27', 'Bronze'),
(10, 'Angela', 'Atkins', 'burnsjorge@medina.org', '344.217.5788', '2025-02-05', 'Silver'),
(11, 'Gary', 'Lucero', 'ssnyder@hotmail.com', '001-842-595-7853', '2024-10-08', 'Silver'),
(12, 'Matthew', 'Romero', 'jennifer22@gmail.com', '556.328.91896', '2022-04-07', 'Bronze'),
(13, 'Ronald', 'Thompson', 'hramos@hayes.biz', '298-487-2483', '2023-07-31', 'Bronze'),
(14, 'Suzanne', 'Anderson', 'michaelcole@ruiz-ware.com', '+1-018-029-7257', '2023-11-02', 'Bronze'),
(15, 'Mary', 'Kelly', 'matthewmurphy@gmail.com', '(845)934-9x286', '2021-01-20', 'Bronze'),
(16, 'John', 'George', 'burnettlauren@gmail.com', '+1-708-200-4286', '2022-05-17', 'Bronze'),
(17, 'James', 'Rodriguez', 'brownbrian@blair-sanford.com', '8826047658', '2022-11-25', 'Gold'),
(18, 'Steven', 'Burnett', 'zblackburn@yahoo.com', '(055)912-6726x1246', '2020-01-28', 'Gold'),
(19, 'Jonathan', 'White', 'millsseth@choi-kelly.org', '755-979-1934x772', '2022-02-06', 'Bronze'),
(20, 'Christopher', 'Santiago', 'heidimaddox@hotmail.com', '118-589-6973x058', '2021-10-16', 'Silver'),
(21, 'John', 'Diaz', 'gsmith@hotmail.com', '369.915.4337', '2022-09-17', 'Gold'),
(22, 'Curtis', 'Rose', 'ryanmartinez@moore.com', '(921)461-2128', '2021-12-14', 'Bronze'),
(23, 'Charles', 'Hughes', 'jonesangela@frank-lynn.com', '(152)603-5387x8994', '2024-07-29', 'Silver'),
(24, 'Sarah', 'Cooke', 'whitedennis@tucker.org', '(641)830-6756x56741', '2024-12-15', 'Bronze'),
(25, 'Luis', 'Harrison', 'melvin70@gmail.com', '516.509.9493', '2021-08-19', 'Silver'),
(26, 'Annette', 'Greene', 'aaron68@hall.com', '(733)734-1847x1078', '2025-04-12', 'Bronze'),
(27, 'Melissa', 'Jacobson', 'becklarry@gmail.com', '562-245-7784x4729', '2023-04-28', 'Bronze'),
(28, 'Julie', 'Gardner', 'adamsrodney@hall.com', '+1-014-029-3206x188', '2024-03-31', 'Gold'),
(29, 'Margaret', 'Taylor', 'lfuller@hotmail.com', '(299)340-8900x297', '2021-09-06', 'Bronze'),
(30, 'Erika', 'Mckee', 'wsmith@gmail.com', '(160)040-7321', '2021-05-25', 'Silver'),
(31, 'Donna', 'Whitney', 'justinnicholson@gmail.com', '7086491657', '2022-08-07', 'Gold'),
(32, 'Kristina', 'Wade', 'ashley30@richards-young.com', '603-604-2831x303', '2024-03-16', 'Silver'),
(33, 'Joshua', 'Green', 'ihartman@yahoo.com', '988-232-8285x00933', '2024-05-14', 'Silver'),
(34, 'John', 'Leblanc', 'herickson@green.info', '229.016.2527x20209', '2022-12-24', 'Silver'),
(35, 'Nicholas', 'Campbell', 'ghernandez@hotmail.com', '(982)215-6626', '2022-06-06', 'Gold'),
(36, 'Christopher', 'Hicks', 'ryan48@gmail.com', '884.881.7758', '2021-04-03', 'Silver'),
(37, 'Craig', 'Miller', 'scampbell@johnson.net', '390-328-7286x021', '2024-04-30', 'Silver'),
(38, 'Jennifer', 'Bailey', 'dwright@hotmail.com', '001-992-011-9250', '2022-09-07', 'Silver'),
(39, 'Emma', 'Davis', 'lisalester@hotmail.com', '911.706.3025', '2021-06-04', 'Gold'),
(40, 'Michael', 'Wilson', 'lmerritt@wallace-wang.com', '462.021.3233', '2025-01-14', 'Bronze'),
(41, 'Sarah', 'Church', 'deniseramos@gmail.com', '(840)285-3653x61868', '2021-03-14', 'Silver'),
(42, 'Carolyn', 'Stevenson', 'george62@garrison.net', '040.179.1155', '2024-07-26', 'Silver'),
(43, 'Sarah', 'Cole', 'amandamartin@hotmail.com', '481-651-5206x4800', '2024-07-27', 'Silver'),
(44, 'Jeremiah', 'Lozano', 'bethany38@lopez.net', '846-327-7426', '2023-01-02', 'Bronze'),
(45, 'Leslie', 'Boyd', 'cartermorgan@scott-franco.com', '+1-583-786-3525', '2022-10-22', 'Silver'),
(46, 'Carrie', 'Anderson', 'stevenlivingston@yahoo.com', '+1-086-709-5530x6149', '2024-08-23', 'Gold'),
(47, 'Jared', 'Davis', 'mooretodd@cook.com', '001-069-544-8807x2397', '2022-08-29', 'Bronze'),
(48, 'James', 'Soto', 'patriciaburns@yahoo.com', '129.857.8193x421', '2023-01-27', 'Gold'),
(49, 'Cody', 'Kline', 'bradfordleslie@hotmail.com', '+1-710-706-3703x7998', '2022-06-28', 'Bronze'),
(50, 'Jennifer', 'Perkins', 'austinowens@hill.info', '762.009.1882', '2020-10-19', 'Silver');

select * from assignment.customers;

-- Inserting data into assignment.Products table
INSERT INTO Products 
(product_id, product_name, category, price, supplier, stock_quantity) 
VALUES
(1, 'Laptop', 'Electronics', 999.99, 'Dell', 50),
(2, 'Smartphone', 'Electronics', 799.99, 'Samsung', 150),
(3, 'Washing Machine', 'Appliances', 499.99, 'LG', 30),
(4, 'Headphones', 'Accessories', 199.99, 'Sony', 100),
(5, 'Refrigerator', 'Appliances', 1200.00, 'Whirlpool', 40),
(6, 'Smart TV', 'Electronics', 1500.00, 'Samsung', 20),
(7, 'Microwave', 'Appliances', 180.00, 'Panasonic', 75),
(8, 'Blender', 'Appliances', 50.00, 'Ninja', 200),
(9, 'Gaming Console', 'Electronics', 350.00, 'Sony', 60),
(10, 'Wireless Mouse', 'Accessories', 25.00, 'Logitech', 300),
(11, 'Keyboard', 'Accessories', 49.99, 'Logitech', 250),
(12, 'Monitor', 'Electronics', 250.00, 'Acer', 120),
(13, 'External Hard Drive', 'Electronics', 80.00, 'Seagate', 90),
(14, 'Tablet', 'Electronics', 400.00, 'Apple', 70),
(15, 'Smartwatch', 'Electronics', 199.99, 'Apple', 120);

select * from assignment.products;

-- Inserting data into assignment.Sales table
INSERT INTO Sales 
(sale_id, customer_id, product_id, quantity_sold, sale_date, total_amount) 
VALUES
(1, 1, 1, 1, '2023-07-15', 999.99),
(2, 2, 2, 2, '2023-08-20', 1599.98),
(3, 3, 3, 1, '2023-09-10', 499.99),
(4, 4, 4, 3, '2023-07-25', 599.97),
(5, 5, 5, 1, '2023-06-18', 1200.00),
(6, 6, 6, 1, '2023-10-05', 1500.00),
(7, 7, 7, 1, '2023-08-01', 180.00),
(8, 8, 8, 2, '2023-09-02', 100.00),
(9, 9, 9, 1, '2023-10-10', 350.00),
(10, 10, 10, 3, '2023-11-12', 75.00),
(11, 11, 11, 2, '2023-12-01', 100.00),
(12, 12, 12, 1, '2023-12-07', 250.00),
(13, 13, 13, 1, '2024-01-15', 80.00),
(14, 14, 14, 1, '2024-02-05', 400.00),
(15, 15, 15, 1, '2024-01-05', 199.99);

-- Inserting data into assignment.Inventory table
INSERT INTO inventory 
(product_id, stock_quantity) 
VALUES
(1, 50),
(2, 150),
(3, 30),
(4, 100),
(5, 40),
(6, 20),
(7, 75),
(8, 200),
(9, 60),
(10, 300),
(11, 250),
(12, 120),
(13, 90),
(14, 70),
(15, 120);

-- Select all data from assignment.Customers table
SELECT * FROM customers;

-- Select all data from assignment.Products table
SELECT * FROM Products;

-- Select all data from assignment.Sales table
SELECT * FROM sales;

-- Select all data from assignment.Inventory table
SELECT * FROM Inventory;

-- 1. Write a query to select all data from the `Customers` table.
select 
*from customers;

-- 2. Write a query to select the total number of products from the `Products` table.
select 
count(product_id)
from products;

-- 3. Write a query to select the product name and its price from the `Products` table where the price is greater than 500.
select 
product_name,
price
from products
where price>500;

-- 4. Write a query to find the average price of all products from the `Products` table.
select 
avg(price)as average_Price
from products;

-- 5. Write a query to find the total sales amount across all records from the `Sales` table.
select
sum(total_amount)as total_sales
from sales;

-- 6. Write a query to select distinct membership statuses from the `Customers` table.
select 
distinct(membership_status)
from customers;

-- 7. Write a query to concatenate first and last names of all customers and show the result as `full_name`.
select 
concat(first_name,' ',last_name) as full_name
from customers;

-- 8. Write a query to find all products in the `Products` table where the category is 'Electronics'.
select 
* from products
where category='Electronics';

-- 9. Write a query to find the highest price from the `Products` table.
SELECT 
    MAX(price) AS highest_price
FROM products;

--option 2
SELECT price
FROM products
ORDER BY price DESC
FETCH FIRST 1 ROW ONLY;

-- 10. Write a query to count the number of sales for each product from the `Sales` table.
SELECT 
    product_id, 
    COUNT(*) AS number_of_sales
FROM Sales
GROUP BY product_id;

-- 11. Write a query to find the total quantity sold for each product from the `Sales` table.
select 
product_id,
sum(quantity_sold) as total_quantity_sold
FROM Sales
GROUP BY product_id;
	
-- 12. Write a query to find the lowest price of products in the `Products` table.
select 
min(price)
from products;

-- 13. Write a query to find customers who have purchased products with a price greater than 1000.
select 
first_name,
c.customer_id,
price
from customers c
join sales s
on s.customer_id=c.customer_id
join products p
on p.product_id=s.product_id
where p.price>1000;
select *from customers;

-- 14. Write a query to join the `Sales` and `Products` tables on product_id, and Show product name and total sales amount per product
select 
product_name,
sum(total_amount) as total_sales
from sales s 
join products p
on s.product_id=p.product_id 
group by product_name;

-- 15. Write a query to join the `Customers` and `Sales` tables and find the total amount spent by each customer.
select 
first_name,
sum(total_amount) as total_spent
from sales s
join customers c
on c.customer_id=s.customer_id 
group by first_name;

-- 16. Write a query to join the `Customers`, `Sales`, and `Products` tables, and show each customer's first and last name, product name, and quantity sold.
select 
first_name,
last_name,
product_name,
quantity_sold
from customers c
join sales s
on c.customer_id=s.customer_id 
join products p
on p.product_id=s.product_id;

-- 17. Write a query to perform a self-join on the `Customers` table and find all pairs of customers who have the same membership status.
SELECT 
    c1.customer_id AS customer_1,
    c1.first_name AS name_1,
    c2.customer_id AS customer_2,
    c2.first_name AS name_2,
    c1.membership_status
FROM customers c1
JOIN customers c2
    ON c1.membership_status = c2.membership_status
    AND c1.customer_id < c2.customer_id;

-- 18. Write a query to join the `Sales` and `Products` tables, and calculate the total number of sales for each product.
select
product_name,
count(p.product_id) as product_sale
from sales s
join products P
on s.product_id=p.product_id
group by product_name;

-- 19. Write a query to find the products in the `Products` table where the stock quantity is less than 10.
select 
product_id,
product_name,
stock_quantity
from products p 
where stock_quantity<10;

-- 20. Write a query to join the `Sales` table and the `Products` table, and find products with total sales quantity greater than 5.
select
p.product_id,
product_name,
sum(total_amount) as total_sales
from sales s
join products p
on s.product_id=p.product_id 
group by p.product_id,p.product_name 
having sum(total_amount)>5;
-- 21. Write a query to select customers who have purchased products that are either in the 'Electronics' or 'Appliances' category.
select distinct
c.customer_id,
concat(first_name,' ',last_name)
from customers c
join sales s
on c.customer_id=s.customer_id
join products p
on s.product_id=p.product_id
where category in('Electronics','Appliances');

-- 22. Write a query to calculate the total sales amount per product and group the result by product name.
select 
product_name,
sum(total_amount) as product_sale
from sales s
join products p
on s.product_id=p.product_id 
group by product_name;

	-- 23. Write a query to join the `Sales` table with the `Customers` table and select customers who made a purchase in the year 2023.
select distinct 
first_name,
total_amount,
sale_date
from customers c
join sales s
on c.customer_id=s.customer_id
where extract(year from sale_date)=2023;

-- 24. Write a query to find the customers with the highest total sales in 2023.
select 
c.customer_id,
concat(first_name,' ',last_name),
sum(total_amount) as total_sales
from customers c
join sales s
on c.customer_id=s.customer_id
group by c.customer_id,
concat(first_name,' ',last_name)
order by sum(total_amount) desc 
limit 1;

-- 25. Write a query to join the `Products` and `Sales` tables and select the most expensive product sold.
SELECT 
    p.product_id,
    p.product_name,
    p.price
FROM products p
JOIN sales s
    ON p.product_id = s.product_id
ORDER BY p.price DESC
LIMIT 1;

-- 26. Write a query to find the total number of customers who have purchased products worth more than 500.
SELECT 
    COUNT(*)
FROM (
    SELECT customer_id
    FROM sales
    GROUP BY customer_id
    HAVING SUM(total_amount) > 500
) t;

-- 27. Write a query to join the `Products`, `Sales`, and `Customers` tables and find the total number of sales made by customers who are in the 'Gold' membership tier.
SELECT 
    COUNT(*) AS total_sales
FROM customers c
JOIN sales s
    ON c.customer_id = s.customer_id
JOIN products p
    ON s.product_id = p.product_id
WHERE c.membership_status = 'Gold';

-- 28. Write a query to join the `Products` and `Inventory` tables and find all products that have low stock (less than 10).
SELECT 
    p.product_id,
    p.product_name,
    i.stock_quantity
FROM Products p
JOIN Inventory i
    ON p.product_id = i.product_id
WHERE i.stock_quantity < 10;

-- 29. Write a query to find customers who have purchased more than 5 products and show the total quantity of products they have bought.
SELECT 
    customer_id,
    SUM(quantity_sold) AS total_quantity
FROM Sales
GROUP BY customer_id
HAVING SUM(quantity_sold) > 5;

-- 30. Write a query to find the average quantity sold per product.
select 
product_id
avg(quantity_sold) AS avg_quantity_sold
from sales s
group by product_id
ORDER BY product_id;

-- 31. Write a query to find the number of sales made in the month of December 2023.
SELECT 
COUNT(*) AS december_sales
FROM sales
WHERE EXTRACT(YEAR FROM sale_date)= 2023
AND EXTRACT(MONTH FROM sale_date) = 12;

-- 32. Write a query to find the total amount spent by each customer in 2023 and list the customers in descending order.
SELECT 
    first_name || ' ' || last_name AS full_name,
    COUNT(*) AS customer_spend,
    SUM(total_amount) AS total_spent
FROM customers c
JOIN sales s
ON c.customer_id = s.customer_id
WHERE EXTRACT(YEAR FROM s.sale_date) = 2023
GROUP BY first_name, last_name
ORDER BY first_name DESC;

-- 33. Write a query to find all products that have been sold but have less than 5 units left in stock.
select distinct
p.product_id,
p.product_name, 
p.stock_quantity
from products p 
join sales s
on p.product_id=s.product_id 
where p.stock_quantity<5;

-- 34. Write a query to find the total sales for each product and order the result by the highest sales.
select
p.product_id,
p.product_name,
sum(total_amount) as total_sales
from products p 
join sales s
on p.product_id=s.product_id 
group by p.product_id,p.product_name
order by total_sales desc;

-- 35. Write a query to find all customers who bought products within 7 days of their registration date.
select 
c.customer_id,
c.first_name,
s.sale_date
from customers c
join sales s
on c.customer_id=s.customer_id
where s.sale_date between c.registration_date and
c.registration_date + interval '7 days';

-- 36. Write a query to join the `Sales` table with the `Products` table and filter the results by products priced between 100 and 500.
SELECT 
    s.sale_id,
    p.product_id,
    p.product_name,
    p.price,
    s.sale_date
FROM sales s
JOIN products p
ON s.product_id = p.product_id
WHERE p.price BETWEEN 100 AND 500;

-- 37. SELECT 
select  
customer_id,
COUNT(*) AS purchase_count
FROM sales
GROUP BY customer_id
ORDER BY purchase_count DESC
LIMIT 1;

-- 38. Write a query to find the total quantity of products sold per customer.
select 
customer_id,
sum(quanty_sold)
from sales
group by customer_id;

-- 39. Write a query to find the products with the highest stock and lowest stock, and display them together in a single result set.

-- 40. Write a query to find products whose names contain the word 'Phone' and their total sales.
select 
product_name,
sum(total_amount) as total_sales
from sales s
join products p
on s.product_id=p.product_id
where product_name ilike '%Phone'
group by product_name;

-- 41. Write a query to perform an `INNER JOIN` between `Customers` and `Sales`, then display the total sales amount and the product names for customers in the 'Gold' membership status.
select
c.first_name,
c.customer_id,
product_name,
sum(s.total_amount) as total_sales
from customers c 
inner join sales s
on c.customer_id=s.customer_id
inner join assignment.products p
on s.product_id=p.product_id
where membership_status='Gold'
group by c.first_name,c.customer_id,p.product_name;


-- 42. Write a query to find the total sales of products by category.
select 
category,
sum(total_amount) as Total_sales
from products p
inner join sales s
on s.product_id=p.product_id
group by category,total_amount;

-- 43. Write a query to join the `Products` table with the `Sales` table, and calculate the total sales for each product, grouped by month and year.
select 
p.product_name,
cast(extract (year from s.sale_date) as INT) as sale_year,
cast(extract (month from s.sale_date) as INT) as sale_month,
sum(total_amount) as Total_sales
from products p
inner join sales s
on s.product_id=p.product_id
group by p.product_name,sale_year,sale_month;


--OPTION 2
SELECT 
    p.product_name,
    TO_CHAR(s.sale_date, 'YYYY') AS sale_year,
    TO_CHAR(s.sale_date, 'MM') AS sale_month,
    SUM(s.total_amount) AS total_sales
FROM products p
JOIN sales s
    ON s.product_id = p.product_id
GROUP BY 
    p.product_name,
    sale_year,
    sale_month;


-- 44. Write a query to join the `Sales` and `Inventory` tables and find products that have been sold but still have stock remaining.
select 
s.product_id,
s.total_amount,
i.stock_quantity
select from sales s
inner join inventory i
on s.product_id=i.product_id
where i.stock_quantity>0;

-- 45. Write a query to find the top 5 customers who have made the highest purchases.
select 
c.first_name,
sum(total_amount) as total_purchases
from customers c
join sales s
on c.customer_id=s.customer_id
group by c.first_name
order by total_purchases desc 
limit 5;

-- 46. Write a query to calculate the total number of unique products sold in 2023.
select
	count(distinct product_id) as unique_products_sold
	from sales
	where to_char(sale_date,'YYYY')='2023';

-- 47. Write a query to find the products that have not been sold in the last 6 months.
SELECT 
    p.product_name,
    p.product_id
FROM products p
LEFT JOIN sales s
    ON p.product_id = s.product_id
   AND s.sale_date >= CURRENT_DATE - INTERVAL '6 months'
WHERE s.product_id IS NULL;

-- 48. Write a query to select the products with a price range between $200 and $800, and find the total quantity sold for each.
select 
p.price,
p.product_name,
sum(quantity_sold) as quantity_sold
from products p
inner join sales s
on p.product_id=s.product_id
where p.price between 200 and 800
group by p.price,p.product_name;


-- 49. Write a query to find the customers who spent the most money in the year 2023.
select
c.first_name,
c.customer_id,
sum(total_amount)as total_spent
from customers c
inner join sales s
on s.customer_id=c.customer_id 
where extract(year from s.sale_date)=2023
group by c.first_name,c.customer_id
order by total_spent desc;

-- 50. Write a query to select the products that have been sold more than 100 times and have a price greater than 200.
SELECT 
    p.product_id,
    p.product_name,
    COUNT(s.product_id) AS times_sold
FROM products p
JOIN sales s
    ON s.product_id = p.product_id
WHERE p.price > 200
GROUP BY p.product_id, p.product_name,s.product_id
HAVING count(s.product_id) > 100;

-- SUBQUERY QUESTIONS
-- 51. Which customers have spent more than the average spending of all customers?
select customer_id,total_amount
from sales 
where total_amount >(select avg(total_amount)
from sales)
group by total_amount,
		customer_id;

-- 52. Which products are priced higher than the average price of all products?
select product_name,product_id
from products
where price>(select avg(price) from products);

-- 53. Which customers have never made a purchase?
select c.customer_id,
c.first_name
from customers c
left join sales s
on s.customer_id=c.customer_id 
where s.customer_id is null;

-- 54. Which products have never been sold?
SELECT 
    p.product_id,
    p.product_name
FROM products p
LEFT JOIN sales s
    ON p.product_id = s.product_id
WHERE s.product_id IS NULL;

-- 55. Which customer made the single most expensive purchase (total amount)?
select
c.first_name,
c.customer_id,
sum(total_amount)as total_spent
from customers c
inner join sales s
on s.customer_id=c.customer_id 
group by c.first_name,c.customer_id
order by total_spent desc
limit 1;

-- 56. Which products have total sales greater than the average total sales across all products?
WITH product_totals AS (
    SELECT 
        p.product_id,
        p.product_name,
        SUM(s.total_amount) AS total_sales
    FROM products p
    JOIN sales s
        ON s.product_id = p.product_id
    GROUP BY p.product_id, p.product_name
)
SELECT *
FROM product_totals
WHERE total_sales > (
    SELECT AVG(total_sales)
    FROM product_totals
);

--OPTION 2
WITH product_totals AS (
    SELECT 
        product_id,
        SUM(total_amount) AS total_sales
    FROM sales
    GROUP BY product_id
)
SELECT 
    p.product_id,
    p.product_name,
    pt.total_sales
FROM product_totals pt
JOIN products p
    ON p.product_id = pt.product_id
WHERE pt.total_sales > (
    SELECT AVG(total_sales)
    FROM product_totals
);

-- 57. Which customers registered earlier than the average registration date?
-- Average of a date column can be calculated using; 
select 
first_name,
customer_id,
registration_date
from customers
where registration_date<(SELECT TO_TIMESTAMP(AVG(EXTRACT(EPOCH FROM registration_date)))::DATE FROM customers);

-- 58. Which products have a price higher than the average price within their own category?
SELECT Product_Name, Price, Category
FROM Products p1
WHERE Price > (
    SELECT AVG(Price)
    FROM Products p2
    WHERE p1.Category = p2.Category
);

-- 59. Which customers have spent more than the customer with ID = 10?
select 
customer_id,
sum(total_amount) as total_spent
from sales
where total_amount>(select sum(total_amount) from sales
where customer_id=10)
Group by customer_id;


--OPTION 2
SELECT 
    customer_id,
    SUM(total_amount) AS total_spent
FROM sales
GROUP BY customer_id
HAVING SUM(total_amount) > (
    SELECT SUM(total_amount)
    FROM sales
    WHERE customer_id = 10
);
-- 60. Which products have total quantity sold greater than the overall average quantity sold?
SELECT 
    product_id,
    SUM(quantity_sold) AS quantity_sold
FROM sales
GROUP BY product_id
HAVING SUM(quantity_sold) > (
    SELECT AVG(product_total)
    FROM (
        SELECT SUM(quantity_sold) AS product_total
        FROM sales
        GROUP BY product_id
    ) t
);

-- COMMON TABLE EXPRESSIONS (CTEs)

-- 61. Create an intermediate result that calculates the total amount spent by each customer,
--     then determine which customers are the top 5 highest spenders.
with customer_totals as(
select customer_id,
sum(total_amount) as total_spent
from sales
group by customer_id
)
select customer_id,
total_spent
from customer_totals
order by total_spent desc
limit 5;

-- 62. Create an intermediate result that calculates total quantity sold per product,
--     then determine which products are the top 3 most sold.
with sales_per_product as(
select product_id,
sum(quantity_sold) as quantity_sold
from sales
group by product_id
)
select product_id,
quantity_sold
from sales_per_product
order by quantity_sold desc 
limit 3;

-- 63. Create an intermediate result showing total sales per product category,
--     then determine which category generates the highest revenue.
WITH category_sales AS (
    SELECT 
        p.category,
        SUM(s.total_amount) AS total_revenue
    FROM sales s
    JOIN products p
        ON s.product_id = p.product_id
    GROUP BY p.category
)
SELECT 
    category,
    total_revenue
FROM category_sales
ORDER BY total_revenue DESC
LIMIT 1;

-- 64. Create an intermediate result that calculates the number of purchases per customer,
--     then identify customers who purchased more than twice.
with customer_purchases as(
select customer_id,
sum(quantity_sold) as purchases
from sales
group by customer_id
)
select customer_id,
purchases
from customer_purchases 
where purchases>2;

-- 65. Create an intermediate result that calculates the total quantity sold per product,
--     then determine which products sold more than the average quantity sold.
with product_totals as(
select product_id,
sum(quantity_sold) as total_quantity
from sales
group by product_id
)
select product_id,
total_quantity
from product_totals 
where total_quantity>(select avg(total_quantity)
from product_totals);

-- 66. Create an intermediate result that calculates total spending per customer,
--     then determine which customers spent more than the average spending.
with customer_totals as(
select customer_id,
sum(total_amount) as total_spent
from sales
group by customer_id
)
select customer_id,
total_spent
from customer_totals 
where total_spent>(select avg(total_spent) from customer_totals);


-- 67. Create an intermediate result that calculates total revenue per product,
--     then list the products ordered from highest revenue to lowest.
with product_revenue as(
select product_id,
sum(total_amount) as total_revenue
from sales
group by product_id
)
select product_id,
total_revenue
from product_revenue 
order by total_revenue desc;

-- 68. Create an intermediate result showing monthly sales totals,
--     then determine which month had the highest revenue.
with monthly_sales as
(select extract (month FROM sale_date) as month, sum(total_amount) as monthly_rev
from assignment.sales 
group by sale_date)
select monthly_rev, month
from monthly_sales
order by monthly_rev desc
limit 1;

-- 69. Create an intermediate result that calculates the number of sales per product,
--     then determine which products were purchased by more than three customers.
with product_customers as(
select product_id,
count(product_id) as customer_count
from sales
group by product_id
)
select 
product_id,
customer_count
from product_customers
where customer_count>3;

-- 70. Create an intermediate result showing total quantity sold per product,
--     then identify products that sold less than the average quantity sold.

with Quantity_sold as
(select product_id, sum(quantity_sold)as product_sales
from assignment.sales
group by product_id)
select product_id, product_sales
from Quantity_sold 
where product_sales < (select avg(product_sales) from quantity_sold);

-- WINDOW FUNCTION QUESTIONS

-- 71. Rank customers based on the total amount they have spent.
SELECT 
    customer_id,	
    SUM(total_amount) AS total_spent,
    RANK() OVER (ORDER BY SUM(total_amount) DESC) AS spending_rank
FROM sales
GROUP BY customer_id;

-- 72. Rank products based on total quantity sold.
SELECT 
    product_id,
    SUM(quantity_sold) AS total_sold,
    RANK() OVER (ORDER BY SUM(quantity_sold) DESC) AS quantity_rank
FROM sales
GROUP BY product_id;

-- 73. Identify the 3rd highest spending customer.
with Quantity_sold as
(select product_id, sum(quantity_sold)as product_sales
from sales
group by product_id)
select product_id, product_sales
from Quantity_sold 
where product_sales < (select avg(product_sales) from quantity_sold);

-- 74. Identify the 2nd most expensive product.
with product_rank as 
(select product_id, price,
dense_rank()over (order by price desc) as p_rank
from products 
group by product_id)
select price,product_id,p_rank
from product_rank
where p_rank = 2;

-- 75. Show the ranking of products within each category based on price.
select 
product_name,
category,
price,
dense_rank() over(partition by category order by(price) desc) as category_rank
from products;

-- 76. Show the ranking of customers based on the number of purchases they made.
SELECT 
    Customer_ID, 
    COUNT(customer_id) AS Total_Purchases,
    DENSE_RANK() OVER (ORDER BY COUNT(customer_ID) DESC) AS Purchase_Rank
FROM sales
GROUP BY Customer_ID;

-- 77. Show the running total of sales amounts ordered by sale_date
select 
sale_date,
sum(total_amount) over(order by (sale_date)) as running_total
from sales;

-- 78. Show the previous sale amount for each sale ordered by sale_date.
select 
sale_date,
lag(total_amount) over(order by (sale_date) )as previous_amount
from sales;

-- 79. Show the next sale amount for each sale ordered by sale_date.
select 
sale_date,
lead(total_amount) over(order by (sale_date) )as next_amount
from sales;

-- 80. Divide customers into 4 groups based on total spending.
select 
customer_id,
sum(total_amount),
ntile(4) over(order by(sum(total_amount))desc) as spending_groups
from sales
group by customer_id;


-- =====================================================
-- ADVANCED ANALYTICAL QUESTIONS
-- =====================================================

-- 81. Which customers bought products in more than one category?
SELECT 
    s.customer_id,
    p.category
FROM sales s
JOIN products p
    ON s.product_id = p.product_id
GROUP BY s.customer_id,p.category
HAVING COUNT(DISTINCT p.category) > 1;

-- 82. Which customers purchased products within 7 days of registering?
select 
first_name,
c.customer_id,
registration_date,
sale_date
from customers c
join sales s
on s.customer_id=c.customer_id 
where s.sale_date <= c.registration_date + INTERVAL '7 days';

-- 83. Which products have lower stock remaining than the average stock quantity?
with lower_stock as(
select product_id,
stock_quantity
from inventory
group by product_id
)
select stock_quantity,
product_id
from lower_stock 
where stock_quantity<(select avg(stock_quantity)
from lower_stock);


-- 84. Which customers purchased the same product more than once?
SELECT 
    customer_id,
    product_id,
    COUNT(*) AS times_purchased
FROM sales
GROUP BY customer_id, product_id
HAVING COUNT(*) > 1;

-- 85. Which product categories generated the highest total revenue?

select p.category, sum(total_amount) as Total_revenue
from assignment.sales s
inner join assignment.products p
on p.product_id = s.product_id 
group by p.category
order by total_Revenue DESC;

-- 86. Which products are among the top 3 most sold products?
SELECT 
    p.product_id,
    p.product_name,
    SUM(stock_quantity) AS total_units_sold
FROM sales s
JOIN products p
ON s.product_id = p.product_id
GROUP BY p.product_id, p.product_name
ORDER BY total_units_sold DESC
LIMIT 3;

-- 87. Which customers purchased the most expensive product?
SELECT 
    c.customer_id,
    c.first_name,
    c.last_name,
    p.product_name,
    p.price
FROM sales s
JOIN customers c 
ON s.customer_id = c.customer_id
JOIN products p 
ON s.product_id = p.product_id
WHERE p.price = (
    SELECT MAX(price)
    FROM products
);

-- 88. Which products were purchased by the highest number of unique customers?
SELECT 
    p.product_id,
    p.product_name,
    COUNT(DISTINCT s.customer_id) AS unique_customers
FROM sales s
JOIN products p
ON s.product_id = p.product_id
GROUP BY p.product_id, p.product_name
HAVING COUNT(DISTINCT s.customer_id) = (
    SELECT MAX(customer_count)
    FROM (
        SELECT COUNT(DISTINCT customer_id) AS customer_count
        FROM sales
        GROUP BY product_id
    ) t
);


-- 89. Which customers made purchases above the average sale amount?
WITH average_sale AS (
    SELECT AVG(total_amount) AS sale_avg
    FROM sales
)
SELECT 
    customer_id,
    total_amount
FROM sales
WHERE total_amount > (
    SELECT sale_avg
    FROM average_sale
);

-- 90. Which customers purchased more products than the average quantity purchased per customer?
with customer_totals as(
select customer_id, 
sum(quantity_sold) as total_sold
from sales
group by customer_id
)
select 
customer_id,
total_sold
from customer_totals
where total_sold>(select avg(total_sold) from customer_totals);

-- ADVANCED WINDOW + ANALYTICAL PROBLEMS

-- 91. Which customers rank in the top 10% of spending?
WITH CustomerSpending AS (
    SELECT 
        customer_id, 
        SUM(total_amount) AS total_spent
    FROM Sales
    GROUP BY customer_id
),
RankedSpending AS (
    SELECT 
        customer_id, 
        total_spent,
        PERCENT_RANK() OVER (ORDER BY total_spent DESC) AS spend_percentile
    FROM CustomerSpending
)
SELECT * FROM RankedSpending 
WHERE spend_percentile <= 0.10;
    
-- 92. Which products contribute to the top 50% of total revenue?
with product_contribution as 
(select product_id, sum(total_amount) as product_amount
from assignment.sales
group by product_id),
product_ranking as (
    select  product_id, product_amount,
        CUME_DIST() OVER (ORDER BY product_amount DESC) as cumulative_dist
    FROM product_contribution )
select product_id, product_amount,
   ROUND(CAST(cumulative_dist AS numeric) * 100, 2) as cumulative_percent
from product_ranking
where cumulative_dist <= 0.5
order by product_amount desc;

-- 93. Which customers made purchases in consecutive months?
WITH customer_months AS (
    SELECT 
        customer_id,
        DATE_TRUNC('month', sale_date) AS sale_month
    FROM sales
    GROUP BY customer_id, DATE_TRUNC('month', sale_date)
),
ordered_months AS (
    SELECT 
        customer_id,
        sale_month,
        LAG(sale_month) OVER (
            PARTITION BY customer_id 
            ORDER BY sale_month
        ) AS prev_month
    FROM customer_months
)
SELECT DISTINCT customer_id
FROM ordered_months
WHERE sale_month = prev_month + INTERVAL '1 month';

--option 2
SELECT DISTINCT a.customer_id
FROM sales a
JOIN sales b
ON a.customer_id = b.customer_id
AND DATE_TRUNC('month', b.sale_date) = 
    DATE_TRUNC('month', a.sale_date) + INTERVAL '1 month';

-- 94. Which products experienced the largest difference between stock quantity and total quantity sold?
SELECT 
    p.product_id,
    p.product_name,
    p.stock_quantity,
    COALESCE(SUM(stock_quantity), 0) AS total_sold,
    (p.stock_quantity - COALESCE(SUM(stock_quantity), 0)) AS stock_gap
FROM products p
LEFT JOIN sales s
ON p.product_id = s.product_id
GROUP BY p.product_id, p.product_name, p.stock_quantity
ORDER BY stock_gap DESC;

-- 95. Which customers have spending above the average spending of their membership tier?
WITH customer_spending AS (
    SELECT 
        c.customer_id,
        c.first_name,
        c.last_name,
        c.membership_status,
        SUM(s.total_amount) AS total_spent
    FROM customers c
    JOIN sales s
    ON c.customer_id = s.customer_id
    GROUP BY c.customer_id, c.first_name, c.last_name, c.membership_status
),
tier_avg AS (
    SELECT 
        membership_status,
        AVG(total_spent) AS avg_tier_spending
    FROM customer_spending
    GROUP BY membership_status
)
SELECT 
    cs.customer_id,
    cs.first_name,
    cs.last_name,
    cs.membership_status,
    cs.total_spent,
    ta.avg_tier_spending
FROM customer_spending cs
JOIN tier_avg ta
ON cs.membership_status = ta.membership_status
WHERE cs.total_spent > ta.avg_tier_spending
ORDER BY cs.total_spent DESC;

-- 96. Which products have higher sales than the average sales within their category?
WITH product_sales AS (
    SELECT 
        p.product_id,
        p.product_name,
        p.category,
        SUM(stock_quantity) AS total_sold
    FROM products p
    JOIN sales s
    ON p.product_id = s.product_id
    GROUP BY p.product_id, p.product_name, p.category
),
category_avg AS (
    SELECT 
        category,
        AVG(total_sold) AS avg_category_sales
    FROM product_sales
    GROUP BY category
)
SELECT 
    ps.product_id,
    ps.product_name,
    ps.category,
    ps.total_sold,
    ca.avg_category_sales
FROM product_sales ps
JOIN category_avg ca
ON ps.category = ca.category
WHERE ps.total_sold > ca.avg_category_sales
ORDER BY ps.total_sold DESC;


-- 97. Which customer made the largest single purchase relative to their total spending?
WITH customer_totals AS (
    SELECT 
        customer_id,
        SUM(total_amount) AS total_spent
    FROM sales
    GROUP BY customer_id
),
customer_max_purchase AS (
    SELECT 
        customer_id,
        MAX(total_amount) AS max_single_purchase
    FROM sales
    GROUP BY customer_id
),
customer_ratio AS (
    SELECT 
        ct.customer_id,
        ct.total_spent,
        cmp.max_single_purchase,
        (cmp.max_single_purchase / ct.total_spent::decimal) AS purchase_ratio
    FROM customer_totals ct
    JOIN customer_max_purchase cmp
    ON ct.customer_id = cmp.customer_id
)
SELECT 
    c.customer_id,
    c.first_name,
    c.last_name,
    cr.total_spent,
    cr.max_single_purchase,
    cr.purchase_ratio
FROM customer_ratio cr
JOIN customers c
ON c.customer_id = cr.customer_id
ORDER BY cr.purchase_ratio DESC
LIMIT 1;
-- 98. Which products rank among the top 3 most sold products within each category?
WITH product_sales AS (
    SELECT 
        p.product_id,
        p.product_name,
        p.category,
        SUM(stock_quantity) AS total_sold
    FROM products p
    JOIN sales s
    ON p.product_id = s.product_id
    GROUP BY p.product_id, p.product_name, p.category
),
ranked_products AS (
    SELECT 
        product_id,
        product_name,
        category,
        total_sold,
        RANK() OVER (
            PARTITION BY category 
            ORDER BY total_sold DESC
        ) AS rnk
    FROM product_sales
)
SELECT 
    product_id,
    product_name,
    category,
    total_sold,
    rnk
FROM ranked_products
WHERE rnk <= 3
ORDER BY category, rnk;

-- 99. Which customers are tied for the highest total spending?
WITH customer_spending AS (
    SELECT 
        c.customer_id,
        c.first_name,
        c.last_name,
        SUM(s.total_amount) AS total_spent
    FROM customers c
    JOIN sales s
    ON c.customer_id = s.customer_id
    GROUP BY c.customer_id, c.first_name, c.last_name
),
ranked_customers AS (
    SELECT 
        *,
        RANK() OVER (ORDER BY total_spent DESC) AS rnk
    FROM customer_spending
)
SELECT 
    customer_id,
    first_name,
    last_name,
    total_spent
FROM ranked_customers
WHERE rnk = 1;
-- 100. Which products generated sales every year present in the dataset?
WITH years AS (
    SELECT DISTINCT EXTRACT(YEAR FROM sale_date) AS yr
    FROM sales
),
product_years AS (
    SELECT 
        s.product_id,
        EXTRACT(YEAR FROM s.sale_date) AS yr
    FROM sales s
    GROUP BY s.product_id, EXTRACT(YEAR FROM s.sale_date)
),
product_year_count AS (
    SELECT 
        product_id,
        COUNT(DISTINCT yr) AS years_active
    FROM product_years
    GROUP BY product_id
),
total_years AS (
    SELECT COUNT(*) AS total_years
    FROM years
)
SELECT 
    p.product_id,
    p.product_name
FROM product_year_count pyc
JOIN total_years ty
ON pyc.years_active = ty.total_years
JOIN products p
ON p.product_id = pyc.product_id;
-- 101. Update the products table to assign a price_category as Expensive (price > 1000), Moderate (price between 500 and 1000), or Affordable (price < 500) using CASE WHEN
alter table  products
add column price_category text;
update products
set price_category=case
	when (price>1000) then 'Expensive'
	when (price between 500 and 1000) then 'Moderate'
	else 'Affordable'
end
;

-- 102. Update the customers table to assign a customer_level based on total spending as VIP (>20000), Regular (10000–20000), or New (<10000) using CASE WHEN
alter table sales
add column customer_level text;
update sales 
set customer_level=case
	when total_amount>20000 then 'VIP'
	when total_amount between 10000 and 20000 then 'Regular'
	else 'New'
end;

-- 103. Update the products table to assign a stock_status as Low Stock or Sufficient Stock based on stock_quantity using CASE WHEN
alter table products
add column stock_status text;
UPDATE products
SET stock_status =
CASE
    WHEN stock_quantity < 50 THEN 'Low Stock'
    ELSE 'Sufficient Stock'
END;

-- 104. Display each customer’s registration year from the registration_date
select
first_name ||' '|| last_name,
extract(year from registration_date)::text as registration_year
from customers
order by registration_year;

-- 105. Count how many customers registered in each year
select 
count(*) as total_customers,
 EXTRACT(YEAR FROM registration_date)::text AS registration_year
from customers
group by registration_date;

-- 106. Find the total sales amount for each month
SELECT 
    DATE_TRUNC('month', sale_date) AS month,
    SUM(total_amount) AS total_sales
FROM sales
GROUP BY DATE_TRUNC('month', sale_date)
ORDER BY month;

--OPTION 2
SELECT 
    EXTRACT(YEAR FROM sale_date)::text AS sale_year,
    EXTRACT(MONTH FROM sale_date)::text AS sale_month,
    SUM(total_amount) AS monthly_revenue
FROM Sales
GROUP BY 1, 2
ORDER BY 1, 2;

-- 107. Show all sales made in the year 2023
select 
SUM(TOTAL_amount)
from sales s where to_char(sale_date,'YYYY')='2023';

-- 108. Find the total sales amount for each year
select
extract(year from sale_date) ::text as sales_year,
sum(total_amount)as total_sales
from sales
group by EXTRACT(YEAR FROM sale_date);

-- 109. Calculate the number of days each customer has been registered (from registration_date to current date)
select 
customer_id,
concat(first_name,' ',last_name),
(current_date - registration_date)::text as no_of_days
from customers;

-- 110. Display each sale and extract the year and month from the sale date
select 
product_id,
sale_date,
extract(year from sale_date)::text as sale_year,
extract(month from sale_date)::text as sale_month
from sales;

-- 111. Display each customer’s email and replace null values with 'No Email Provided' using COALESCE
SELECT 
    email,
    COALESCE(email, 'No Email Provided') AS email_status
FROM customers;

-- 112. Find customers who do not have an email address
select 
concat(first_name,' ',last_name) as full_name,
email
from customers
where email is null
or trim(email)=' ';

-- 113. Find products that have never been sold using a subquery
SELECT 
    product_id,
    product_name
FROM products
WHERE product_id NOT IN (
    SELECT product_id
    FROM sales
);

-- 114. Find customers who have not made any purchases using a subquery
select 
customer_id,
first_name ||' '|| last_name
from customers 
where customer_id not in(
select customer_id
from sales
);


-- 115. Update the products table to assign a price_category (Premium, Standard, Budget) based on price using CASE WHEN
UPDATE products
SET price_category=CASE
    WHEN price >= 1000 THEN 'Premium'
    WHEN price >= 500 THEN 'Standard'
    ELSE 'Budget'
END;

-- 116. Create a PostgreSQL function/procedure that takes a minimum revenue as input and returns all products whose total sales exceed that value
CREATE OR REPLACE FUNCTION get_products_by_revenue(min_revenue NUMERIC)
RETURNS TABLE (
    product_id INT,
    product_name TEXT,
    total_revenue NUMERIC
)
AS $$
BEGIN
    RETURN QUERY
    SELECT 
        p.product_id,
        p.product_name,
        SUM(s.total_amount) AS total_revenue
    FROM products p
    JOIN sales s
    ON p.product_id = s.product_id
    GROUP BY p.product_id, p.product_name
    HAVING SUM(s.total_amount) > min_revenue
    ORDER BY total_revenue DESC;
END;
$$ LANGUAGE plpgsql;

-- 117. CREATE OR REPLACE FUNCTION get_customer_total_spent(p_customer_id INT)
CREATE OR REPLACE FUNCTION get_customer_total_spent(p_customer_id INT)
RETURNS NUMERIC
AS $$
DECLARE
    total_spent NUMERIC;
BEGIN
    SELECT COALESCE(SUM(total_amount), 0)
    INTO total_spent
    FROM sales
    WHERE customer_id = p_customer_id;

    RETURN total_spent;
END;
$$ LANGUAGE plpgsql;

-- 118. Create a PostgreSQL function/procedure that takes a start_date and end_date as input and returns the number of orders made within that date range
CREATE OR REPLACE FUNCTION count_orders_between_dates(
    start_date DATE,
    end_date DATE
)
RETURNS INTEGER
LANGUAGE plpgsql
AS $$
DECLARE
    order_count INTEGER;
BEGIN
    SELECT COUNT(*)
    INTO order_count
    FROM orders
    WHERE order_date BETWEEN start_date AND end_date;

    RETURN order_count;
END;
$$;
-- 119. Create a PostgreSQL stored procedure that inserts a new record into the sales table 
CREATE OR REPLACE PROCEDURE add_sale(
    p_product_id INT,
    p_customer_id INT,
    p_total_amount NUMERIC
)
LANGUAGE plpgsql
AS $$
BEGIN
    INSERT INTO sales (product_id, customer_id, total_amount)
    VALUES (p_product_id, p_customer_id, p_total_amount);
END;
$$;

CALL add_sale(101, 5, 250.75);
-- 120. Create an index on the product_id column in the sales table to improve join performance
CREATE INDEX idx_sales_product_id
ON sales (product_id);

-- 121. CREATE INDEX idx_customers_registration_date
CREATE INDEX idx_customers_registration_date
ON customers (registration_date);

-- 122. Write a transaction that inserts a new sale using sale_id, customer_id, product_id, quantity_sold, sale_date, and total_amount, then updates the corresponding product stock_quantity, ensuring both operations succeed or fail together
BEGIN;

-- 1. Insert new sale
INSERT INTO sales (
    sale_id,
    customer_id,
    product_id,
    quantity,
    sale_date,
    total_amount
)
VALUES (
    1001,
    10,
    5,
    3,
    CURRENT_DATE,
    1500
);

-- 2. Update product stock
UPDATE products
SET stock_quantity = stock_quantity - 3
WHERE product_id = 5;

-- 3. Commit transaction if everything is successful
COMMIT;
-- 123. Write a transaction that updates a customer’s email and rolls back the change if the email is invalid
BEGIN;

-- Step 1: Try updating the email
-- 1. Add a CHECK constraint to enforce valid email format
ALTER TABLE customers
ADD CONSTRAINT chk_customers_email_format
CHECK (
    email ~ '^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,}$'
);

-- 2. Now safely update a customer's email
UPDATE customers
SET email = 'newemail@example.com'
WHERE customer_id = 10;

-- Step 3: Commit only if validation passes
COMMIT;

-- Step 1: Update email
UPDATE customers
SET email = 'newemailexample.com'
WHERE customer_id = 1;

-- Step 2: Validate email
DO $$
BEGIN
    IF (SELECT email FROM customers WHERE customer_id = 1) NOT LIKE '%@%' THEN
        RAISE NOTICE 'Invalid email detected. Rolling back...';
        ROLLBACK;
    ELSE
        COMMIT;
    END IF;
END $$;

--OPTION 2
BEGIN;

UPDATE customers
SET email = 'newemailexample.com'
WHERE customer_id = 1;

-- If invalid
ROLLBACK;

-- If valid
COMMIT;
-- 124. Create a view that shows total revenue per product
CREATE VIEW product_revenue AS
SELECT 
    p.product_id,
    p.product_name,
    SUM(s.total_amount) AS total_revenue
FROM sales s
JOIN products p
    ON s.product_id = p.product_id
GROUP BY p.product_id, p.product_name;

-- 125. Create a view that shows each customer and their total spending

CREATE VIEW customer_spending AS
SELECT 
    c.customer_id,
    c.first_name,
    SUM(s.total_amount) AS total_spending
FROM customers c 
JOIN sales s
    ON c.customer_id = s.customer_id
GROUP by c.customer_id, c.first_name;

-- 126. Use UNION to combine a list of all customer first names and product names into a single column
SELECT first_name AS name
FROM customers

UNION

SELECT product_name AS name
FROM products;

-- 127. Use INTERSECT to find values that appear in both a list of customer IDs and a list of customer IDs who made purchases
SELECT customer_id
FROM customers

INTERSECT

SELECT customer_id
FROM sales;

-- 128. Perform an anti-join to find products that have never been sold using LEFT JOIN
SELECT 
    p.product_id,
    p.product_name
FROM products p
LEFT JOIN sales s
    ON p.product_id = s.product_id
WHERE s.product_id IS NULL;

-- 129. Use NOT EXISTS to find customers who have not made any purchases
select 
customer_id,
concat(first_name,' ',last_name)
from customers
where not exists(
select 1
from sales
where c.customer_id=s.customer_id
);
-- 130. Cast the price column to an integer and display it alongside the original price
select 
price,
price::integer as price_integer
from sales;

-- 131. Convert registration_date to text format and display it in 'YYYY-MM' format
SELECT 
    registration_date,
    TO_CHAR(registration_date, 'YYYY-MM') AS registration_year_month
FROM customers;

-- 132. The following query returns an error due to improper GROUP BY usage. Identify and fix the issue
-- SELECT product_id, product_name, SUM(total_amount) FROM sales GROUP BY product_id;
SELECT 
s.product_id, 
p.product_name, 
SUM(total_amount) 
FROM sales s
join products p
on s.product_id=p.product_id
GROUP BY s.product_id,product_name;

-- 133. The following query incorrectly filters aggregated results using WHERE. Identify and correct it
-- SELECT product_id, SUM(total_amount) FROM sales WHERE SUM(total_amount) > 1000 GROUP BY product_id;
SELECT 
product_id, 
SUM(total_amount) 
FROM sales 
GROUP BY product_id
HAVING SUM(total_amount) > 1000 ;

-- 134. The following query returns incorrect results because it uses the wrong join condition. Identify and fix it
-- SELECT *
-- FROM assignment.sales s
-- JOIN assignment.products p
--   ON s.customer_id = p.product_id;
SELECT *
FROM sales s
JOIN products p
ON s.product_id = p.product_id;

-- 135. Replace NULL email values with 'No Email Provided' using COALESCE if any
SELECT 
    customer_id,
    COALESCE(email, 'No Email Provided') AS email
FROM customers;

-- 136. Trim any leading or trailing spaces from customer first names if any
select 
trim(first_name) as  trimmed_first_name
from customers;

-- 137. Convert all customer emails to lowercase if any
select 
lower(email)
from customers;
select *from customers;

-- 138. Replace empty strings in phone numbers with NULL if any
update customers
set phone_number = null
where phone_number=' ';

-- 139. Extract the year from registration_date and handle any NULL dates gracefully if any
select 
registration_date,
case 
	when registration_date is null then null
	else to_char(registration_date,'YYYY')
	end
from customers;


