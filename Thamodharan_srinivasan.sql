----sales history--------

---------------------------
select country from sales;
select * from user_indexes where table_name='sales';


---------first question---------

create index ind_1 on sales(country);
select distinct(customername)
from sales
where country='USA';

----------second question--------

select count(distinct customername) as totalcustomers
from sales
where sales>5000;

------------third question--------
create index ind_2 on sales(year_id);


select count(distinct productcode) as totalproducts
from sales
where year_id=2003;


------------fourth question--------
select sum(sales) as totalsalesprice
from sales
where year_id=2005;




-----------fifth question-----
select year_id,sum(sales) as totalsalesprice
from sales
group by year_id;
