create TABLE instrumento (
	id_instrumento serial primary key,
    nome VARCHAR(24) not null, 
    preco float not null, 
    em_promocao BOOLEAN
  )
  
  create TABLE vendedor(
    id_vendedor serial PRIMARY KEY,
    nome VARCHAR(30) not NULL,
    cpf INT NOT NULL,
    endereco varchar(40) not NULL
    )
    
    insert into instrumento (nome, preco, em_promocao)
    values 
    ('teste', 219.99, true)
    
   insert into instrumento (nome, preco, em_promocao)
   VALUES
   ('guitarra', 100, FALSE),
   ('bateria', 150, FALSE),
   ('viola', 50, FALSE)
   
   SELECT * FROM instrumento
   
   insert into vendedor (nome, cpf, endereco)
   VALUES
   ('José', 12,'Rua tal n1'),
   ('Maria',52,'Rua 10 n2'),
   ('James',46, 'Rua treze de maio')
   
   select * from vendedor
   
   SELECT id_instrumento, nome from instrumento
   
   select id_instrumento, nome, preco, em_promocao from instrumento where (preco > 150)
   
   select * from instrumento where em_promocao = 't'
   
 select * from instrumento where em_promocao = 't' and preco > 100 and nome ='teste'
 
 create table produtos (
   id serial PRIMARY KEY,
   nome VARCHAR(50) NOT NULL,
   preco FLOAT not NULL, 
   categoria VARCHAR(20) not NULL,
   data_lancamento date not null
   )
   
   insert into produtos (nome, preco, categoria, data_lancamento)
   values 
   ('Smartphone Galaxy S21', 899.99, 'Smartphone', '2023-03-15'),
   ('Notebook Dell XPS 15',1499.99, 'notebook','2023-04-10'),
   ('Fone de Ouvido Bose QuietComfort', 299.99, 'acessório','2023-03-25'),
   ('Smart TV LG 55" 4K', 799.99, 'tv', '2023-03-01'),
   ('Câmera Canon EOS 80D', 1099.99, 'câmera', '2023-02-20')
   
   select * from produtos where categoria = 'Smartphone' and preco < 1000
   
   SELECT * FROM produtos WHERE categoria = 'notebook' order by preco desc limit 1
   
   select avg (preco) as media from produtos 
   
   select * from produtos where data_lancamento >= '01-01-2023' and preco > 500
   
   select * from produtos order by preco asc limit 1
   
   
   
   