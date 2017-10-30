-- Provide a query that shows the most purchased Media Type.
SELECT m.Name 'Media Type', COUNT(m.Name)
FROM MediaType m Join Track t JOIN InvoiceLine l
WHERE m.MediaTypeId = t.MediaTypeId
AND t.TrackId = l.TrackId
GROUP BY m.Name
ORDER BY COUNT (m.Name) desc
LIMIT 1