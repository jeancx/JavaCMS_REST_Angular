--
-- Database: `java_cms`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `artigos`
--

CREATE TABLE IF NOT EXISTS `artigos` (
`ID` int(11) unsigned NOT NULL,
  `TITULO` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `CATEGORIA` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `CONTEUDO` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `AUTOR` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=17 ;

--
-- Extraindo dados da tabela `artigos`
--

INSERT INTO `artigos` (`ID`, `TITULO`, `CATEGORIA`, `CONTEUDO`, `AUTOR`) VALUES
(9, 'Teste X', 'Resenhas', '<p>Teste Edi&ccedil;&atilde;o</p>\r\n', 'JosÃ?Â© da Silva Sauro'),
(10, 'título do artigo', '', 'conteudo do artigo', 'nome do autor'),
(11, 'título do artigo', '', 'conteudo do artigo', 'nome do autor'),
(12, 'título do artigo', '', 'conteudo do artigo', 'nome do autor'),
(13, 'título do artigo', '', 'conteudo do artigo', 'nome do autor'),
(14, 'Teste Edição', '', '<p>Teste Edi&ccedil;&atilde;o</p>\r\n', 'JosÃ© da Silva Sauro'),
(15, 'Teste Postagem', '', '<p>Teste Postagem</p>\r\n', 'Teste Postagem'),
(16, 'Teste X', 'Diversos', '<p>lol</p>\r\n', '123');

-- --------------------------------------------------------

--
-- Estrutura da tabela `banners`
--

CREATE TABLE IF NOT EXISTS `banners` (
  `ID` int(11) NOT NULL,
  `SRC` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TITULO` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `galerias`
--

CREATE TABLE IF NOT EXISTS `galerias` (
  `ID` int(11) NOT NULL,
  `DESCRICAO` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TITULO` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `galeria_imgs`
--

CREATE TABLE IF NOT EXISTS `galeria_imgs` (
  `ID` int(11) NOT NULL,
  `GALERIA_ID` int(11) DEFAULT NULL,
  `SRC` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TITULO` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `menus`
--

CREATE TABLE IF NOT EXISTS `menus` (
  `ID` int(11) NOT NULL,
  `LINK` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PAI` int(11) DEFAULT NULL,
  `TITULO` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `pages`
--

CREATE TABLE IF NOT EXISTS `pages` (
  `ID` int(11) NOT NULL,
  `AUTOR` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CONTEUDO` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TITULO` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `sequence`
--

CREATE TABLE IF NOT EXISTS `sequence` (
  `SEQ_NAME` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `SEQ_COUNT` decimal(38,0) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `sequence`
--

INSERT INTO `sequence` (`SEQ_NAME`, `SEQ_COUNT`) VALUES
('SEQ_GEN', '0');

-- --------------------------------------------------------

--
-- Estrutura da tabela `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `ID` int(11) NOT NULL,
  `EMAIL` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NOME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SENHA` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `artigos`
--
ALTER TABLE `artigos`
 ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
 ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `galerias`
--
ALTER TABLE `galerias`
 ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `galeria_imgs`
--
ALTER TABLE `galeria_imgs`
 ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
 ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
 ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `sequence`
--
ALTER TABLE `sequence`
 ADD PRIMARY KEY (`SEQ_NAME`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
 ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for table `artigos`
--
ALTER TABLE `artigos`
MODIFY `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=17;