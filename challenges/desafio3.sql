SELECT SpotifyClone.usuarios.usuario_nome AS 'pessoa_usuaria', 
       COUNT(SpotifyClone.historico_de_reproducoes.usuario_id) AS 'musicas_ouvidas',
       ROUND(SUM(SpotifyClone.cancoes.cancoes_duracao_segundos/60), 2) AS 'total_minutos'
  FROM SpotifyClone.usuarios
  INNER JOIN SpotifyClone.historico_de_reproducoes ON SpotifyClone.usuarios.usuario_id = SpotifyClone.historico_de_reproducoes.usuario_id
  INNER JOIN SpotifyClone.cancoes ON SpotifyClone.cancoes.cancoes_id = SpotifyClone.historico_de_reproducoes.cancoes_id
  GROUP BY SpotifyClone.usuarios.usuario_nome
  ORDER BY SpotifyClone.usuarios.usuario_nome;