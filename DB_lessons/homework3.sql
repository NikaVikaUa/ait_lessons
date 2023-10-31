/*1.Вывести ко-во поставщиков не из UK и не из China*/
SELECT 
COUNT(*) AS total_suppliers
FROM Suppliers
WHERE
Country NOT IN ('UK', 'China')

/*2.Вывести среднюю/MAX/MIN стоимости и ко-во товаров из категорий 3 и 5*/
SELECT 
AVG(Price) AS avg_price_from_3_5,
MAX(Price) AS max_price_from_3_5,
MIN(Price) AS min_price_from_3_5,
COUNT(*) AS total_products_from_3_5
FROM Products
WHERE
CategoryID IN ('3', '5')

/*3.Вывести общую сумму проданных товаров*/
SELECT 
SUM(Products.Price*Quantity) AS products_sum
FROM OrderDetails
JOIN Products ON OrderDetails.ProductID = Products.ProductID
/*
products_sum
386424.23*/

/*4.Вывести данные о заказах (номер_заказа, имя_клиента, страна_клиента, фамилия_менеджера, 
название_компании_перевозчика)*/
SELECT 
OrderID,
Customers.CustomerName,
Customers.Country,
Employees.LastName,
Shippers.ShipperName
FROM Orders
JOIN Customers ON Orders.CustomerID = Customers.CustomerID
JOIN Employees ON Orders.EmployeeID = Employees.EmployeeID
JOIN Shippers ON Orders.ShipperID = Shippers.ShipperID

/*5.Вывести сумму, на которую было отправлено товаров клиентам в Germany*/
SELECT 
SUM(Products.Price*Quantity) AS products_sum
FROM OrderDetails
JOIN Orders ON OrderDetails.OrderID = Orders.OrderID
JOIN Customers ON Orders.CustomerID = Customers.CustomerID
JOIN Products ON OrderDetails.ProductID = Products.ProductID
WHERE
Customers.Country = 'Germany'
/*products_sum
47241.82000000001*/