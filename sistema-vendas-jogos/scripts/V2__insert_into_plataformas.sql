INSERT INTO plataformas (nome, fabricante)
VALUES
    ('PC', 'Microsoft'),
    ('PlayStation 5', 'Sony'),
    ('PlayStation 4', 'Sony'),
    ('Xbox Series X/S', 'Microsoft'),
    ('Xbox One', 'Microsoft'),
    ('Nintendo Switch', 'Nintendo')
ON CONFLICT (nome) DO NOTHING;
