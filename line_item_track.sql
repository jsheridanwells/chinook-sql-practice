-- Provide a query that includes the purchased track name with each invoice line item.
SELECT InvoiceLine.InvoiceLineId, Track.Name 
FROM Track JOIN InvoiceLine ON
Track.TrackId = InvoiceLine.TrackId