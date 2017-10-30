-- Provide a query that shows the # of invoices per country.
SELECT COUNT (InvoiceLine.InvoiceLineId) FROM InvoiceLine
JOIN Invoice ON Invoice.InvoiceId = InvoiceLine.InvoiceId
GROUP BY Invoice.BillingCountry