select country from sales;


---------first question---------
select distinct(customername)
from sales
where country='USA';

----------second question--------
select count(distinct customername) as totalcustomers
from sales
where sales>5000;

------------third question--------
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
