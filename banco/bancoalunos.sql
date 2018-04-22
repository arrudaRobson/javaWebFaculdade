-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 19-Abr-2018 às 03:02
-- Versão do servidor: 10.1.13-MariaDB
-- PHP Version: 5.5.35

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `aulajavaweb`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `bancoalunos`
--

CREATE TABLE `bancoalunos` (
  `ra` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `sexo` varchar(255) NOT NULL,
  `curso` varchar(255) NOT NULL,
  `bolsista` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `bancoalunos`
--

INSERT INTO `bancoalunos` (`ra`, `nome`, `sexo`, `curso`, `bolsista`) VALUES
(1, 'Robson', 'masculino', 'Análise e Desenvolvimento de Sistemas', 'Não');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bancoalunos`
--
ALTER TABLE `bancoalunos`
  ADD PRIMARY KEY (`ra`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bancoalunos`
--
ALTER TABLE `bancoalunos`
  MODIFY `ra` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
