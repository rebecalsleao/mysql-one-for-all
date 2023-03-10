SELECT COUNT(DISTINCT cancoes_id) AS `cancoes`, 
COUNT(DISTINCT artista_nome) AS `artistas`, 
COUNT(DISTINCT album_nome) AS `albuns` 
FROM SpotifyClone.cancoes, SpotifyClone.artistas, SpotifyClone.albuns;
