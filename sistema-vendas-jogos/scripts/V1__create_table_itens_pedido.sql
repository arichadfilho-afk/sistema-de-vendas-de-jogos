CREATE TABLE IF NOT EXISTS itens_pedido (
    id_item SERIAL PRIMARY KEY,
    id_pedido INTEGER NOT NULL,
    id_jogo INTEGER NOT NULL,
    quantidade INTEGER NOT NULL DEFAULT 1 CHECK (quantidade > 0),
    preco_unitario NUMERIC(10, 2) NOT NULL CHECK (preco_unitario >= 0),
    CONSTRAINT uq_itens_pedido_jogo UNIQUE (id_pedido, id_jogo),
    CONSTRAINT fk_itens_pedido_pedidos
        FOREIGN KEY (id_pedido)
        REFERENCES pedidos (id_pedido)
        ON UPDATE CASCADE
        ON DELETE CASCADE,
    CONSTRAINT fk_itens_pedido_jogos
        FOREIGN KEY (id_jogo)
        REFERENCES jogos (id_jogo)
        ON UPDATE CASCADE
        ON DELETE RESTRICT
);
