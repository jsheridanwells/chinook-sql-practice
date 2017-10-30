-- Which sales agent made the most in sales over all?
SELECT FirstName, LastName, MAX(TotalSales)
FROM (
SELECT Employee.FirstName AS FirstName, Employee.LastName AS LastName,
SUM (Invoice.Total) AS TotalSales
FROM Employee
JOIN Customer ON Customer.SupportRepId = Employee.EmployeeId
JOIN Invoice ON Customer.CustomerId = Invoice.CustomerId
GROUP BY Employee.EmployeeId
)