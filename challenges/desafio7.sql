SELECT 
a.nome_artista AS "artista",
al.album AS "album",
COUNT(usuario_id) AS "pessoas_seguidoras"
FROM artistas AS a
INNER JOIN
albuns AS al ON al.artista_id = a.artista_id
INNER JOIN 
seguindo AS s ON s.artista_id = a.artista_id
GROUP BY artista, album
ORDER BY pessoas_seguidoras DESC, artista, album;