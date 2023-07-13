
/*fist question*/
select distinct(customername)
from sales
where country='USA';

/*2 question*/
select count(distinct(customername))
from sales
where sales>5000;