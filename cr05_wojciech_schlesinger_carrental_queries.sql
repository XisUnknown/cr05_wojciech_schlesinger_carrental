All Customers with Doe in their Name
SELECT * FROM customer WHERE CustomerName LIKE ('%Doe');
All Customers with an ID bigger than 3
SELECT * FROM customer WHERE CustomerID > 3;
All additional charges between 30 and 200
SELECT * FROM `additionalcharges` WHERE Amount BETWEEN 30 AND 200;
All additional charges with an amount bigger than 50
SELECT * FROM `additionalcharges` WHERE Amount > 50;
All invoices that are between 30 and 200
SELECT * FROM invoice WHERE Amount BETWEEN 30 AND 200;
All rentalcars with a location Wien
SELECT * FROM `rentalcar` WHERE StartLocation LIKE 'Wien';
All rentalcompany where companyID is bigger than 2
SELECT * FROM `rentalcompany` WHERE CompanyID > 2;



