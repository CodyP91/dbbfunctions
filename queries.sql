# 1.
INSERT INTO Customers (username, firstName, lastName) 
VALUES 
('user1', 'First1', 'Last1'),
('user2', 'First2', 'Last2'),
('user3', 'First3', 'Last3'),
('user4', 'First4', 'Last4'),
('user5', 'First5', 'Last5');
# 2.
INSERT INTO Items (itemName, price) 
VALUES 
('Item1', 20.00),
('Item2', 30.00),
('Item3', 40.00),
('Item4', 50.00),
('Item5', 60.00),
('Item6', 70.00),
('Item7', 80.00),
('Item8', 90.00),
('Item9', 100.00),
('Item10', 110.00);
#3.
INSERT INTO Orders (customerID, orderDate) 
VALUES 
(1, '2023-05-01'),
(2, '2023-05-02'),
(3, '2023-05-03'),
(4, '2023-05-04'),
(5, '2023-05-05');
# 4.
INSERT INTO OrderItems (orderID, itemID, quantity) 
VALUES 
(1, 1, 2),
(2, 2, 3),
(3, 3, 4),
(4, 4, 5),
(5, 5, 6),
(1, 6, 7),
(2, 7, 8),
(3, 8, 9),
(4, 9, 10),
(5, 10, 1),
(1, 2, 3),
(2, 3, 4),
(3, 4, 5),
(4, 5, 6),
(5, 1, 2);
# 5.
SELECT C.username 
FROM Customers C 
JOIN Orders O 
ON C.customerID = O.customerID 
ORDER BY O.orderDate DESC 
LIMIT 5;
# 6.
SELECT C.username, COUNT(O.orderID) as orderCount 
FROM Customers C 
JOIN Orders O 
ON C.customerID = O.customerID 
GROUP BY C.username;
# 7.
SELECT AVG(totalPrice) as averagePrice 
FROM Orders;
# 8.
SELECT C.username, MAX(O.totalPrice) as maxPrice 
FROM Customers C 
JOIN Orders O 
ON C.customerID = O.customerID;

# 9.
SELECT C.username, SUM(O.totalPrice) as totalSpent 
FROM Customers C 
JOIN Orders O 
ON C.customerID = O.customerID 
GROUP BY C.username;
# 10.
SELECT C.username, AVG(O.totalPrice) as averageSpent 
FROM Customers C 
JOIN Orders O 
ON C.customerID = O.customerID 
GROUP BY C.username;
