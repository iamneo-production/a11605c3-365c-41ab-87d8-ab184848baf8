set timing on;

select sum(1) as customer_list from sales where country='USA';

select sum(1) from sales where year_id='2003';

select distinct sum(1) from sales where sales>5000;

select sum(sales) from sales where year_id=2005;

<<<<<<< HEAD
select year_id,sum(sales) from sales group by year_id order by year_id;

=======
select year_id,sum(sales) from sales group by year_id;
>>>>>>> ac40610b2672f352e1a2e538c7b55e30947acd21
