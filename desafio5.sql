CREATE VIEW top_2_hits_do_momento AS (
SELECT c.nome_cancao AS `cancao`,
COUNT(h.cancao_id) AS `reproducoes`
FROM cancao AS `c`
INNER JOIN historico AS `h` ON c.cancao_id = h.cancao_id
GROUP BY c.nome_cancao
ORDER BY `reproducoes` DESC, `cancao`
LIMIT 2
);
