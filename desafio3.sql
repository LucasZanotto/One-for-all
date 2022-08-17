SELECT us.usuario usuario, COUNT(hi.usuario_id) qt_de_musicas_ouvidas, ROUND((SUM(ca.duracao_segundos) / 60), 2) total_minutos
FROM usuario us
JOIN historico_de_reproducoes hi
ON us.usuario_id = hi.usuario_id
JOIN cancoes ca
ON ca.cancoes_id = hi.cancoes_id
GROUP BY hi.usuario_id
ORDER BY us.usuario ASC;