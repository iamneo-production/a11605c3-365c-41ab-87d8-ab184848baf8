create index idx_cnty_cutmr on sales(country,customername);


/*1)----Total customer list who ordered from USA----*/
select distinct(customername)
from SALES
where country='USA';
/*-----Performance result------*/
explain plan for select distinct(customername)
from SALES
where country='USA';
select * from table(dbms_xplan.display);
