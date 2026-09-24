USE master
GO

SELECT * 
FROM [Sales performance].[dbo].[Sales Data]
SELECT SUM(Total_Sales) AS TotalSales
FROM [Sales performance].[dbo].[Sales Data];
SELECT TOP 5 *
FROM [Sales performance].[dbo].[Sales Data]
ORDER BY Total_Sales DESC;
SELECT *
FROM [Sales performance].[dbo].[Sales Data]
WHERE Total_Sales > 1000;
SELECT COUNT(*) AS TotalRecords
FROM [Sales performance].[dbo].[Sales Data];
SELECT AVG(Total_Sales) AS AverageSales
FROM [Sales performance].[dbo].[Sales Data];
SELECT MAX(Total_Sales) AS HighestSale
FROM [Sales performance].[dbo].[Sales Data];
SELECT MIN(Total_Sales) AS LowestSale
FROM [Sales performance].[dbo].[Sales Data]
WHERE Total_Sales > 0
SELECT Cleaned_Category, SUM(Total_Sales) AS TotalSales
FROM [Sales performance].[dbo].[Sales Data]
GROUP BY Cleaned_Category
ORDER BY TotalSales DESC
SELECT Cleaned_City, SUM(Total_Sales) AS TotalSales
FROM [Sales performance].[dbo].[Sales Data]
GROUP BY Cleaned_City
ORDER BY TotalSales DESC
SELECT TOP 1 Cleaned_Product, SUM(Total_Sales) AS TotalSales
FROM [Sales performance].[dbo].[Sales Data]
GROUP BY Cleaned_Product
ORDER BY TotalSales DESC
SELECT TOP 1 Cleaned_Product, SUM(Total_Sales) AS TotalSales
FROM [Sales performance].[dbo].[Sales Data]
WHERE Total_Sales > 0
GROUP BY Cleaned_Product
ORDER BY TotalSales ASC
SELECT *
FROM [Sales performance].[dbo].[Sales Data]
WHERE Cleaned_Gender = 'Female'
SELECT Cleaned_Category, SUM(Total_Sales) AS TotalSales
FROM [Sales performance].[dbo].[Sales Data]
GROUP BY Cleaned_Category
HAVING SUM(Total_Sales) > 5000
ORDER BY TotalSales DESC
SELECT Cleaned_Product, SUM(Total_Sales) AS TotalRevenue
FROM [Sales performance].[dbo].[Sales Data]
GROUP BY Cleaned_Product
ORDER BY TotalRevenue DESC