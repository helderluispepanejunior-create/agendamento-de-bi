-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 01-Dez-2025 às 21:39
-- Versão do servidor: 10.4.32-MariaDB
-- versão do PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `bi`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `pedidos`
--

CREATE TABLE `pedidos` (
  `id` int(11) NOT NULL,
  `tipo_bi` varchar(50) DEFAULT NULL,
  `nome` varchar(100) DEFAULT NULL,
  `data_nascimento` date DEFAULT NULL,
  `Idade` int(11) DEFAULT NULL,
  `vitalicio` varchar(10) DEFAULT NULL,
  `num_bi_anterior` varchar(50) DEFAULT NULL,
  `provincia` varchar(50) DEFAULT NULL,
  `distrito` varchar(50) DEFAULT NULL,
  `localidade` varchar(50) DEFAULT NULL,
  `data_agendamento` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `pedidos`
--

INSERT INTO `pedidos` (`id`, `tipo_bi`, `nome`, `data_nascimento`, `Idade`, `vitalicio`, `num_bi_anterior`, `provincia`, `distrito`, `localidade`, `data_agendamento`) VALUES
(1, 'novo', 'Helder Pepane', '2002-05-30', 23, 'Não', '', 'Maputo Cidade', 'Matola', 'Infulene', '2025-11-11'),
(2, 'novo', 'Atalia Pepane', '2008-01-08', 17, 'Não', '', 'Maputo Cidade', 'Matola', 'Infulene', '2025-11-30'),
(3, 'novo', 'elsa bule', '1980-10-30', 45, 'Não', '', 'Maputo Provincia', 'Matola', 'infulene', '2025-11-30'),
(4, 'renovacao', 'Helder Pepane', '2002-05-30', 23, 'Não', '10111100666I', 'Maputo Cidade', 'Matola', 'Maputo Cidade', '2025-12-18'),
(5, 'novo', 'Helder Pepane', '2002-05-30', 23, 'Não', '', 'Maputo Cidade', 'Matola', 'Maputo Cidade', '2025-12-18');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `pedidos`
--
ALTER TABLE `pedidos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `pedidos`
--
ALTER TABLE `pedidos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
