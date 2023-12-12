

-- 1. Вывести мин/стоимость товаров для каждой категории (проекция: названиекатегории, минстоимость_товара):
	
	SELECT
	    Categories.CategoryName,
	    MIN(Price) As Min_Price
	FROM Products
   	
   	JOIN Categories ON Products.CategoryID = Categories.CategoryID
   	
   	GROUP BY Categories.CategoryID
    
   	ORDER BY Min_Price ASC
       
-- 2. Вывести ТОП-3 стран по количеству доставленных заказов:
	
	SELECT
	    Country,
	    COUNT(*) AS Total_Shipped
	FROM Customers
   	
   	JOIN Orders ON Customers.CustomerID = Orders.CustomerID
   	
   	GROUP BY Customers.CustomerID
    
    	ORDER BY Total_Shipped DESC
    	LIMIT 3

-- 3. Вывести ко-во заказов у каждого менеджера (фамилияменеджера, ко-возаказов):

	SELECT
	    Employees.LastName,
	    COUNT(*) AS Total_Orders
	FROM Orders
   	
   	JOIN Employees ON Orders.EmployeeID = Employees.EmployeeID
   	
   	GROUP BY Orders.EmployeeID
    
    	ORDER BY Total_Orders DESC

