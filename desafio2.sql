SELECT COUNT(ca.cancoes) cancoes, COUNT(ar.name) artistas, COUNT(al.album) albuns
FROM SpotifyClone.cancoes ca
JOIN SpotifyClone.album al
ON ca.album_id = al.album_id
JOIN SpotifyClone.artist ar
ON al.artista_id = ar.artist_id;