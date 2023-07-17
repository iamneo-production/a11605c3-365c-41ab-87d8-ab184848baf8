
/*1) total list of customers ordered from USA*/
select distinct(customername)
from sales
where country='USA';

/*2) Count the customers who have made purchases exceeding 5000*/
select count(distinct(customername))
from sales
where sales>5000;

/*3) total products orderd in the year 2003*/
select count(productcode)
from sales
where year_id=2003
group by productcode;

/*4) find the total price in the year 2005*/
select sum(sales)
from sales
where year_id=2005;

/*5) find the total sales price each year*/
select year_id as Year,sum(sales) as Sales
from sales
group by year_id;
