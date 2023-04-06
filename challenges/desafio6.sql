-- Round não funciona pq retorna um numreo, e o test espera que o numero esteja entre aspas, e por algum motivo que ainda não sei o FORMAT faz funcionar como esperado.
SELECT 
FORMAT(MIN(p.valor), 2) AS "faturamento_minimo",
FORMAT(MAX(p.valor), 2) AS "faturamento_maximo",
FORMAT(AVG(p.valor), 2) AS"faturamento_medio",
FORMAT(SUM(p.valor), 2)AS "faturamento_total" 
FROM planos AS p
INNER JOIN
usuario AS u ON u.plano_id = p.plano_id;