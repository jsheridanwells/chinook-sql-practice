-- Which sales agent made the most in sales in 2009?

SELECT FullName, TheEmployeeId, MAX(TheTotalSales)
FROM (
SELECT (Employee.FirstName || ' ' || Employee.LastName AS FullName)
		Employee.EmployeeId AS TheEmployeeId,
		SUM(Invoice.Total) AS TheTotalSales
	FROM
		Customer
		LEFT JOIN Employee on Customer.SupportRepId == Employee.EmployeeId
		LEFT JOIN Invoice on Customer.CustomerId == Invoice.CustomerId
	WHERE strftime ('%Y', Invoice.InvoiceDate) == '2009'
	GROUP BY Employee.EmployeeId
)