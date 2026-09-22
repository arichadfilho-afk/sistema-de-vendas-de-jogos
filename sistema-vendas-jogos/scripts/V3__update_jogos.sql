-- Atualiza o preço do Terraria para demonstrar o comando UPDATE.
UPDATE jogos
SET preco = 44.90
WHERE titulo = 'Terraria';

-- Atualiza o status do pedido de Matheus para demonstrar outra alteração.
UPDATE pedidos p
SET status = 'PAGO'
FROM clientes c
WHERE p.id_cliente = c.id_cliente
  AND c.email = 'matheus.oliveira@example.com'
  AND p.status = 'PENDENTE';
