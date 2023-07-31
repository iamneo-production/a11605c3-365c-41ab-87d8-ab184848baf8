---SALES---

--1.Write a sql query to find the total customers list who are all ordered from the USA?

create index idx_one on sales(country);

select distinct(customername)
from sales
where country='USA';



--2.Write a sql query to count  the number of customers who have made purchases exceeding 5000?

create index idx_two on sales(customername);

select count(distinct customername) as totalcustomers
from sales
where sales>5000;


--3.Write a sql query to find how many products are ordered in the year 2003?

create index idx_three on sales(year_id,productcode);

select count(distinct productcode) as totalproducts
from sales
where year_id=2003;


--4.Write a sql query to find the total sale price in the year 2005?

select sum(sales) as totalsalesprice
from sales
where year_id=2005;


5.Write a sql query to find the total sale price each year?

select year_id as year,sum(sales) as totalsalesprice
from sales
group by year_id;
