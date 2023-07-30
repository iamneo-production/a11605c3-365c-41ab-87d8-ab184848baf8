 select * from sales;
 -- 1.Query to find total customers list who ordered from the country USA--

     SELECT DISTINCT(CUSTOMERNAME) FROM SALES
      WHERE COUNTRY='USA'; 

 
 -- 2.Query to count the number of customers who made purchases exceeding 5000--

     SELECT DISTINCT(COUNT(CUSTOMERNAME)) FROM SALES
     WHERE SALES>5000;


 --3.query to find how many products ordered in 2003--

     SELECT COUNT(*) AS TOTAL_PRODUCTS_ORDERED FROM SALES
     WHERE YEAR_ID=2003;


 --4.query to find total saleprice in 2005--

     SELECT SUM(SALES) FROM SALES
     WHERE YEAR_ID=2005;


 --5.query to find the total saleprice each year--

     SELECT YEAR_ID,SUM(PRICEEACH)  FROM SALES 
     GROUP BY YEAR_ID
     ORDER BY YEAR_ID;