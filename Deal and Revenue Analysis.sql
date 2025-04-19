---QUESTIONS---
	
	---a. What is the average SALES per DEALSIZE category---

		SELECT dealsize,
			ROUND(AVG(sales),2) AS avg_sales
		FROM [Auto Sales data]
		GROUP BY dealsize
		ORDER BY dealsize

	---b. How many orders fall under each deal size category---

		SELECT dealsize,
			COUNT(DISTINCT ordernumber) AS orders
		FROM [Auto Sales data]
		GROUP BY dealsize
		ORDER BY orders DESC

	---c. Which deal size generates the highest average revenue per order---
		
		SELECT dealsize,
			ROUND(SUM(sales) / COUNT(DISTINCT ordernumber),2) AS avg_rev_per_ord
		FROM [Auto Sales data]
		GROUP BY dealsize
		ORDER BY avg_rev_per_ord DESC

	---d. What is the distribution of deal sizes across product lines---

		SELECT dealsize, productline,
			COUNT(ordernumber) AS total_orders
		FROM [Auto Sales data]
		GROUP BY productline, dealsize
		ORDER BY dealsize, total_orders DESC