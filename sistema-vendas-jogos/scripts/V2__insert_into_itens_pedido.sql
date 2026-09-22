INSERT INTO itens_pedido (id_pedido, id_jogo, quantidade, preco_unitario)
SELECT p.id_pedido, j.id_jogo, 1, j.preco
FROM pedidos p
JOIN clientes c ON c.id_cliente = p.id_cliente
JOIN jogos j ON j.titulo = 'Minecraft'
WHERE c.email = 'andre.ricardo@example.com'
  AND p.valor_total = 139.80
ON CONFLICT (id_pedido, id_jogo) DO NOTHING;

INSERT INTO itens_pedido (id_pedido, id_jogo, quantidade, preco_unitario)
SELECT p.id_pedido, j.id_jogo, 1, j.preco
FROM pedidos p
JOIN clientes c ON c.id_cliente = p.id_cliente
JOIN jogos j ON j.titulo = 'Terraria'
WHERE c.email = 'andre.ricardo@example.com'
  AND p.valor_total = 139.80
ON CONFLICT (id_pedido, id_jogo) DO NOTHING;

INSERT INTO itens_pedido (id_pedido, id_jogo, quantidade, preco_unitario)
SELECT p.id_pedido, j.id_jogo, 1, j.preco
FROM pedidos p
JOIN clientes c ON c.id_cliente = p.id_cliente
JOIN jogos j ON j.titulo = 'GTA V'
WHERE c.email = 'lucas.silva@example.com'
  AND p.valor_total = 119.90
ON CONFLICT (id_pedido, id_jogo) DO NOTHING;

INSERT INTO itens_pedido (id_pedido, id_jogo, quantidade, preco_unitario)
SELECT p.id_pedido, j.id_jogo, 1, j.preco
FROM pedidos p
JOIN clientes c ON c.id_cliente = p.id_cliente
JOIN jogos j ON j.titulo = 'Hollow Knight'
WHERE c.email = 'gabriel.santos@example.com'
  AND p.valor_total = 296.89
ON CONFLICT (id_pedido, id_jogo) DO NOTHING;

INSERT INTO itens_pedido (id_pedido, id_jogo, quantidade, preco_unitario)
SELECT p.id_pedido, j.id_jogo, 1, j.preco
FROM pedidos p
JOIN clientes c ON c.id_cliente = p.id_cliente
JOIN jogos j ON j.titulo = 'Elden Ring'
WHERE c.email = 'gabriel.santos@example.com'
  AND p.valor_total = 296.89
ON CONFLICT (id_pedido, id_jogo) DO NOTHING;

INSERT INTO itens_pedido (id_pedido, id_jogo, quantidade, preco_unitario)
SELECT p.id_pedido, j.id_jogo, 1, j.preco
FROM pedidos p
JOIN clientes c ON c.id_cliente = p.id_cliente
JOIN jogos j ON j.titulo = 'Minecraft'
WHERE c.email = 'matheus.oliveira@example.com'
  AND p.valor_total = 99.90
ON CONFLICT (id_pedido, id_jogo) DO NOTHING;

INSERT INTO itens_pedido (id_pedido, id_jogo, quantidade, preco_unitario)
SELECT p.id_pedido, j.id_jogo, 1, j.preco
FROM pedidos p
JOIN clientes c ON c.id_cliente = p.id_cliente
JOIN jogos j ON j.titulo = 'Elden Ring'
WHERE c.email = 'joao.pedro@example.com'
  AND p.valor_total = 369.80
ON CONFLICT (id_pedido, id_jogo) DO NOTHING;

INSERT INTO itens_pedido (id_pedido, id_jogo, quantidade, preco_unitario)
SELECT p.id_pedido, j.id_jogo, 1, j.preco
FROM pedidos p
JOIN clientes c ON c.id_cliente = p.id_cliente
JOIN jogos j ON j.titulo = 'GTA V'
WHERE c.email = 'joao.pedro@example.com'
  AND p.valor_total = 369.80
ON CONFLICT (id_pedido, id_jogo) DO NOTHING;
