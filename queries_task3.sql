##Superstore Dataset Analysis
##Author: Najma Akmalina Nima

# preview dataset
SELECT * FROM superstore;

#to know how many rows in dataset
SELECT COUNT(*) FROM superstore;

#to get top sales in furniture category
SELECT * FROM superstore WHERE Category = "Furniture" ORDER BY Sales DESC;

#to know sum of sales in dataset
SELECT SUM(Sales) FROM superstore;

# to know sum of sales each category in dataset 
SELECT Category, SUM(Sales) FROM superstore GROUP BY Category;

#to know averaging profit in dataset
SELECT AVG(Profit) FROM superstore;

#to show peak average profit each city in dataset
SELECT City, AVG(Profit) AS avg_profit FROM superstore GROUP BY City ORDER BY avg_profit DESC;

#to compare between average profit and sales each city in Dataset
SELECT City, AVG(Profit) AS avg_profit, Sales FROM superstore GROUP BY City ORDER BY avg_profit DESC;

# to get sales in city greater 100
SELECT City, Sales FROM superstore WHERE Sales > 100 GROUP BY City ORDER BY Sales DESC;

#to get sales in november 2016 per month
SELECT STR_TO_DATE(`Order Date`, '%m/%d/%Y') AS order_date, SUM(Sales) AS sales FROM superstore WHERE STR_TO_DATE(`Order Date`, '%m/%d/%Y') BETWEEN '2016-11-01' AND '2016-11-30' GROUP BY order_date ORDER BY order_date;

# to get customer name from pattern search
SELECT * FROM superstore WHERE `Customer Name` LIKE '%Claire%';