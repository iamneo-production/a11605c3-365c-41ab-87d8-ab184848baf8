--/*1st question*/
select DISTINCT(customername) from sales
where country='USA';

--/*2nd question*/
select distinct(count(customername)) from sales 
where sales>5000;

--/*3rd question*/
SELECT COUNT(*) AS total_products_ordered
FROM sales 
WHERE year_id = 2003;

--/* 4rth question*/
SELECT SUM(SALES) AS total_sale_price
FROM sales
WHERE year_id = 2005;

--/*5th question*/
SELECT year_id AS sales_year, SUM(SALES) AS total_sales_price
FROM sales
GROUP BY YEAR_ID;