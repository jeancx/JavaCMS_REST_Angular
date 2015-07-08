--
-- Database: java_cms
--

-- --------------------------------------------------------

--
-- Estrutura da tabela artigos
--

CREATE TABLE IF NOT EXISTS artigos (
ID SERIAL PRIMARY KEY,
  TITULO varchar(100)  DEFAULT NULL,
  CATEGORIA varchar(50)  DEFAULT NULL,
  CONTEUDO text ,
  AUTOR varchar(100)  DEFAULT NULL
);

--
-- Extraindo dados da tabela artigos
--

INSERT INTO artigos (TITULO, CATEGORIA, CONTEUDO, AUTOR) VALUES
('Teste X', 'Resenhas', '<p>Teste Edi&ccedil;&atilde;o</p>\r\n', 'JosÃ?Â© da Silva Sauro'),
('título do artigo', '', 'conteudo do artigo', 'nome do autor'),
('título do artigo', '', 'conteudo do artigo', 'nome do autor'),
('título do artigo', '', 'conteudo do artigo', 'nome do autor'),
('título do artigo', '', 'conteudo do artigo', 'nome do autor'),
('Teste Edição', '', '<p>Teste Edi&ccedil;&atilde;o</p>\r\n', 'JosÃ© da Silva Sauro'),
('Teste Postagem', '', '<p>Teste Postagem</p>\r\n', 'Teste Postagem'),
('Teste X', 'Diversos', '<p>lol</p>\r\n', '123');

-- --------------------------------------------------------

--
-- Estrutura da tabela banners
--

CREATE TABLE IF NOT EXISTS banners (
  ID SERIAL PRIMARY KEY,
  SRC varchar(255) DEFAULT NULL,
  TITULO varchar(255) DEFAULT NULL
);

-- --------------------------------------------------------

--
-- Estrutura da tabela galerias
--

CREATE TABLE IF NOT EXISTS galerias (
  ID SERIAL PRIMARY KEY,
  DESCRICAO varchar(255) DEFAULT NULL,
  TITULO varchar(255) DEFAULT NULL
);

-- --------------------------------------------------------

--
-- Estrutura da tabela galeria_imgs
--

CREATE TABLE IF NOT EXISTS galeria_imgs (
  ID SERIAL PRIMARY KEY,
  GALERIA_ID integer DEFAULT NULL,
  SRC varchar(255) DEFAULT NULL,
  TITULO varchar(255) DEFAULT NULL
);

-- --------------------------------------------------------

--
-- Estrutura da tabela menus
--

CREATE TABLE IF NOT EXISTS menus (
  ID SERIAL PRIMARY KEY,
  LINK varchar(255) DEFAULT NULL,
  PAI integer DEFAULT NULL,
  TITULO varchar(255) DEFAULT NULL
);

-- --------------------------------------------------------

--
-- Estrutura da tabela pages
--

CREATE TABLE IF NOT EXISTS pages (
  ID SERIAL PRIMARY KEY,
  AUTOR varchar(255) DEFAULT NULL,
  CONTEUDO varchar(255) DEFAULT NULL,
  TITULO varchar(255) DEFAULT NULL
);

-- --------------------------------------------------------

--
-- Estrutura da tabela users
--

CREATE TABLE IF NOT EXISTS users (
  ID SERIAL PRIMARY KEY,
  EMAIL varchar(255) DEFAULT NULL,
  NOME varchar(255) DEFAULT NULL,
  SENHA varchar(255) DEFAULT NULL
);