


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

-- 3. Расчитать З/П сотрудника с фамилией Davolio (проекция: зп, фамилиясотрудника): Field "Z/P" doesn't exist


