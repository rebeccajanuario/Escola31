CREATE DATABASE escola31;
USE escola31;

create table aluno(
	nome varchar(75) not null,
	email varchar(75) not null,
	senha varchar(11) not null,
	cpf varchar(11) not null,
	idAluno integer primary key auto_increment
	);

create table curso(
	nome varchar(25) not null,
	idCurso integer primary key auto_increment
	);

create table matricula(
	ativa integer not null,
	data_cadastro date not null,
	idMatricula integer primary key auto_increment
	idAluno integer,
	idCurso integer,
	foreign key(id_Aluno) references aluno(idAluno),
	foreign key(id_Curso) references curso(idCurso),
	);
	
create table professor(
	nome varchar(75) not null,
	email varchar(75) not null,
	senha varchar(10) not null,
	id integer primary key auto_increment
	);
	
create table disciplina(
	nome varchar(75) not null,
	id integer primary key auto_increment,
	idProfessor integer,
	foreign key(id_Professor) references professor(idProfessor)
	);

create table disciplina_curso(
	idDisciplinaCurso integer primary key auto_increment,
	idCurso integer,
	idDisciplina integer,
	foreign key(id_Curso) references curso(id),
	foreign key(id_Disciplina) references disciplina(idDisciplinaCurso)
	);
	
-- Exercicio 1
ALTER TABLE disciplina
CHANGE nome nomeDisc VARCHAR(75); 

-- Exercicio 2
ALTER TABLE professor
CHANGE email mail VARCHAR(100);

-- Exercicio 3
RENAME TABLE aluno TO discente;

-- Exercicio 4
RENAME TABLE professor TO docente;

-- Exercicio 5
ALTER TABLE discente
ADD endereco VARCHAR(150); 

-- Exercicio 6
ALTER TABLE discente
DROP cpf;

-- Exercicio 7
ALTER TABLE curso
ADD campo duracao TIME;

