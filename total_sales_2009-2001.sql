-- What are the respective total sales for each of those years?
SELECT SUM (Invoice.Total) FROM Invoice
WHERE (Invoice.InvoiceDate >= '2009-01-01 00:00:00' AND Invoice.InvoiceDate < '2010-01-01 00:00:00') OR (Invoice.InvoiceDate >= '2011-01-01 00:00:00' AND Invoice.InvoiceDate < '2012-01-01 00:00:00')