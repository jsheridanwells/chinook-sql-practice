-- Provide a query that shows all the Tracks, but displays no IDs. The result should include the Album name, Media type and Genre.
SELECT Album.Title, MediaType.Name, Genre.Name from Track
JOIN Album ON Track.AlbumId = Album.AlbumId
JOIN MediaType ON Track.MediaTypeId = MediaType.MediaTypeId
JOIN Genre ON Track.GenreId = Genre.GenreId