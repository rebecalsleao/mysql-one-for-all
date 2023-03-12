SELECT SpotifyClone.artistas.artista_nome AS 'artista',
    SpotifyClone.albuns.album_nome AS 'album'
FROM SpotifyClone.artistas
	JOIN SpotifyClone.albuns ON SpotifyClone.artistas.artista_id = SpotifyClone.albuns.artista_id
WHERE SpotifyClone.artistas.artista_nome = 'Elis Regina'
ORDER BY album;