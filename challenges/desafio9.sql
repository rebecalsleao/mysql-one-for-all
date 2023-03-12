SELECT COUNT(SpotifyClone.historico_de_reproducoes.cancoes_id) AS 'musicas_no_historico'
FROM SpotifyClone.historico_de_reproducoes
 	JOIN SpotifyClone.usuarios ON SpotifyClone.usuarios.usuario_id = SpotifyClone.historico_de_reproducoes.usuario_id
WHERE SpotifyClone.usuarios.usuario_nome = 'Barbara Liskov';