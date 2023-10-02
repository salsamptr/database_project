USE [RoCALink]

--1 
SELECT c.CustomerID, CustomerName, [Total Item Variety]= CAST(COUNT(bt.BikeTypeName)AS VARCHAR) + ' Bikes'
FROM Customer c JOIN [Transaction] t ON c.CustomerID=t.CustomerID 
JOIN TransactionDetail td ON t.TransactionID=td.TransactionID
JOIN Bike b ON td.BikeID=b.BikeID 
JOIN BikeType bt ON b.BikeTypeID=bt.BikeTypeID
WHERE CustomerGender LIKE 'Male' AND CustomerName LIKE 'A%'
GROUP BY  c.CustomerID, CustomerName

--2 
SELECT BikeTypeName, bt.BikeTypeID, [Bike Count]= COUNT(BikeID)
FROM BikeType bt JOIN Bike b ON bt. BikeTypeID=b.BikeTypeID JOIN
GroupSet gs ON gs.GroupSetID=b.GroupSetID
WHERE gs.GroupSetName LIKE 'Shimano%' AND
gs.GroupSetNumberofGears BETWEEN 7 AND 12
GROUP BY BikeTypeName, bt.BikeTypeID

--3  
SELECT s.StaffID, s.StaffName, [Number Of Transactions] = COUNT(t.TransactionID),
[Number of Bikes Sold] =CAST(SUM(TransactionQty) AS VARCHAR) + ' Bikes' 
FROM Staff s JOIN [Transaction] t ON s.StaffID=t.StaffID
JOIN TransactionDetail td ON t.TransactionID=td.TransactionID
WHERE StaffGender LIKE 'Female' AND (LEN(StaffName) BETWEEN 5 AND 10)
GROUP BY  s.StaffID, s.StaffName

--4 
SELECT gs.GroupSetID, GroupSetName, [Bike Count] = COUNT(gs.GroupSetID),
[Average Price] = CONCAT('Rp', AVG(BikePrice))
FROM Bike b JOIN GroupSet gs ON b.GroupSetID=gs.GroupSetID JOIN BikeBrand bb
ON b.BikeBrandID=bb.BikeBrandID
WHERE BikeBrandName LIKE 'C%'  
GROUP BY gs.GroupSetID, GroupSetName
HAVING AVG(BikePrice) > 150000000

-- 5
SELECT TransactionID, CustomerName, StaffName, [Transaction Day] = DAY(t.TransactionDate)
FROM Customer c JOIN[Transaction] t ON c.CustomerID=t.CustomerID 
JOIN Staff s ON t.StaffID=s.StaffID, (

      SELECT [Average] = AVG(StaffSalary)
      FROM Staff s2

)AsAvgStaffSal
WHERE AsAvgStaffSal.Average> StaffSalary AND MONTH(TransactionDate) = 2

-- 6 
SELECT StaffName, BikeName, t.TransactionID,[Transaction Month] = DATENAME(MONTH, TransactionDate)
FROM Staff s JOIN [Transaction] t ON s.StaffID=t.StaffID 
JOIN TransactionDetail td ON t.TransactionID=td.TransactionID
JOIN Bike b ON td.BikeID=b.BikeID, (

      SELECT [APA] = MAX(TransactionQty)
      FROM TransactionDetail TD JOIN [Transaction] T
	  ON TD.TransactionID = T.TransactionID
	  WHERE DAY(TransactionDate) = 12

)AsMaxTransactionQty
WHERE TransactionQty > AsMaxTransactionQty.APA 

--7 
SELECT [Average Bike Sold] = CAST(AVG(TransactionQty) AS VARCHAR) + ' Bikes'
FROM [Transaction] t JOIN TransactionDetail td ON t.TransactionID=td.TransactionID
JOIN Bike b ON td.BikeID=b.BikeID, (
	
	SELECT [YEAR] = DATEADD(Year, -1, GETDATE()) 
	FROM [Transaction]
	
) AsALIAS	
WHERE BikePrice BETWEEN 100000000 AND 150000000 AND TransactionDate < AsALIAS.[YEAR]

--8 
SELECT [Max Bikes Purchased] = CAST(MAX(TransactionQty) AS VARCHAR) + ' Bikes'
FROM TransactionDetail td JOIN Bike b ON td.BikeID=b.BikeID
JOIN [Transaction] t ON t.TransactionID=td.TransactionID, (

     SELECT [DA] = MONTH(TransactionDate)
	 FROM [Transaction]
	 
) AsALIAS
WHERE BikeName LIKE 'S%' AND AsALIAS.DA BETWEEN 7 AND 12

--9
GO
CREATE VIEW CustomerView AS
SELECT CustomerName, [Total Transactions] = COUNT(TD.TransactionID), 
[Total Bikes Bought] = SUM(TransactionQty), [Customer Phone] = CONCAT('+62', SUBSTRING(CustomerPhone, 2, 12))

FROM Customer C JOIN [Transaction]
ON C.CustomerID = [Transaction].CustomerID JOIN TransactionDetail TD
ON [Transaction].TransactionID = TD.TransactionID JOIN Bike B 
ON TD.BikeID = B.BikeID
WHERE TransactionQty BETWEEN 2 AND 5 AND Qty > 5
GROUP BY CustomerName, CONCAT('+62', SUBSTRING(CustomerPhone, 2, 12))

SELECT * FROM CustomerView

--10
GO
CREATE VIEW TransactionView AS
SELECT TD.TransactionID, [Max Quantity] = MAX(TransactionQty), [MIN Quantity] = MIN(TransactionQty),
[Day Elapsed] = DATEDIFF(Day, TransactionDate, GETDATE())
FROM TransactionDetail TD JOIN [Transaction] T
ON TD.TransactionID = T.TransactionID JOIN Staff S
ON T.StaffID = S.StaffID
WHERE StaffGender = 'Male'
GROUP BY TD.TransactionID, DATEDIFF(Day, TransactionDate, GETDATE())
HAVING MAX(TransactionQty) != MIN(TransactionQty)

SELECT * FROM TransactionView