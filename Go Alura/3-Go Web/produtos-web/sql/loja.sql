CREATE DATABASE loja;

CREATE TABLE public.produtos  (
	id serial4 NOT NULL,
	nome varchar NULL,
	descricao varchar NULL,
	preco numeric NULL,
	quantidade int4 NULL,
	CONSTRAINT produtos_pk PRIMARY KEY (id)
);

