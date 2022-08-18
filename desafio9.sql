SELECT COUNT(us.usuario) quantidade_musicas_no_historico
FROM SpotifyClone.historico_de_reproducoes hi
JOIN SpotifyClone.usuario us
ON hi.usuario_id = us.usuario_id
WHERE us.usuario LIKE 'Barbara Liskov'
GROUP BY us.usuario;