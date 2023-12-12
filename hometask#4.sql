


-- 1. Вывести ко-во заказов, которое компания Speedy Express доставила в Brazil:

	SELECT
	COUNT(*) AS Total_Orders
	FROM Orders

	JOIN Shippers ON Orders.ShipperID = Shippers.ShipperID
	JOIN Customers ON Orders.CustomerID = Customers.CustomerID

	WHERE
	    ShipperName = "Speedy Express" AND Country = "Brazil"
	   
-- 2. Вывести среднюю стоимость напитка (Beverages) из Brazil:

	SELECT
	    Categories.CategoryName,
	AVG(Products.Price) AS Avg_Price
	FROM Products

	JOIN Categories ON Products.CategoryID = Categories.CategoryID
	JOIN Suppliers ON Products.SupplierID = Suppliers.SupplierID

	WHERE
	    Categories.CategoryID = 1 AND Country = "Brazil"

-- 3. Расчитать З/П сотрудника с фамилией Davolio (проекция: зп, фамилиясотрудника): 
		
	SELECT
    	    SUM(Products.Price * OrderDetails.Quantity) * .05 AS Salary,
	    Employees.LastName
	FROM Orders
		
        JOIN Employees ON Orders.EmployeeID = Employees.EmployeeID
        JOIN OrderDetails ON Orders.OrderID = OrderDetails.OrderID
        JOIN Products ON OrderDetails.ProductID = Products.ProductID
		
	WHERE
            Employees.LastName = 'Davolio';


