-- Provide a query that includes the purchased track name AND artist name with each invoice line item.
SELECT InvoiceLine.InvoiceLineId, Track.Name, Artist.Name
FROM Track JOIN InvoiceLine ON
Track.TrackId = InvoiceLine.TrackId
JOIN Album ON
Track.TrackId = Album.AlbumId
JOIN Artist ON
Album.ArtistId = Artist.ArtistId