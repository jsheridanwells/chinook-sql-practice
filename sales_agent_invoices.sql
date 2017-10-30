-- Provide a query that shows the invoices associated with each sales agent. The resultant table should include the Sales Agent's full name.

SELECT Invoice.InvoiceId, Employee.FirstName, Employee.LastName
FROM Customer JOIN Invoice ON 
Customer.CustomerId = Invoice.CustomerId
JOIN Employee ON
Employee.EmployeeId = Customer.SupportRepId