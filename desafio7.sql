SELECT ar.name artista, al.album album, se.usuario_id seguidores
FROM artist ar
JOIN album al
ON al.artista_id = ar.artist_id
JOIN seguindo_artistas se
ON se.artist_id = ar.artist_id;