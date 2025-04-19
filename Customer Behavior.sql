---QUESTIONS---
	
	---Which customers have placed the highest number of orders---
		
		SELECT customername,
			COUNT(DISTINCT ordernumber) AS orders
		FROM [Auto Sales data]
		GROUP BY customername
		ORDER BY orders DESC

	---	b. What is the average DAYS_SINCE_LASTORDER for each customer---

		SELECT customername, 
			AVG(days_since_lastorder) AS days_since_last_order
		FROM [Auto Sales data]
		GROUP BY customername
		ORDER BY days_since_last_order DESC

	---c. Which country has the highest total sales---

		SELECT country,
			ROUND(SUM(sales),2) AS total_sales
		FROM [Auto Sales data]
		GROUP BY country
		ORDER BY total_sales DESC

	---d. What is the total sales for each product line across different countries?---

		SELECT country, productline,
			ROUND(SUM (sales),2) AS total_sales,
			ROUND(SUM (quantityordered), 2) AS total_quantity
		FROM [Auto Sales data]
		GROUP BY country, productline
		ORDER BY country, total_sales DESC