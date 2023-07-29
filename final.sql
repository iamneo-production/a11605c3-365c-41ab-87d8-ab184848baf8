/*1st Q - Total customer list who orderes from usa*/
select DISTINCT(CUSTOMERNAME)
from SALES
where COUNTRY='USA';

/*2nd Q - count no. of customers who purchased>5000*/
select distinct(count(CUSTOMERNAME)) from SALES
where SALES>5000;

/*3rd Q - how many products ordered in year 2003*/
select sum(QUANTITYORDERED) from sales
where YEAR_ID=2003;

/*4th Q - total sale price in year 2005*/
select sum(QUANTITYORDERED*PRICEEACH) as TotalPrice from sales
where YEAR_ID=2005;

/*5th Q - total sale price each year*/
select YEAR_ID, sum(QUANTITYORDERED*PRICEEACH) from sales
group by year_id
order by year_id;