SELECT 
a.nome_artista AS "artista",
al.album AS "album"
FROM artistas AS a
INNER JOIN
albuns AS al ON al.artista_id = a.artista_id
GROUP BY artista, album
HAVING artista = "Elis Regina"
ORDER BY artista, album;