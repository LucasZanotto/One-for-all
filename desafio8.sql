SELECT ar.name artista, al.album album
FROM SpotifyClone.artist ar
JOIN SpotifyClone.album al
ON ar.artist_id = al.artista_id
WHERE ar.name LIKE 'Elis Regina'
ORDER BY al.album ASC;