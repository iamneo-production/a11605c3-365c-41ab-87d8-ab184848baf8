/*5th question*/
select YEAR_ID, sum(sales) from sales
group by year_id
order by year_id;