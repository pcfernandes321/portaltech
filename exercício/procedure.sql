CREATE OR REPLACE PROCEDURE relatorio_compras_produtos_diario(data_param DATE)
LANGUAGE plpgsql
AS $$
DECLARE
    quantidade_produtos INT;
BEGIN
    SELECT COUNT(*) INTO quantidade_produtos
    FROM vendas
    WHERE data_venda = data_param;

    -- resultado
    RAISE NOTICE 'No dia %, foram comprados % produtos.', data_param, quantidade_produtos;
END;
$$;