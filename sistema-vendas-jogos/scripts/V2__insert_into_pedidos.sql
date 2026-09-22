INSERT INTO pedidos (id_cliente, status, valor_total)
SELECT id_cliente, 'PAGO', 139.80
FROM clientes
WHERE email = 'andre.ricardo@example.com'
AND NOT EXISTS (
    SELECT 1 FROM pedidos p
    WHERE p.id_cliente = clientes.id_cliente
      AND p.valor_total = 139.80
);

INSERT INTO pedidos (id_cliente, status, valor_total)
SELECT id_cliente, 'PAGO', 119.90
FROM clientes
WHERE email = 'lucas.silva@example.com'
AND NOT EXISTS (
    SELECT 1 FROM pedidos p
    WHERE p.id_cliente = clientes.id_cliente
      AND p.valor_total = 119.90
);

INSERT INTO pedidos (id_cliente, status, valor_total)
SELECT id_cliente, 'PAGO', 296.89
FROM clientes
WHERE email = 'gabriel.santos@example.com'
AND NOT EXISTS (
    SELECT 1 FROM pedidos p
    WHERE p.id_cliente = clientes.id_cliente
      AND p.valor_total = 296.89
);

INSERT INTO pedidos (id_cliente, status, valor_total)
SELECT id_cliente, 'PENDENTE', 99.90
FROM clientes
WHERE email = 'matheus.oliveira@example.com'
AND NOT EXISTS (
    SELECT 1 FROM pedidos p
    WHERE p.id_cliente = clientes.id_cliente
      AND p.valor_total = 99.90
);

INSERT INTO pedidos (id_cliente, status, valor_total)
SELECT id_cliente, 'PAGO', 369.80
FROM clientes
WHERE email = 'joao.pedro@example.com'
AND NOT EXISTS (
    SELECT 1 FROM pedidos p
    WHERE p.id_cliente = clientes.id_cliente
      AND p.valor_total = 369.80
);
