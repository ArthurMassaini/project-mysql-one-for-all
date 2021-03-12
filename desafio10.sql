USE SpotifyClone; 
DELIMITER $$

CREATE FUNCTION quantidade_musicas_no_historico(nome_param VARCHAR(50))
RETURNS INT READS SQL DATA
BEGIN
DECLARE qtd_musicas INT;
SELECT COUNT(*)
FROM historico AS `h`
INNER JOIN usuario AS `u` ON h.usuario_id = u.usuario_id
WHERE u.nome_usuario = 'Bill'
GROUP BY h.usuario_id
INTO qtd_musicas;	
RETURN qtd_musicas;
END $$

DELIMITER ;
