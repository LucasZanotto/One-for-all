SELECT ca.cancoes cancao, COUNT(hi.cancoes_id) reproducoes
FROM SpotifyClone.cancoes ca
JOIN SpotifyClone.historico_de_reproducoes hi
ON ca.cancoes_id = hi.cancoes_id
GROUP BY hi.cancoes_id
ORDER BY COUNT(hi.cancoes_id) DESC, ca.cancoes ASC
LIMIT 2;