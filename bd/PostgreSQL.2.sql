CREATE TABLE cliente (
  id SERIAL PRIMARY KEY,
  nome VARCHAR(16) not NULL,
  sobrenome VARCHAR(24) not NULL,
  idade INT,
  pais VARCHAR(4)
);

CREATE TABLE pedido (
  ID SERIAL PRIMARY KEY,
  item VARCHAR(48) NOT NULL,
  quantidade INT NOT NULL,
  fk_id_cliente INT NOT NULL,
  CONSTRAINT fk_cliente FOREIGN KEY (fk_id_cliente) REFERENCES cliente(id)
);

INSERT INTO cliente (nome, sobrenome, idade, pais) VALUES
  ('João', 'Alves', 48, 'BR'),
  ('Roberto', 'Garcia', 36, 'MX'),
  ('Dario', 'Rubens', 39, 'ARG'),
  ('Julia', 'Lopes', 28, 'PE'),
  ('Rebeca', 'Giglio', 54, 'IT');
  
INSERT INTO pedido (item, quantidade, fk_id_cliente) VALUES
  ('teclado', 1, 4),
  ('mouse', 2, 4),
  ('monitor', 8, 3),
  ('teclado', 1, 1),
  ('mousepad', 4, 2);
  
  SELECT * FROM pedido 
  inner join cliente
  on pedido.fk_id_cliente = cliente.id
  
  select p.id AS IDP, P.quantidade as qdt, c.nome as name
  from pedido p
  inner join cliente c 
  on p.fk_id_cliente = c.id
  
  select p.id AS IDP, P.quantidade as qdt, c.nome as name
  from pedido p
  right join cliente c 
  on p.fk_id_cliente = c.id
  
  select * from cliente
  
  select * from pedido