-- Provide a query that shows the top 3 best selling artists.

SELECT a.Name 'Top Artist', COUNT(il.InvoiceLineId) 'Times Purchased'
FROM Track t JOIN InvoiceLine il JOIN Artist a JOIN Album ab
WHERE il.TrackId = t.TrackId AND t.AlbumId = ab.AlbumId AND ab.ArtistId= a.ArtistId
GROUP BY a.Name
ORDER BY COUNT(il.InvoiceLineId) DESC LIMIT 3;