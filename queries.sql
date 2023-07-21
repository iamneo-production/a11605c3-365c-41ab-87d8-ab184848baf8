select country from sales;
select * from user_indexes where table_name='sales';


---------first question---------

create index ind_1 on sales(country);
select distinct(customername)
from sales
where country='USA';


create index ind_1 on sales(country);
explain plan for 
select distinct(customername)
from sales
where country='USA';
select * from table(dbms_xplan.display);

----------second question--------

select count(distinct customername) as totalcustomers
from sales
where sales>5000;

------------third question--------
create index ind_2 on sales(year_id);


explain plan for 

select count(distinct productcode) as totalproducts
from sales
where year_id=2003;
select * from table(dbms_xplan.display);


------------fourth question--------
explain plan for 
select sum(sales) as totalsalesprice
from sales
where year_id=2005;
select * from table(dbms_xplan.display);



-----------fifth question-----
select year_id,sum(sales) as totalsalesprice
from sales
group by year_id;
