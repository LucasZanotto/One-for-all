SELECT ca.cancoes nome, COUNT(hi.usuario_id) reproducoes
FROM cancoes ca
JOIN album al
ON ca.album_id = al.album_id
JOIN historico_de_reproducoes hi
ON ca.cancoes_id = hi.cancoes_id
GROUP BY ca.cancoes
ORDER BY ca.cancoes ASC;