-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 07/10/2026 às 02:49
-- Versão do servidor: 10.4.32-MariaDB
-- Versão do PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `editora_db`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `autor`
--

CREATE TABLE `autor` (
  `CodAutor` int(11) NOT NULL,
  `Nome` char(50) NOT NULL,
  `Nascimento` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `autor`
--

INSERT INTO `autor` (`CodAutor`, `Nome`, `Nascimento`) VALUES
(101, 'Machado de Assis', '1839-06-21'),
(102, 'Clarice Lispector', '1920-12-10'),
(103, 'Jorge Amado', '1912-08-10');

-- --------------------------------------------------------

--
-- Estrutura para tabela `editora`
--

CREATE TABLE `editora` (
  `CodEditora` int(11) NOT NULL,
  `Razao` char(50) DEFAULT NULL,
  `Endereco` char(50) DEFAULT NULL,
  `Cidade` char(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `editora`
--

INSERT INTO `editora` (`CodEditora`, `Razao`, `Endereco`, `Cidade`) VALUES
(1, 'Companhia das Letras', 'Rua Bandeira Paulista, 702', 'São Paulo'),
(2, 'Editora Rocco', 'Avenida Presidente Vargas, 126', 'Rio de Janeiro'),
(3, 'Grupo Editorial Record', 'Rua Argentina, 171', 'Rio de Janeiro');

-- --------------------------------------------------------

--
-- Estrutura para tabela `livro`
--

CREATE TABLE `livro` (
  `Titulo` char(50) NOT NULL,
  `CodAutor` int(11) NOT NULL,
  `CodEditora` int(11) NOT NULL,
  `Valor` decimal(5,2) DEFAULT NULL CHECK (`Valor` > 10.0),
  `Publicacao` date DEFAULT NULL,
  `Volume` int(11) DEFAULT NULL,
  `Idioma` char(15) DEFAULT 'Português'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `livro`
--

INSERT INTO `livro` (`Titulo`, `CodAutor`, `CodEditora`, `Valor`, `Publicacao`, `Volume`, `Idioma`) VALUES
('A Hora da Estrela', 102, 2, 32.50, '1977-10-26', 1, 'Português'),
('Capitães da Areia', 103, 3, 58.00, '1937-01-01', 1, 'Português'),
('Dom Casmurro', 101, 1, 45.90, '1899-01-01', 1, 'Português');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `autor`
--
ALTER TABLE `autor`
  ADD PRIMARY KEY (`CodAutor`),
  ADD UNIQUE KEY `Nome` (`Nome`);

--
-- Índices de tabela `editora`
--
ALTER TABLE `editora`
  ADD PRIMARY KEY (`CodEditora`);

--
-- Índices de tabela `livro`
--
ALTER TABLE `livro`
  ADD PRIMARY KEY (`Titulo`,`CodAutor`),
  ADD KEY `CodAutor` (`CodAutor`),
  ADD KEY `CodEditora` (`CodEditora`);

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `livro`
--
ALTER TABLE `livro`
  ADD CONSTRAINT `livro_ibfk_1` FOREIGN KEY (`CodAutor`) REFERENCES `autor` (`CodAutor`),
  ADD CONSTRAINT `livro_ibfk_2` FOREIGN KEY (`CodEditora`) REFERENCES `editora` (`CodEditora`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
