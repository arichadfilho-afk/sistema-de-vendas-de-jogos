CREATE TABLE IF NOT EXISTS pontuacoes (
    id_cliente INTEGER PRIMARY KEY,
    pontos INTEGER NOT NULL DEFAULT 0 CHECK (pontos >= 0),
    nivel VARCHAR(20) NOT NULL DEFAULT 'NOVATO',
    atualizado_em TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT chk_pontuacoes_nivel
        CHECK (nivel IN ('NOVATO', 'JOGADOR', 'VETERANO', 'LENDA')),
    CONSTRAINT fk_pontuacoes_clientes
        FOREIGN KEY (id_cliente)
        REFERENCES clientes (id_cliente)
        ON UPDATE CASCADE
        ON DELETE CASCADE
);
