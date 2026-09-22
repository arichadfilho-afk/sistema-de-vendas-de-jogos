CREATE TABLE IF NOT EXISTS conquistas (
    id_conquista SERIAL PRIMARY KEY,
    nome VARCHAR(80) NOT NULL UNIQUE,
    descricao VARCHAR(255) NOT NULL,
    pontos_bonus INTEGER NOT NULL DEFAULT 0 CHECK (pontos_bonus >= 0)
);
