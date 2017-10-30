-- Provide a query that shows the total number of tracks in each playlist. The Playlist name should be include on the resulant table.
SELECT COUNT (PlaylistTrack.PlaylistId), PlayList.Name FROM PlaylistTrack
JOIN PlayList ON Playlist.PlaylistId = PlaylistTrack.PlaylistId
GROUP BY PlaylistTrack.PlaylistId	