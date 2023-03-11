SELECT	MIN(SpotifyClone.plano.plano_valor) AS 'faturamento_minimo',
		MAX(SpotifyClone.plano.plano_valor) AS 'faturamento_maximo',
		ROUND(AVG(SpotifyClone.plano.plano_valor), 2) AS 'faturamento_medio',
		SUM(SpotifyClone.plano.plano_valor) AS 'faturamento_total'
FROM SpotifyClone.plano
INNER JOIN SpotifyClone.usuarios ON SpotifyClone.plano.plano_id = SpotifyClone.usuarios.plano_id;