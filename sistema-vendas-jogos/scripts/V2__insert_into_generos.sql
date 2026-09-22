INSERT INTO generos (nome, descricao)
VALUES
    ('Sandbox', 'Jogos que permitem exploração e liberdade para criar ou interagir com o ambiente.'),
    ('Ação/Aventura', 'Jogos que combinam ação, exploração e elementos narrativos.'),
    ('Metroidvania', 'Jogos de exploração com progressão baseada na aquisição de habilidades.'),
    ('RPG', 'Jogos focados em progressão de personagem, exploração e elementos de interpretação.')
ON CONFLICT (nome) DO NOTHING;
