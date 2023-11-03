


-- 2.Вывести название и стоимость товаров от 20 EUR:

	SELECT 
	    ProductName, 
    	    Price
	FROM [Products]
	
	WHERE 
	    Price >= 20
	
-- 3. Вывести страны поставщиков:

	SELECT DISTINCT 
	    Country
	FROM [Customers]
	
-- 4. В упорядоченном по стоимости виде вывести название и стоимость товаров от всех поставщиков, кроме поставщика 1:

	SELECT 
	    ProductName, Price
	FROM [Products]
	
	WHERE 
	    NOT SupplierID = 1
	    
	ORDER BY Price ASC

-- 5. Вывести контактные имена клиентов, кроме тех, что из France и USA:

	SELECT 
	    ContactName
	FROM [Customers]

	WHERE
	    NOT Country IN ('France', 'USA')
	    
-- 6. Вывести два самых дорогих товара из категории 4:

	SELECT ProductName
	FROM [Products]

	WHERE
	    CategoryID = 4
    
	ORDER BY Price DESC
	LIMIT 2
