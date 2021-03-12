CREATE VIEW estatisticas_musicais AS (
SELECT * FROM
(SELECT COUNT(nome_cancao) AS `cancoes` FROM cancao) AS `cancoes`,
(SELECT COUNT(nome_artista) AS `artistas` FROM artista)  AS `artistas`,
(SELECT COUNT(nome_album) AS `albuns` FROM album) AS `albuns`
);
