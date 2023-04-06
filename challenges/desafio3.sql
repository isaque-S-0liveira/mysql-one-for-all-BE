SELECT 
u.nome_usuario AS "pessoa_usuaria",
COUNT(h.usuario_id) AS "musicas_ouvidas",
ROUND(SUM(m.duracao) / 60, 2) AS "total_minutos"
FROM usuario AS u
INNER JOIN 
historico AS h ON u.usuario_id = h.usuario_id
INNER JOIN
musicas AS m ON h.musica_id = m.musica_id
group by u.nome_usuario
ORDER BY u.nome_usuario;
