
/*1) total list of customers ordered from USA*/
create index idx_cnty on sales(country,customername);
select customername as List_of_customers
from sales
where country='USA'
group by customername;

/*2) Count the customers who have made purchases exceeding 5000*/
create index idx_sales on sales(sales,CUSTOMERNAME);
select count(*) as sales_above_5000 from (select customername
from sales
where sales>5000
group by customername);

/*3) total products orderd in the year 2003*/
create index idx_year on sales(year_id,productcode,sales);
select count(*) as Total_Products from( select productcode
from sales
where year_id=2003
group by productcode);

/*4) find the total price in the year 2005*/
select sum(sales) as Total_sales
from sales
where year_id=2005;

/*5) find the total sales price each year*/
select year_id as Year,sum(sales) as Sales
from sales
group by year_id;
