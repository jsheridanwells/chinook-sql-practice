-- Provide a query that shows all Invoices but includes the # of invoice line items.
SELECT COUNT(InvoiceLine.InvoiceId) FROM Invoice
JOIN InvoiceLine ON Invoice.InvoiceId = InvoiceLine.InvoiceId
GROUP BY Invoice.InvoiceId