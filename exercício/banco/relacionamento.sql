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



