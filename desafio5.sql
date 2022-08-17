SELECT ca.cancoes cancao, COUNT(hi.cancoes_id) reproducoes
FROM cancoes ca
JOIN historico_de_reproducoes hi
ON ca.cancoes_id = hi.cancoes_id
GROUP BY hi.cancoes_id
ORDER BY COUNT(hi.cancoes_id) DESC
LIMIT 2;