SELECT SpotifyClone.artistas.artista_nome AS 'artista',
    SpotifyClone.albuns.album_nome AS 'album',
    COUNT(SpotifyClone.seguindo_artistas.usuario_id) AS 'pessoas_seguidoras'
FROM SpotifyClone.artistas
	INNER JOIN SpotifyClone.albuns ON SpotifyClone.artistas.artista_id = SpotifyClone.albuns.artista_id
    INNER JOIN SpotifyClone.seguindo_artistas ON SpotifyClone.artistas.artista_id = SpotifyClone.seguindo_artistas.artista_id
GROUP BY artista, album
ORDER BY pessoas_seguidoras DESC, artista, album;