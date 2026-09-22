CREATE TABLE IF NOT EXISTS plataformas (
    id_plataforma SERIAL PRIMARY KEY,
    nome VARCHAR(60) NOT NULL UNIQUE,
    fabricante VARCHAR(80) NOT NULL
);
