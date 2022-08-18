SELECT ar.name AS artista, al.album AS album, COUNT(se.usuario_id) seguidores
FROM artist ar
JOIN album al
ON al.artista_id = ar.artist_id
JOIN seguindo_artistas se
ON se.artist_id = ar.artist_id
GROUP BY al.album, ar.name
ORDER BY COUNT(se.usuario_id) DESC, ar.name ASC, al.album ASC;
