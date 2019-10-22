-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 23-Out-2019 às 00:39
-- Versão do servidor: 10.4.8-MariaDB
-- versão do PHP: 7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `bd_games`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `generos`
--

CREATE TABLE `generos` (
  `cod` int(11) NOT NULL,
  `genero` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `generos`
--

INSERT INTO `generos` (`cod`, `genero`) VALUES
(1, 'Ação'),
(2, 'Aventura'),
(3, 'Terror'),
(4, 'Plataforma'),
(5, 'Estratégia'),
(6, 'RPG'),
(7, 'Esporte'),
(8, 'Corrida'),
(9, 'Tabuleiro'),
(10, 'Puzzle'),
(11, 'Luta'),
(12, 'Musical');

-- --------------------------------------------------------

--
-- Estrutura da tabela `jogos`
--

CREATE TABLE `jogos` (
  `cod` int(11) NOT NULL,
  `nome` varchar(40) NOT NULL,
  `genero` int(11) NOT NULL,
  `produtora` int(11) NOT NULL,
  `descricao` text NOT NULL,
  `nota` decimal(4,2) NOT NULL,
  `capa` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `jogos`
--

INSERT INTO `jogos` (`cod`, `nome`, `genero`, `produtora`, `descricao`, `nota`, `capa`) VALUES
(1, 'Mário', 2, 3, 'Um jogo', '9.20', NULL),
(2, 'Call of duty', 1, 7, 'Jogo de tiro', '3.50', 'cod.png'),
(3, 'League of Legends', 1, 4, 'League of Legends abreviado como LoL é um jogo eletrônico do gênero m', '8.50', 'lol.png'),
(4, 'Donkey Kong', 2, 5, 'Donkey Kong Country: Tropical Freeze é um jogo eletrôni', '6.00', NULL),
(5, 'Sonic', 2, 9, 'Sonic Style', '8.00', 'sonic.png'),
(6, 'God of War', 1, 6, 'Muita luta', '9.00', NULL),
(7, 'Counter-Strike', 1, 13, 'Counter-Strike (também abreviado por CS) é um popular jogo eletrônico de tiro em primeira pessoa. Inicialmente criado como um \"mod\" de Half-Life para jogos online, foi desenvolvido por Minh Le e Jess Cliffe e depois adquirido pela Valve Corporation. Foi lançado em 1999, porém em 2000 ele começou a ser comercializado oficialmente, e posteriormente foram feitas versões para Xbox, Mac OS X e Linux. Atualmente o game é jogado na versão Counter-Strike: Global Offensive.O jogo é baseado em rodadas nas quais equipes de contra-terroristas e terroristas combatem-se até a eliminação completa de um dos times, e tem como objetivo principal plantar e desarmar bombas, ou sequestrar e salvar reféns.\r\n\r\nO Counter-Strike foi um dos responsáveis pela massificação dos jogos por rede no início do século, sendo considerado o grande responsável pela popularização das LAN houses no mundo. O jogo é considerado o originador do \"esporte eletrônico\", onde muitos jogadores levam-no a sério e recebem salários fixos, existindo até clãs profissionais, e que são patrocinados por grandes empresas como a Intel e a NVIDIA. Pelo mundo existem ligas profissionais onde o Counter-Strike está presente, como o caso da CPL (que encerrou suas atividades em 2008), ESWC, ESL, WCG e WEG. No caso da ESWC funciona da seguinte forma: cada país tem as suas qualificações no qual qualquer clã pode ir a uma qualificação em uma lan house em qualquer parte do mesmo país, passando depois às melhores equipes, as melhores equipes de cada país encontram-se depois no complexo da ESWC, localizado em Paris, para disputar o lugar da melhor equipe do mundo de Counter-Strike.', '9.00', 'cs.png'),
(8, 'Grand Theft Auto V', 2, 14, 'Grand Theft Auto V é um jogo eletrônico de ação-aventura dese', '10.00', NULL),
(9, 'Metal Gear Solid V', 6, 11, 'Metal Gear Solid V: The Phantom Pa', '8.00', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `produtoras`
--

CREATE TABLE `produtoras` (
  `cod` int(11) NOT NULL,
  `produtora` varchar(20) NOT NULL,
  `pais` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `produtoras`
--

INSERT INTO `produtoras` (`cod`, `produtora`, `pais`) VALUES
(1, 'Microsoft', 'EUA'),
(2, 'Tencent', 'China'),
(3, 'Nintendo', 'Japão'),
(4, 'Sony', 'Japão'),
(5, 'Activision', 'EUA'),
(6, 'EA', 'EUA'),
(7, 'Sega', 'Japão'),
(8, 'Namco Bandai', 'Japão'),
(9, 'Konami', 'Japão'),
(10, 'Ubisoft', 'EUA'),
(11, 'Valve', 'EUA'),
(12, 'Square Enix', 'Japão'),
(13, 'Take Two', 'EUA'),
(14, 'Capcom', 'Japão');

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `usuario` varchar(10) NOT NULL,
  `nome` varchar(30) NOT NULL,
  `senha` varchar(60) NOT NULL,
  `tipo` varchar(10) NOT NULL DEFAULT 'editor'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `usuarios`
--

INSERT INTO `usuarios` (`usuario`, `nome`, `senha`, `tipo`) VALUES
('admin', 'Diego herculano', '$2y$10$UpMQCcir.v649HrdLvUXiOC/ftU7xWhSxm8QhX.VzSe9LZHhvW/Ty', 'admin'),
('teste', 'João da Silva', '$2y$10$w7on7cjLKNtmJUGkiHIXoOQAwTJzkgxXqLmjtfDUkCXmQK0784.IS', 'editor');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `generos`
--
ALTER TABLE `generos`
  ADD PRIMARY KEY (`cod`);

--
-- Índices para tabela `jogos`
--
ALTER TABLE `jogos`
  ADD PRIMARY KEY (`cod`),
  ADD KEY `genero` (`genero`),
  ADD KEY `produtora` (`produtora`);

--
-- Índices para tabela `produtoras`
--
ALTER TABLE `produtoras`
  ADD PRIMARY KEY (`cod`);

--
-- Índices para tabela `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`usuario`);

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `jogos`
--
ALTER TABLE `jogos`
  ADD CONSTRAINT `jogos_ibfk_1` FOREIGN KEY (`genero`) REFERENCES `generos` (`cod`),
  ADD CONSTRAINT `jogos_ibfk_2` FOREIGN KEY (`produtora`) REFERENCES `produtoras` (`cod`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
