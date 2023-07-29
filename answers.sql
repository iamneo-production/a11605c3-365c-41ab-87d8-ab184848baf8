desc sales;

-- first question

select distinct(CUSTOMERNAME) from sales where country = 'USA';

-- second question

select count(distinct(CUSTOMERNAME)) from sales where sales > 5000;


-- third question

select count(distinct(productcode)) from sales where year_id = 2003;

-- fourth question

select sum(SALES) from sales where YEAR_ID = 2005;

-- fifth question

select year_id as Year,sum(sales) as Total_sales from sales group by YEAR_ID;
