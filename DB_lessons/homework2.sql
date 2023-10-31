/*1.Вывести название и стоимость в USD одного самого дорогого проданного товара (не используя агрегацию)*/

SELECT 
ProductName,
Price*1.05 AS Price_USD
FROM OrderDetails
JOIN Products ON OrderDetails.ProductID = Products.ProductID
ORDER BY Price DESC
LIMIT 1

/*2.Вывести два самых дорогих товара из категории Beverages из USA*/

SELECT * 
FROM Products
JOIN Categories ON Products.CategoryID = Categories.CategoryID
JOIN Suppliers ON Products.SupplierID = Suppliers.SupplierID
WHERE 
CategoryName = 'Beverages' AND Country = 'USA'

/*3.Удалить товары с ценой менее 50 EUR*/

DELETE FROM Products
WHERE
Price<=50

/*4.Вывести список стран, которые поставляют морепродукты*/

SELECT 
Suppliers.Country
FROM Products
JOIN Suppliers ON Products.SupplierID = Suppliers.SupplierID
JOIN Categories ON Products.CategoryID = Categories.CategoryID
WHERE
CategoryName = 'Seafood'

/*5.Очистить поле ContactName у всех клиентов не из China*/

UPDATE Suppliers
SET ContactName = ''
WHERE NOT Country = 'China'
