SELECT SpotifyClone.cancoes.cancoes_nome AS 'cancao',
  COUNT(SpotifyClone.historico_de_reproducoes.cancoes_id) AS 'reproducoes'
 FROM SpotifyClone.cancoes
 INNER JOIN SpotifyClone.historico_de_reproducoes ON SpotifyClone.cancoes.cancoes_id = SpotifyClone.historico_de_reproducoes.cancoes_id
 GROUP BY SpotifyClone.cancoes.cancoes_nome
 ORDER BY reproducoes DESC, SpotifyClone.cancoes.cancoes_nome
 LIMIT 2;