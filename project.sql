/*1st question*/
select DISTINCT(customername) from sales
where country='USA';

/*2nd question*/
select distinct(count(customername)) from sales 
where sales>5000;

/*3rd question*/
