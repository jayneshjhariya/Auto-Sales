---QUESTIONS---

---a. How have total sales trended month-over-month or year-over-year---

	SELECT 
		YEAR(orderdate) AS order_year,
		MONTH(orderdate) AS order_month,
		ROUND(SUM(sales), 2) AS total_sales
	FROM [Auto Sales data]
	GROUP BY YEAR(orderdate), MONTH(orderdate)
	ORDER BY order_year, order_month

---b. What are the peak months for ordering each PRODUCTLINE---

	SELECT productline,
		MONTH(orderdate) AS order_month,
		ROUND(SUM(quantityordered), 2) AS total_quantity
	FROM [Auto Sales data]
	GROUP BY productline, MONTH(orderdate)
	ORDER BY productline, total_quantity DESC