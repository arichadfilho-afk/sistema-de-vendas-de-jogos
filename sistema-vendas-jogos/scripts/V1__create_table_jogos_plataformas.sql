CREATE TABLE IF NOT EXISTS jogos_plataformas (
    id_jogo INTEGER NOT NULL,
    id_plataforma INTEGER NOT NULL,
    PRIMARY KEY (id_jogo, id_plataforma),
    CONSTRAINT fk_jogos_plataformas_jogo
        FOREIGN KEY (id_jogo)
        REFERENCES jogos (id_jogo)
        ON UPDATE CASCADE
        ON DELETE CASCADE,
    CONSTRAINT fk_jogos_plataformas_plataforma
        FOREIGN KEY (id_plataforma)
        REFERENCES plataformas (id_plataforma)
        ON UPDATE CASCADE
        ON DELETE RESTRICT
);
