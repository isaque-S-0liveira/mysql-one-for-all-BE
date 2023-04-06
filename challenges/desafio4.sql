SELECT 
u.nome_usuario AS "pessoa_usuaria",
IF(MAX(YEAR(h.data_de_reproducao)) >= "2021", 'Ativa', 'Inativa') AS "status_pessoa_usuaria" 
FROM usuario AS u
INNER JOIN 
historico AS h ON u.usuario_id = h.usuario_id
GROUP BY u.nome_usuario 
ORDER BY u.nome_usuario;