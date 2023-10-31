/* 1.Приведите десять типовых бизнес-процессов для предметной области ВИДЕО-ХОСТИНГ (Youtube), 
а также их соответствие по CRUD.
1. Управление юзерами: регистрация(create), удаление(delete), блокировка(update);
2. Управление каналами: создание(create), удаление(delete), блокировка(update), просмотр(read);
3. Управление видео: создание/выгрузка(create), удаление(delete), блокировка(update), просмотр(read);
4. Управление комментариями: создание(create), удаление(delete), блокировка(update), просмотр(read);
5. Управление плейлистами: создание(create), добавление видео(update), удаление(delete), блокировка(update), просмотр(read);
6. Управление подписками: создание(create), удаление(delete), просмотр(read);
7. Управление жалобами: создание(create), удаление(delete), просмотр(read);
8. Управление рекламой: создание(create), удаление(delete), просмотр(read);
9. Управление уведрмлениями: создание(create), удаление(delete), просмотр(read), блокировка(update);
10. Управление (поиском, рекомендациями, истории и тд): создание(create), удаление(delete), просмотр(read);

*/

/* 2.Вывести название и стоимость товаров от 20 EUR.*/
SELECT 
ProductName,
Price
FROM 
Products
WHERE
Price>=20

/* 3.Вывести страны поставщиков.*/
SELECT                                   SELECT DISTINCT
Country                                  Country
FROM                                     FROM 
Suppliers                                Suppliers


/* 4.В упорядоченном по стоимости виде вывести название и стоимость товаров от всех поставщиков, 
кроме поставщика 1.*/
SELECT 
ProductName,
Price
FROM 
Products
WHERE
NOT SupplierID=1
ORDER BY Price ASC

/* 5.Вывести контактные имена клиентов, кроме тех, что из France и USA.*/
SELECT 
CustomerName,
Country
FROM Customers
WHERE
NOT Country IN ('France', 'USA')