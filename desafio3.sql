CREATE VIEW historico_reproducao_usuarios AS(
SELECT u.nome_usuario AS `usuario`,
c.nome_cancao AS `nome`
FROM usuario AS `u`
INNER JOIN historico AS `h` 
ON u.usuario_id = h.usuario_id
INNER JOIN cancao AS `c`
ON h.cancao_id = c.cancao_id
ORDER BY `usuario`, `nome`
);
