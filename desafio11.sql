CREATE VIEW cancoes_premium AS(
SELECT c.nome_cancao AS `nome`,
COUNT(h.cancao_id) AS `reproducoes`
FROM cancao AS `c`
INNER JOIN historico AS `h` ON c.cancao_id = h.cancao_id
INNER JOIN usuario AS `u` ON h.usuario_id = u.usuario_id
INNER JOIN plano AS `p` ON p.plano_id = u.plano_id
WHERE p.nome_plano IN ('familiar','universitário')
GROUP BY c.nome_cancao
ORDER BY `nome`
);
