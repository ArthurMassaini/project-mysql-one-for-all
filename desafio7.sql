CREATE VIEW perfil_artistas AS (
SELECT CONCAT(a.nome_artista, ' ', a.sobrenome_artista) AS `artista`,
al.nome_album AS `album`,
COUNT(u.usuario_id) AS `seguidores`
FROM artista AS `a`
INNER JOIN album AS `al` ON a.artista_id = al.artista_id
INNER JOIN usuario_artista AS `u` ON a.artista_id = u.artista_id
GROUP BY u.artista_id, al.nome_album
ORDER BY `seguidores` DESC, `artista`, `album`
);
