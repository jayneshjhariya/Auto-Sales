SELECT * FROM [Auto Sales data]

--- QUESTIONS---

	---a. What is the total sales revenue for each PRODUCTLINE---
		
		SELECT productline, ROUND(SUM(sales) ,2) AS total_sales
		FROM [Auto Sales data]
		GROUP BY PRODUCTLINE

	---b. Which PRODUCTCODE has the highest total sales (SALES)---
		
		SELECT TOP 1 productcode, COUNT(sales) AS total_sales
		FROM [Auto Sales data]
		GROUP BY PRODUCTCODE

	---c. What is the average PRICEEACH and QUANTITYORDERED per PRODUCTLINE---

		SELECT productline, 
			   ROUND(AVG(priceeach),2) AS avg_price, 
			   ROUND(AVG(quantityordered), 2) AS avg_quantity
		FROM [Auto Sales data]
		GROUP BY productline

	---What is the total number of orders and total sales for 'Motorcycles' vs 'Classic Cars'
		
		SELECT productline,
			   COUNT(DISTINCT ordernumber) AS total_orders, 
			   ROUND(SUM(sales), 2) AS total_sales
		FROM [auto sales data]
		WHERE productline IN ('motorcycles', 'classic cars')
		GROUP BY productline

