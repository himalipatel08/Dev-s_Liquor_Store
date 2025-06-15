CREATE SCHEMA Liquor_store
USE liquor_store
SHOW tables

SELECT *
FROM cleaned_dataset

#Top 5 Brands by Revenue
SELECT Category, Brand, ROUND(SUM(Net_Amount),2) AS Total_revenue
FROM cleaned_dataset
GROUP BY Category, Brand
ORDER BY Category, ROUND(SUM(Net_Amount),2) DESC
LIMIT 5;

#Bottom 3 Brands by Revenue
SELECT Category, Brand, ROUND(SUM(Net_Amount),2) AS Total_revenue
FROM cleaned_dataset
GROUP BY Category, Brand
ORDER BY Category, Total_revenue ASC
LIMIT 3;

#Average Spent by Gender
SELECT Customer_Gender, ROUND(AVG(Net_Amount),2) AS Avg_Spend
FROM cleaned_dataset
GROUP BY Customer_Gender
ORDER BY Avg_Spend DESC;

#Revenue by Age Group
SELECT Age_Group, ROUND(SUM(Net_Amount),2) AS Total_revenue
FROM cleaned_dataset
GROUP BY Age_Group
Order by Age_Group DESC;

#Revenue by Day of Week (Weekdays vs Weekends)
SELECT Is_weekend, ROUND(SUM(Net_Amount),2) AS Total_revenue
FROM cleaned_dataset
GROUP BY Is_Weekend

#Monthly Revenue Trend
SELECT Month, ROUND(SUM(Net_Amount),2) AS Monthly_revenue
FROM cleaned_dataset
GROUP BY Month
ORDER BY FIELD(Month, 'January','February','March','April','May','June','July','August','September','October','November','December');

#Revenue during Holiday Months
SELECT Is_Holiday_Month, ROUND(SUM(Net_Amount),2) AS Total_Revenue
FROM cleaned_dataset
GROUP BY Is_Holiday_Month;

#Top 5 Brands by Quantity Sold
SELECT Category,Brand, SUM(Quantity) AS Total_units
FROM cleaned_dataset
GROUP BY Category,Brand
ORDER BY Total_units DESC
LIMIT 5;

#Top Brand per Category
SELECT *
FROM (SELECT Category, Brand, ROUND(SUM(Net_Amount),2) AS Total_revenue, DENSE_RANK()OVER(PARTITION BY Category ORDER BY ROUND(SUM(Net_Amount),2) DESC) AS rnk
FROM cleaned_dataset
GROUP BY Category,Brand) ranked
WHERE rnk=1
ORDER BY Total_revenue DESC

#Brands with Above-Average Revenue
SELECT Brand,Category, ROUND(SUM(Net_Amount),2) AS Total_revenue
FROM cleaned_dataset
GROUP BY Brand, Category
HAVING SUM(Net_Amount) > (SELECT AVG(Net_Amount) FROM cleaned_dataset);

#Weekend vs Weekday Revenue
SELECT CASE WHEN Is_Weekend='True' THEN 'Weekend' ELSE 'Weekday' END AS Day_type, ROUND(SUM(Net_Amount),2) AS Total_revenue
FROM cleaned_dataset
GROUP BY CASE WHEN Is_Weekend='True' THEN 'Weekend' ELSE 'Weekday' END;

#Customer Segmentation Revenue by Payment Method
SELECT Age_group, Payment_Method, ROUND(SUM(Net_Amount),2) AS Revenue
FROM cleaned_dataset
GROUP BY Age_group, Payment_Method
ORDER BY Age_group, Revenue DESC;

#Revenue lost to Discounts
SELECT Category, ROUND(SUM(Gross_Amount),2) AS Gross_sales, ROUND(SUM(Net_Amount),2) AS Net_Sales, ROUND(SUM(Gross_Amount- Net_Amount),2) AS Discount_loss,ROUND((SUM(Gross_Amount-Net_Amount)/SUM(Gross_Amount))*100,2) AS Discount_percentage
FROM cleaned_dataset
GROUP BY Category
ORDER BY Discount_loss DESC;

#Customer Count by Age
SELECT Age_group, COUNT(DISTINCT Transaction_id) AS Customer_count
FROM cleaned_dataset
GROUP BY Age_group
ORDER BY Age_group;

#Average Revenue per Transaction Over Months
SELECT Month, ROUND(SUM(Net_Amount)/COUNT(DISTINCT Transaction_id),2) AS Avg_Revenue_per_Transaction
FROM cleaned_dataset
GROUP BY Month
ORDER BY FIELD(Month,  'January','February','March','April','May','June','July','August','September','October','November','December');

#Popularilty in Category in Holiday Months
SELECT Category, ROUND(SUM(Net_Amount),2) AS Holiday_Revenue
FROM cleaned_dataset
WHERE Is_Holiday_Month=1
GROUP BY Category
ORDER BY Holiday_revenue DESC;

#Customer Age category influence on Quantity
SELECT Age_group, CASE WHEN AVG(Quantity)>=2 THEN 'High Volume Buyer' ELSE 'Low Volume Buyer' END AS Buyer_type
FROM cleaned_dataset
GROUP BY Age_group;










