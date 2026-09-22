INSERT INTO jogos (titulo, id_genero, preco, data_lancamento)
SELECT 'Minecraft', id_genero, 99.90, '2011-11-18'
FROM generos
WHERE nome = 'Sandbox'
ON CONFLICT (titulo) DO NOTHING;

INSERT INTO jogos (titulo, id_genero, preco, data_lancamento)
SELECT 'GTA V', id_genero, 119.90, '2013-09-17'
FROM generos
WHERE nome = 'Ação/Aventura'
ON CONFLICT (titulo) DO NOTHING;

INSERT INTO jogos (titulo, id_genero, preco, data_lancamento)
SELECT 'Terraria', id_genero, 39.90, '2011-05-16'
FROM generos
WHERE nome = 'Sandbox'
ON CONFLICT (titulo) DO NOTHING;

INSERT INTO jogos (titulo, id_genero, preco, data_lancamento)
SELECT 'Hollow Knight', id_genero, 46.99, '2017-02-24'
FROM generos
WHERE nome = 'Metroidvania'
ON CONFLICT (titulo) DO NOTHING;

INSERT INTO jogos (titulo, id_genero, preco, data_lancamento)
SELECT 'Elden Ring', id_genero, 249.90, '2022-02-25'
FROM generos
WHERE nome = 'RPG'
ON CONFLICT (titulo) DO NOTHING;
