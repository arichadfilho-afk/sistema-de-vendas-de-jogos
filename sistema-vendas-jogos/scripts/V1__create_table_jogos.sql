CREATE TABLE IF NOT EXISTS jogos (
    id_jogo SERIAL PRIMARY KEY,
    titulo VARCHAR(120) NOT NULL UNIQUE,
    id_genero INTEGER NOT NULL,
    preco NUMERIC(10, 2) NOT NULL CHECK (preco >= 0),
    data_lancamento DATE,
    CONSTRAINT fk_jogos_generos
        FOREIGN KEY (id_genero)
        REFERENCES generos (id_genero)
        ON UPDATE CASCADE
        ON DELETE RESTRICT
);
