desc sales;

-- first question
create index idx_cnty on sales(country,customername);
select distinct(CUSTOMERNAME) from sales where country = 'USA';

-- second question
create index idx_sales on sales(sales,customername);
select count(distinct(CUSTOMERNAME)) from sales where sales > 5000;


-- third question
create index idx_year on sales(year_id,productcode,sales);
select count(distinct(productcode)) from sales where year_id = 2003;

-- fourth question

select sum(SALES) from sales where YEAR_ID = 2005;

-- fifth question

select year_id as Year,sum(sales) as Total_sales from sales group by YEAR_ID;
