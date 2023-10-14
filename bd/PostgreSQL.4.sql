CREATE TABLE cliente (
  id SERIAL PRIMARY KEY,
  nome VARCHAR(16) not NULL,
  sobrenome VARCHAR(24) not NULL,
  idade INT,
  pais VARCHAR(4)
);

CREATE TABLE produto (
  ID SERIAL PRIMARY KEY,
  item VARCHAR(48) NOT NULL,
  marca VARCHAR (24) NOT NULL
);

CREATE TABLE pedido (
  id SERIAL PRIMARY KEY,
  fk_id_cliente INT NOT NULL,
  fk_id_produto INT NOT NULL,
  quantidade INT NOT NULL,
  CONSTRAINT fk_cliente FOREIGN KEY (fk_id_cliente) REFERENCES cliente(id),
  CONSTRAINT fk_produto FOREIGN KEY (fk_id_produto) REFERENCES produto(id)
);

INSERT INTO cliente (nome, sobrenome, idade, pais) VALUES
  ('João', 'Alves', 48, 'BR'),
  ('Roberto', 'Garcia', 36, 'MX'),
  ('Dario', 'Rubens', 39, 'ARG'),
  ('Julia', 'Lopes', 28, 'PE'),
  ('Rebeca', 'Giglio', 54, 'IT');

INSERT INTO produto (item, marca) VALUES
  ('teclado', 'Logitech'),
  ('mouse', 'HP'),
  ('monitor', 'LG'),
  ('mousepad', 'Logitech');

INSERT INTO pedido (fk_id_produto, fk_id_cliente, quantidade) VALUES
  (1, 4, 200),
  (2, 4, 800),
  (3, 3, 100),
  (1, 1, 400),
  (4, 2, 1200);
  
  
  SELECT * FROM PEDIDO
  INNER JOIN produto
  ON fk_id_produto = produto.id
  inner join cliente
  on fk_id_cliente = cliente.id
  where pedido.quantidade >300
  
  select p.id as pedido, p.quantidade as qtde, pr.item as produto, c.nome
  from pedido p 
  join produto pr 
  on p.fk_id_produto = p.id
  join cliente c 
  on p.fk_id_cliente = c.id
  where pr.item = 'teclado'