CREATE DATABASE biblioteca;

use biblioteca;

CREATE TABLE livros (
    id serial PRIMARY KEY NOT NULL,
    titulo VARCHAR(255) NOT NULL,
    autor VARCHAR(255) NOT NULL,
    ano_publicacao INT
);


CREATE TABLE emprestimos (
    id serial PRIMARY KEY NOT NULL,
    data_emprestimo DATE NOT NULL,
    data_devolucao DATE,
    livro_id INT REFERENCES livros(id)
);

CREATE TABLE Lembretes (
    lembrete_id SERIAL PRIMARY KEY,
    descricao TEXT,
    data_lembrete DATE
);


INSERT INTO livros (titulo, autor, ano_publicacao) VALUES
    ('SQL', 'JOÃO', 2023),
    ('JAVASCRIPT', 'JOSÉ', 2022),
    ('PYTHON', 'MARIA', 2021);

INSERT INTO emprestimos (data_emprestimo, data_devolucao, livro_id) VALUES
    ('2023-10-01', '2023-10-08', 1),
    ('2023-10-02', '2023-10-09', 2),
    ('2023-10-03', '2023-10-10', 3);

SELECT * FROM livros;

select * FROM emprestimos;

SELECT livros.titulo, emprestimos.data_emprestimo, emprestimos.data_devolucao
FROM livros
INNER JOIN emprestimos ON livros.id = emprestimos.livro_id;


CREATE OR REPLACE FUNCTION adicionar_lembrete_emprestimo() RETURNS TRIGGER AS $$
BEGIN
    INSERT INTO Lembretes (descricao, data_lembrete)
    VALUES (
        'Devolver o livro "' || (SELECT titulo FROM Livros WHERE livro_id = NEW.livro_id) || '" em ' || NEW.data_devolucao,
        NEW.data_devolucao
    );
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

select * from lembretes 