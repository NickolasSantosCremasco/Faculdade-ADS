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
-- Banco de dados: `cantina`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `alunos`
--

CREATE TABLE `alunos` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `turma` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `alunos`
--

INSERT INTO `alunos` (`id`, `nome`, `turma`) VALUES
(1, 'Ana Souza', '1A'),
(2, 'Bruno Lima', '1B'),
(3, 'Carla Dias', '1A'),
(4, 'Diego Reis', '2C');

-- --------------------------------------------------------

--
-- Estrutura para tabela `produtos`
--

CREATE TABLE `produtos` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `preco` decimal(10,2) NOT NULL,
  `estoque` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `produtos`
--

INSERT INTO `produtos` (`id`, `nome`, `preco`, `estoque`) VALUES
(1, 'Coca-Cola Lata', 5.00, 30),
(2, 'Salgado Assado', 7.50, 20),
(3, 'Suco de Laranja', 4.00, 25),
(4, 'Chocolate', 3.50, 40),
(5, 'Água Mineral', 250.00, 50);

-- --------------------------------------------------------

--
-- Estrutura para tabela `vendas`
--

CREATE TABLE `vendas` (
  `id` int(11) NOT NULL,
  `aluno_id` int(11) DEFAULT NULL,
  `produto_id` int(11) DEFAULT NULL,
  `data_venda` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `vendas`
--

INSERT INTO `vendas` (`id`, `aluno_id`, `produto_id`, `data_venda`) VALUES
(1, 1, 1, '2026-10-06 23:38:42'),
(2, 1, 2, '2026-10-06 23:38:42'),
(3, 2, 3, '2026-10-06 23:38:42'),
(4, 3, 1, '2026-10-06 23:38:42'),
(5, 3, 4, '2026-10-06 23:38:42'),
(6, 4, 2, '2026-10-06 23:38:42'),
(7, 1, 4, '2026-10-06 23:38:42'),
(8, 2, 1, '2026-10-06 23:38:42');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `alunos`
--
ALTER TABLE `alunos`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `produtos`
--
ALTER TABLE `produtos`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `vendas`
--
ALTER TABLE `vendas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `aluno_id` (`aluno_id`),
  ADD KEY `produto_id` (`produto_id`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `alunos`
--
ALTER TABLE `alunos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `produtos`
--
ALTER TABLE `produtos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `vendas`
--
ALTER TABLE `vendas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `vendas`
--
ALTER TABLE `vendas`
  ADD CONSTRAINT `vendas_ibfk_1` FOREIGN KEY (`aluno_id`) REFERENCES `alunos` (`id`),
  ADD CONSTRAINT `vendas_ibfk_2` FOREIGN KEY (`produto_id`) REFERENCES `produtos` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
