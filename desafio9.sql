USE SpotifyClone;
DELIMITER $$

CREATE PROCEDURE albuns_do_artista(IN nome_param VARCHAR(50))
BEGIN
SELECT CONCAT(a.nome_artista, ' ', a.sobrenome_artista) AS `artista`,
b.nome_album AS `album`
FROM artista AS `a`
INNER JOIN album AS `b` ON a.artista_id = b.artista_id
WHERE CONCAT(a.nome_artista, ' ', a.sobrenome_artista)  = nome_param
ORDER BY `album`;
END $$

DELIMITER ;
