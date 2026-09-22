-- Exemplo de DELETE.
-- O jogo de teste abaixo não possui registros relacionados e pode ser removido.
INSERT INTO jogos (titulo, id_genero, preco, data_lancamento)
SELECT 'Jogo de Teste para Exclusão', id_genero, 10.00, CURRENT_DATE
FROM generos
WHERE nome = 'Sandbox'
ON CONFLICT (titulo) DO NOTHING;

DELETE FROM jogos
WHERE titulo = 'Jogo de Teste para Exclusão';

-- A exclusão de um jogo utilizado em um pedido não é permitida
-- pela FK itens_pedido_jogo, demonstrando a integridade referencial.
-- Exemplo que NÃO deve ser executado como parte do fluxo principal:
--
-- DELETE FROM jogos WHERE titulo = 'Minecraft';
