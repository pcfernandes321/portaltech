CREATE TABLE clientes (
    id serial PRIMARY KEY,
    nome VARCHAR (255) NOT NULL,
    data_cadastro DATE NOT NULL
);

INSERT INTO clientes (nome, data_cadastro) VALUES
('Cliente 1', '2023-10-15'),
('Cliente 2', '2023-10-15'),
('Cliente 3', '2023-10-15'),
('Cliente 4', '2023-10-14'),
('Cliente 5', '2023-10-14');




CREATE OR REPLACE FUNCTION contarClientesPorDia(data_pesquisa DATE)
RETURNS INTEGER AS $$
DECLARE
    total INTEGER;
BEGIN
    SELECT COUNT(*) INTO total
    FROM clientes
    WHERE data_cadastro = data_pesquisa;
    RETURN total;
END;
$$ LANGUAGE plpgsql;


SELECT contarClientesPorDia('2023-10-15');