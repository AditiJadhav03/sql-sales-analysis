------------------------------------------------------------------------->
 RETAIL SALES SQL ANALYSIS
 Database: retail.db
 Table: sales
 ------------------------------------------------------------------------->

 1. View complete dataset
SELECT *
FROM sales;

 2. Check important columns
SELECT "Order Date", "Product Name", Category, "Customer Name", Sales
FROM sales;

 3. Total revenue generated
SELECT SUM(Sales) AS Total_Revenue
FROM sales;

 4. Top 10 selling products
SELECT "Product Name",
SUM(Sales) AS Total_Sales
FROM sales
GROUP BY "Product Name"
ORDER BY Total_Sales DESC
LIMIT 10;

 5. Low performing products
SELECT "Product Name",
SUM(Sales) AS Total_Sales
FROM sales
GROUP BY "Product Name"
ORDER BY Total_Sales ASC
LIMIT 10;

 6. Category-wise revenue
SELECT Category,
SUM(Sales) AS Revenue
FROM sales
GROUP BY Category
ORDER BY Revenue DESC;

 7. Top customers
SELECT "Customer Name",
SUM(Sales) AS Total_Purchase
FROM sales
GROUP BY "Customer Name"
ORDER BY Total_Purchase DESC
LIMIT 5;

8. Shipping mode preference
SELECT "Ship Mode",
COUNT(*) AS Total_Orders
FROM sales
GROUP BY "Ship Mode"
ORDER BY Total_Orders DESC;

9. Regional performance
SELECT Region,
SUM(Sales) AS Total_Sales
FROM sales
GROUP BY Region
ORDER BY Total_Sales DESC;

 10. Monthly sales trend (seasonality)
SELECT
substr("Order Date", 4,2) AS Month_Number,
SUM(Sales) AS Monthly_Sales
FROM sales
GROUP BY Month_Number
ORDER BY Month_Number;
