-- Pontuação calculada a partir do valor gasto em cada cliente.
-- 1 ponto corresponde a cada R$ 1,00 gasto.

INSERT INTO pontuacoes (id_cliente, pontos, nivel)
SELECT
    c.id_cliente,
    COALESCE(FLOOR(SUM(p.valor_total)), 0)::INTEGER AS pontos,
    CASE
        WHEN COALESCE(FLOOR(SUM(p.valor_total)), 0) >= 1000 THEN 'LENDA'
        WHEN COALESCE(FLOOR(SUM(p.valor_total)), 0) >= 500 THEN 'VETERANO'
        WHEN COALESCE(FLOOR(SUM(p.valor_total)), 0) >= 100 THEN 'JOGADOR'
        ELSE 'NOVATO'
    END AS nivel
FROM clientes c
LEFT JOIN pedidos p
    ON p.id_cliente = c.id_cliente
GROUP BY c.id_cliente
ON CONFLICT (id_cliente) DO UPDATE
SET pontos = EXCLUDED.pontos,
    nivel = EXCLUDED.nivel,
    atualizado_em = CURRENT_TIMESTAMP;

INSERT INTO conquistas (nome, descricao, pontos_bonus)
VALUES
    ('Primeira Compra', 'Realizou pelo menos uma compra.', 10),
    ('Colecionador', 'Comprou pelo menos 3 jogos diferentes.', 50),
    ('Grande Investidor', 'Gastou pelo menos R$ 500,00.', 100),
    ('Lenda dos Jogos', 'Alcançou pelo menos 1000 pontos.', 250)
ON CONFLICT (nome) DO NOTHING;

-- Primeira Compra
INSERT INTO conquistas_clientes (id_cliente, id_conquista)
SELECT c.id_cliente, co.id_conquista
FROM clientes c
JOIN pedidos p ON p.id_cliente = c.id_cliente
CROSS JOIN conquistas co
WHERE co.nome = 'Primeira Compra'
GROUP BY c.id_cliente, co.id_conquista
ON CONFLICT DO NOTHING;

-- Colecionador: pelo menos 3 jogos diferentes comprados.
INSERT INTO conquistas_clientes (id_cliente, id_conquista)
SELECT c.id_cliente, co.id_conquista
FROM clientes c
JOIN pedidos p ON p.id_cliente = c.id_cliente
JOIN itens_pedido ip ON ip.id_pedido = p.id_pedido
CROSS JOIN conquistas co
WHERE co.nome = 'Colecionador'
GROUP BY c.id_cliente, co.id_conquista
HAVING COUNT(DISTINCT ip.id_jogo) >= 3
ON CONFLICT DO NOTHING;

-- Grande Investidor: pelo menos R$ 500,00 gastos.
INSERT INTO conquistas_clientes (id_cliente, id_conquista)
SELECT p.id_cliente, co.id_conquista
FROM pedidos p
CROSS JOIN conquistas co
WHERE co.nome = 'Grande Investidor'
GROUP BY p.id_cliente, co.id_conquista
HAVING SUM(p.valor_total) >= 500
ON CONFLICT DO NOTHING;

-- Lenda dos Jogos: pelo menos 1000 pontos.
INSERT INTO conquistas_clientes (id_cliente, id_conquista)
SELECT po.id_cliente, co.id_conquista
FROM pontuacoes po
CROSS JOIN conquistas co
WHERE co.nome = 'Lenda dos Jogos'
  AND po.pontos >= 1000
ON CONFLICT DO NOTHING;
