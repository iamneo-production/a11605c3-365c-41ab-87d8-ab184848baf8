
/*1) total list of customers ordered from USA*/

select distinct(customername)
from sales
where country='USA';
/*3) total products orderd in the year 2003*/

select count(distinct(productcode))
from sales
where year_id=2003
group by productcode;

/*4) find the total price in the year 2005*/
select sum(sales)
from sales
where year_id=2005;
