CREATE VIEW top_3_artistas AS (
SELECT CONCAT(a.nome_artista,' ', a.sobrenome_artista) AS `artista`,
COUNT(u.usuario_id) AS `seguidores`
FROM artista AS `a`
INNER JOIN usuario_artista AS `u`
ON a.artista_id = u.artista_id
GROUP BY u.artista_id
ORDER BY `seguidores` DESC, `artista`
LIMIT 3
);
