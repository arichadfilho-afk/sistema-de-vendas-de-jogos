CREATE TABLE IF NOT EXISTS conquistas_clientes (
    id_cliente INTEGER NOT NULL,
    id_conquista INTEGER NOT NULL,
    data_conquista TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (id_cliente, id_conquista),
    CONSTRAINT fk_conquistas_clientes_cliente
        FOREIGN KEY (id_cliente)
        REFERENCES clientes (id_cliente)
        ON UPDATE CASCADE
        ON DELETE CASCADE,
    CONSTRAINT fk_conquistas_clientes_conquista
        FOREIGN KEY (id_conquista)
        REFERENCES conquistas (id_conquista)
        ON UPDATE CASCADE
        ON DELETE CASCADE
);
