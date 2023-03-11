SELECT SpotifyClone.usuarios.usuario_nome AS 'pessoa_usuaria', 
  IF(MAX(YEAR(SpotifyClone.historico_de_reproducoes.data_reproducao)) >= 2021, 'Ativa', 'Inativa') AS 'status_pessoa_usuaria'
FROM SpotifyClone.usuarios
JOIN SpotifyClone.historico_de_reproducoes ON SpotifyClone.usuarios.usuario_id = SpotifyClone.historico_de_reproducoes.usuario_id
GROUP BY pessoa_usuaria
ORDER BY pessoa_usuaria;