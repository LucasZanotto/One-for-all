SELECT ca.cancoes nome, COUNT(hi.cancoes_id) reproducoes
FROM cancoes ca
JOIN historico_de_reproducoes hi
ON ca.cancoes_id = hi.cancoes_id
JOIN usuario us
ON us.usuario_id = hi.usuario_id
WHERE us.plano_id = 1 OR us.plano_id = 4
GROUP BY ca.cancoes
ORDER BY ca.cancoes ASC;