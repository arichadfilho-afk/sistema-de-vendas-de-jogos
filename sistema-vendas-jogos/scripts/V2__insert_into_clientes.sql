INSERT INTO clientes (nome, email)
VALUES
    ('André Ricardo', 'andre.ricardo@example.com'),
    ('Lucas Silva', 'lucas.silva@example.com'),
    ('Gabriel Santos', 'gabriel.santos@example.com'),
    ('Matheus Oliveira', 'matheus.oliveira@example.com'),
    ('João Pedro', 'joao.pedro@example.com')
ON CONFLICT (email) DO NOTHING;
