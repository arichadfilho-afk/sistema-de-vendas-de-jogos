INSERT INTO jogos_plataformas (id_jogo, id_plataforma)
SELECT j.id_jogo, p.id_plataforma
FROM jogos j
JOIN plataformas p ON p.nome = 'PC'
WHERE j.titulo IN ('Minecraft', 'GTA V', 'Terraria', 'Hollow Knight', 'Elden Ring')
ON CONFLICT DO NOTHING;

INSERT INTO jogos_plataformas (id_jogo, id_plataforma)
SELECT j.id_jogo, p.id_plataforma
FROM jogos j
JOIN plataformas p ON p.nome = 'PlayStation 5'
WHERE j.titulo IN ('GTA V', 'Hollow Knight', 'Elden Ring')
ON CONFLICT DO NOTHING;

INSERT INTO jogos_plataformas (id_jogo, id_plataforma)
SELECT j.id_jogo, p.id_plataforma
FROM jogos j
JOIN plataformas p ON p.nome = 'PlayStation 4'
WHERE j.titulo IN ('Minecraft', 'GTA V', 'Hollow Knight', 'Elden Ring')
ON CONFLICT DO NOTHING;

INSERT INTO jogos_plataformas (id_jogo, id_plataforma)
SELECT j.id_jogo, p.id_plataforma
FROM jogos j
JOIN plataformas p ON p.nome = 'Xbox Series X/S'
WHERE j.titulo IN ('Minecraft', 'GTA V', 'Terraria', 'Elden Ring')
ON CONFLICT DO NOTHING;

INSERT INTO jogos_plataformas (id_jogo, id_plataforma)
SELECT j.id_jogo, p.id_plataforma
FROM jogos j
JOIN plataformas p ON p.nome = 'Xbox One'
WHERE j.titulo IN ('Minecraft', 'GTA V', 'Terraria')
ON CONFLICT DO NOTHING;

INSERT INTO jogos_plataformas (id_jogo, id_plataforma)
SELECT j.id_jogo, p.id_plataforma
FROM jogos j
JOIN plataformas p ON p.nome = 'Nintendo Switch'
WHERE j.titulo IN ('Minecraft', 'Terraria', 'Hollow Knight')
ON CONFLICT DO NOTHING;
