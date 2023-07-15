/*5th question*/
select YEAR_ID, sum(PRICEEACH) from sales
group by year_id
order by year_id;