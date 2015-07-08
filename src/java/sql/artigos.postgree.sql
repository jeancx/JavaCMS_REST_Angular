CREATE SEQUENCE hibernate_sequence
  INCREMENT 1
  MINVALUE 1
  MAXVALUE 9223372036854775807
  START 1
  CACHE 1;
  
CREATE TABLE artigos
(
  id integer NOT NULL DEFAULT nextval('hibernate_sequence'::regclass),
  titulo character varying(100) DEFAULT NULL::character varying,
  categoria character varying(50) DEFAULT NULL::character varying,
  conteudo text,
  autor character varying(100) DEFAULT NULL::character varying,
  CONSTRAINT artigos_pkey PRIMARY KEY (id)
);

 INSERT INTO artigos (titulo, categoria, conteudo, autor) VALUES
('Teste X', 'Resenhas', '<p>Teste Edi&ccedil;&atilde;o</p>\r\n', 'JosÃ?Â© da Silva Sauro'),
('título do artigo', '', 'conteudo do artigo', 'nome do autor'),
('título do artigo', '', 'conteudo do artigo', 'nome do autor'),
('título do artigo', '', 'conteudo do artigo', 'nome do autor'),
('título do artigo', '', 'conteudo do artigo', 'nome do autor'),
('Teste Edição', '', '<p>Teste Edi&ccedil;&atilde;o</p>\r\n', 'JosÃ© da Silva Sauro'),
('Teste Postagem', '', '<p>Teste Postagem</p>\r\n', 'Teste Postagem'),
('Teste X', 'Diversos', '<p>lol</p>\r\n', '123');