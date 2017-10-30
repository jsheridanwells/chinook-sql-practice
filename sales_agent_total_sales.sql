-- Provide a query that shows total sales made by each sales agent.
SELECT Employee.FirstName, Employee.LastName,
SUM (Invoice.Total)
FROM Employee
JOIN Customer ON Customer.SupportRepId = Employee.EmployeeId
JOIN Invoice ON Customer.CustomerId = Invoice.CustomerId
GROUP BY Employee.EmployeeId