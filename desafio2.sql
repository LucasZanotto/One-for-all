USE SpotifyClone
SELECT COUNT(ca.cancoes) cancoes, COUNT(ar.name) artistas, COUNT(al.album) albuns
FROM cancoes ca
JOIN album al
ON ca.album_id = al.album_id
JOIN artist ar
ON al.artista_id = ar.artist_id;