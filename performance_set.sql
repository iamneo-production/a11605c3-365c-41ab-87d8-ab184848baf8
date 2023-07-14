
/*1) total list of customers ordered from USA*/
create index idx_cnty on sales(country,customername);
select customername
from sales
where country='USA'
group by customername;

/*3) total products orderd in the year 2003*/
create index idx_product on sales(year_id,PRODUCTCODE,sales);
select count(productcode)
from sales
where year_id=2003
group by productcode;

/*4) find the total price in the year 2005*/
select sum(sales)
from sales
where year_id=2005;
