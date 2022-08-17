SELECT DISTINCT us.usuario, IF(MAX(DATE(hi.data_reproducao)) > '2021-01-01', 'Usuário ativo', 'Usuário inativo') status_usuario
FROM SpotifyClone.usuario us
JOIN SpotifyClone.historico_de_reproducoes hi
ON hi.usuario_id = us.usuario_id
GROUP BY us.usuario
ORDER BY us.usuario;