SELECT 
COUNT(DISTINCT m.musica) AS cancoes,
COUNT(DISTINCT a.nome_artista) AS artistas,
COUNT(DISTINCT al.album_id) AS albuns
FROM musicas AS m 
INNER JOIN 
artistas AS a ON m.artista_id = a.artista_id
INNER JOIN 
albuns AS al ON m.ano_lancamento = al.ano_lancamento;
