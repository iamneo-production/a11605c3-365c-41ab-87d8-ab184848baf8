
-- CREATE INDEX IDX_COUNTRY ON SALES(COUNTRY);

-- Question 1
SELECT DISTINCT(CUSTOMERNAME) FROM SALES
WHERE COUNTRY = 'USA';

-- Question 2

SELECT COUNT(DISTINCT CUSTOMERNAME)
FROM SALES
WHERE SALES > 5000;

-- Question 3

SELECT COUNT(*) AS TOTAL_ORDERED_PRODUCTS_2003
FROM SALES
WHERE EXTRACT(YEAR FROM TO_DATE(ORDERDATE, 'YYYY-MM-DD')) = 2003;


-- Question 4

SELECT SUM(SALES) AS TOTAL_SALES_PRICE
FROM SALES
WHERE YEAR_ID = 2005;

-- Question 5

SELECT YEAR_ID, SUM(SALES) AS TOTAL_SALES_PRICE
FROM SALES
GROUP BY YEAR_ID
ORDER BY YEAR_ID;

