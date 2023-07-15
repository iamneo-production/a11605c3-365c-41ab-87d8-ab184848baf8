desc sales;

-- first question

select distinct(CUSTOMERNAME) from sales where country = 'USA';

-- second question

select count(*) from sales where (QUANTITYORDERED*PRICEEACH) > 5000;

-- third question

select count(distinct(ORDERNUMBER)) from sales where year_id = 2003;

-- fourth question

select sum(SALES) from sales where YEAR_ID = 2005;

-- fifth question

select sum(SALES),year_id from sales group by YEAR_ID;
