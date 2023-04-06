SELECT 
m.musica AS "cancao",
COUNT(h.musica_id) AS "reproducoes" 
FROM musicas AS m
INNER JOIN
historico AS h ON m.musica_id = h.musica_id
GROUP BY m.musica
-- HAVING COUNT(h.musica_id) > 2
ORDER BY reproducoes DESC, cancao
LIMIT 2;