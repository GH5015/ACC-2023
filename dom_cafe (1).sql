-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 25-Set-2023 às 04:45
-- Versão do servidor: 5.7.17
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dom_cafe`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `estoque`
--

CREATE TABLE `estoque` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nome` varchar(255) NOT NULL,
  `validade` varchar(255) NOT NULL,
  `quantidade` double NOT NULL,
  `custo` double NOT NULL,
  `fornecedor_id` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `estoque`
--

INSERT INTO `estoque` (`id`, `nome`, `validade`, `quantidade`, `custo`, `fornecedor_id`) VALUES
(12, 'stévia', 'indeterminado', 1000, 0.3, 10),
(11, 'grão de café', '30/05/25', 2000, 0.7, 1),
(10, 'fermento biológico', '09/10/23', 100, 2, 7);

-- --------------------------------------------------------

--
-- Estrutura da tabela `finanças`
--

CREATE TABLE `finanças` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `descrição` varchar(255) NOT NULL,
  `tipo` varchar(255) NOT NULL,
  `valor` double NOT NULL,
  `data` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `finanças`
--

INSERT INTO `finanças` (`id`, `descrição`, `tipo`, `valor`, `data`) VALUES
(1, 'Energia', 'Despesa', 500, '04/01/2023'),
(2, 'cappucino', 'Receita', 12, '05/01/2023'),
(3, 'farinha de rosca', 'Despesa', 600, '24/09/23'),
(4, 'fermento biológico', 'Despesa', 200, '24/09/23'),
(5, 'grão de café', 'Despesa', 1400, '24/09/23'),
(6, 'Restituição imposto', 'Receita', 4000, '10/10/2022'),
(7, 'stévia', 'Despesa', 300, '24/09/23');

-- --------------------------------------------------------

--
-- Estrutura da tabela `fornecedores`
--

CREATE TABLE `fornecedores` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nome` varchar(255) NOT NULL,
  `produtoFornecido` varchar(255) NOT NULL,
  `cnpj` varchar(255) NOT NULL,
  `telefone` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `fornecedores`
--

INSERT INTO `fornecedores` (`id`, `nome`, `produtoFornecido`, `cnpj`, `telefone`, `email`) VALUES
(1, 'celso', 'café', '28983483-23', '219987654732', ''),
(5, 'josé', 'farinha', '3433334-55', '2132343434', ''),
(6, 'maria', 'açúcar', '21232323123-42', '3154534545345', ''),
(7, 'mauro', 'fermento', '2332342334-65', '889865435343453434', ''),
(10, 'su adoçantes', 'stévia', '111111199', '26650446', 'suali@gmail.com');

-- --------------------------------------------------------

--
-- Estrutura da tabela `metas`
--

CREATE TABLE `metas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `descrição` varchar(255) NOT NULL,
  `prazo` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `metas`
--

INSERT INTO `metas` (`id`, `descrição`, `prazo`) VALUES
(1, 'Vender 50 capuccinos', '21/11/23'),
(2, 'Trocar fornecedor de farinha', 'Amanhã');

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuário`
--

CREATE TABLE `usuário` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nomeUsuário` varchar(50) NOT NULL,
  `senha` varchar(100) NOT NULL,
  `nomeCompletoUsuário` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `usuário`
--

INSERT INTO `usuário` (`id`, `nomeUsuário`, `senha`, `nomeCompletoUsuário`) VALUES
(10, 'dds', '1234', 'davi pipini'),
(6, 'gh', 'gostoso', 'Gustavo'),
(8, 'henry', '1234', 'henry'),
(9, 'bn', '1234', 'bruno'),
(11, 'mae', 'teamo', 'sulaine');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `estoque`
--
ALTER TABLE `estoque`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `fornecedor_id` (`fornecedor_id`);

--
-- Indexes for table `finanças`
--
ALTER TABLE `finanças`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `fornecedores`
--
ALTER TABLE `fornecedores`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `metas`
--
ALTER TABLE `metas`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `usuário`
--
ALTER TABLE `usuário`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `estoque`
--
ALTER TABLE `estoque`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `finanças`
--
ALTER TABLE `finanças`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `fornecedores`
--
ALTER TABLE `fornecedores`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `metas`
--
ALTER TABLE `metas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `usuário`
--
ALTER TABLE `usuário`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
