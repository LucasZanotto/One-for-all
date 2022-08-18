SELECT ar.name, al.album
FROM SpotifyClone.artist ar
JOIN SpotifyClone.album al
ON ar.artist_id = al.artista_id
WHERE ar.name LIKE 'Elis Regina'
ORDER BY al.album ASC;