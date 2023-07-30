select * from sales;
   
--1).Query to find total list of customers ordered from USA

select distinct(customername) from sales where country='USA';

--2).Query to count the number of customers who have made purchases exceeding 5000

select count(distinct(customername)) as total_customer from sales 
where sales>5000;

--3).Query to find how many products are ordered in the year 2003

select count(distinct(productcode)) as tota_products from sales 
where year_id=2003;

--4).Query to find total sale price in the year 2005

select sum(sales) as total_sale_price from sales where year_id=2005;

--5).Query to find total sale price each year

select year_id,sum(sales) as total_sales from sales
group by year_id
order by year_id;