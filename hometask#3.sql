


-- 1.Вывести название и стоимость в USD одного самого дорогого проданного товара:

	SELECT 
	    ProductName,
    	    Price * 1.09 as Price_USD
	FROM Products

	JOIN OrderDetails ON Products.ProductID = OrderDetails.ProductID
	JOIN Orders ON OrderDetails.OrderID = Orders.OrderID

	ORDER BY Price DESC
	LIMIT 1
	
-- 2. Вывести два самых дорогих товара из категории Beverages из USA:

	SELECT ProductName
	FROM Products
    
	JOIN Categories ON Products.CategoryID = Categories.CategoryID
	JOIN Suppliers ON Products.SupplierID = Suppliers.SupplierID

    
	WHERE CategoryName = "Beverages" AND Country = "USA"
	
	ORDER BY Price DESC
	LIMIT 2
	
-- 3. Удалить товары с ценой менее 50 EUR:

	DELETE FROM Products
	WHERE Price < 50

-- 4. Вывести список стран, которые поставляют морепродукты:
	
	SELECT Country
	FROM Suppliers

	JOIN Products ON Suppliers.SupplierID = Products.SupplierID
	JOIN Categories ON Products.CategoryID = Categories.CategoryID

	WHERE CategoryName = "Seafood"
	
-- 5. ПОчистить поле ContactName у всех клиентов не из China:

	UPDATE FROM Customers
	SET 
	   ContactName = ''
	WHERE
	   NOT Country = 'China'
	 
