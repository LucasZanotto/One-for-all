SELECT SpotifyClone.us.usuario usuario, COUNT(SpotifyClone.hi.usuario_id) qt_de_musicas_ouvidas, ROUND((SUM(SpotifyClone.ca.duracao_segundos) / 60), 2) total_minutos
FROM SpotifyClone.usuario us
JOIN SpotifyClone.historico_de_reproducoes hi
ON SpotifyClone.us.usuario_id = SpotifyClone.hi.usuario_id
JOIN SpotifyClone.cancoes ca
ON SpotifyClone.ca.cancoes_id = SpotifyClone.hi.cancoes_id
GROUP BY SpotifyClone.hi.usuario_id
ORDER BY SpotifyClone.us.usuario ASC;