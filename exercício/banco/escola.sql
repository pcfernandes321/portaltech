create database ESCOLA;

create table livro {
   cod_livro int not null auto_increment,
   livro varchar(80) not null,
   autor varchar(80) not null, 
   cod_sessao int,
   primary key(cod_livro),
   constraint fk_livro_sessao foreign key (cod_sessao)  references sessao (codigo)
};

create table sessao{
    codigo int not null auto_increment,
    descricao varchar(10) not null,
    localizacao varchar(20)
    primary key (codigo)
};

create table livro_emprestimo {
    cod_livro int not null,
    cod_emprestimo int not null,
    constraint fk_livro_emprestimo_livro foreign key (cod_livro) references livro (cod_livro),
    constraint fk_livro_emprestimo_emprestimo foreign key (cod_emprestimo) references emprestimo (codigo)
};

create table emprestimo {
    codigo int not null auto_increment,
    data_hora datetime not null,
    matric_aluno int not null,
    data_devolucao datetime not null,
    primary key(codigo),
    constraint foreign key fk_emprestimo_aluno (matric_aluno) references aluno (matricula)
};

create table aluno {
    id int not not auto_increment,
    nome varchar(60) not null,
    matricula int not null,
    email varchar(60) not null,
    endereco varchar (60),
    telefone varchar (15),
    primary key (id),
}