-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 18-Out-2023 às 23:47
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
(13, 'Pó de café', '29/05/2024', 4760, 0.5, 1),
(12, 'stévia', 'indeterminado', 970, 0.3, 10),
(16, 'Amido de milho', '13/04/2026', 400, 0.5, 11),
(17, 'Farinha de trigo', '23/08/2024', 600, 0.4, 13),
(19, 'leite', '20/09/24', 900, 1, 29);

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
(18, 'Restituição imposto', 'Receita', 4000, '18/06/23'),
(10, 'Café expresso', 'Receita', 14, '26/09/23'),
(23, 'Bolo de café', 'Receita', 67, '01/10/23'),
(17, 'Chá preto', 'Receita', 12, '27/09/23'),
(9, 'Pó de café', 'Despesa', 2500, '26/09/23'),
(7, 'stévia', 'Despesa', 300, '24/09/23'),
(11, 'Capuccino', 'Receita', 22, '26/09/23'),
(30, 'Gorjetas', 'Receita', 800, '31/09/23'),
(14, 'Bolo de milho', 'Receita', 80, '26/09/23'),
(16, 'Broa de milho', 'Receita', 43, '26/09/23'),
(22, 'Polenta', 'Receita', 26, '01/10/23'),
(21, 'Amido de milho', 'Despesa', 300, '01/10/23'),
(24, 'Farinha de trigo', 'Despesa', 240, '01/10/23'),
(25, 'stévia', 'Despesa', 291, '12/10/23'),
(26, 'café branco', 'Receita', 100, '12/10/23'),
(28, 'leite', 'Despesa', 1000, '17/10/23'),
(29, 'café com leite', 'Receita', 12, '17/10/23');

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
(1, 'celso', 'café', '28983483-23', '219987654732', 'celsinhocafeina@gmail.com'),
(6, 'maria', 'açúcar', '21232323123-42', '3154534545345', 'marysugar@gmail.com'),
(10, 'su adoçantes', 'stévia', '111111199', '26650446', 'suali@gmail.com'),
(11, 'João', 'Farinha', '55565676576-90', '6764564564564', 'joaosinhofarinhas@hotmail.com'),
(13, 'Mario', 'Farinha', '243234234254-98', '3456556556676', 'mariobros@outlook.com'),
(30, 'Maria', 'Embalagem', '6544536753-67', '76453434545345', 'mariacrafts@hotmail.com'),
(29, 'Binho', 'leite ', '72.3344.887.90', '789532212', 'dafert@gmail.com');

-- --------------------------------------------------------

--
-- Estrutura da tabela `histórico`
--

CREATE TABLE `histórico` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nome` varchar(255) NOT NULL,
  `descrição` varchar(255) NOT NULL,
  `data` varchar(255) NOT NULL,
  `horário` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `histórico`
--

INSERT INTO `histórico` (`id`, `nome`, `descrição`, `data`, `horário`) VALUES
(1, 'Produto', 'Amido de milho', '01/10/23', '00:30:57'),
(2, 'Serviço', 'Polenta', '01/10/23', '00:33:45'),
(3, 'Usuário', 'cgfbg', '01/10/23', '23:06:07'),
(4, 'Serviço', 'Bolo de café', '01/10/23', '23:08:46'),
(5, 'Fornecedor', 'Mario', '01/10/23', '23:09:43'),
(6, 'Produto', 'Farinha de trigo', '01/10/23', '23:10:11'),
(7, 'Usuário', 'gh', '04/10/23', '14:59:51'),
(8, 'Usuário', 'susu', '06/10/23', '21:58:51'),
(9, 'Fornecedor', 'José', '10/10/23', '19:26:18'),
(10, 'Fornecedor', 'Antônia', '10/10/23', '19:27:30'),
(11, 'Usuário', 'kayky1916', '12/10/23', '22:19:51'),
(12, 'Produto', 'stévia', '12/10/23', '22:24:08'),
(13, 'Fornecedor', 'Felipe', '12/10/23', '22:28:04'),
(14, 'Serviço', 'café branco', '12/10/23', '22:29:27'),
(31, 'Fornecedor', 'Binho', '17/10/23', '08:42:46'),
(29, 'Usuário', 'dsd', '17/10/23', '08:33:39'),
(30, 'Transação', 'cafe', '17/10/23', '08:39:26'),
(27, 'Usuário', 'mmc', '16/10/23', '13:18:25'),
(28, 'Usuário', 'admin', '16/10/23', '13:33:25'),
(32, 'Produto', 'leite', '17/10/23', '08:45:03'),
(33, 'Usuário', 'bn101', '17/10/23', '08:47:57'),
(34, 'Serviço', 'café com leite', '17/10/23', '08:49:59'),
(35, 'Fornecedor', 'Maria', '18/10/23', '18:32:19'),
(36, 'Usuário', 'GH', '18/10/23', '18:40:40'),
(37, 'Transação', 'Gorjetas', '18/10/23', '18:43:36');

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
-- Estrutura da tabela `serviços`
--

CREATE TABLE `serviços` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nomeServiço` varchar(255) NOT NULL,
  `valor` double NOT NULL,
  `quantidadeProduto` double NOT NULL,
  `data` varchar(255) NOT NULL,
  `horário` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `serviços`
--

INSERT INTO `serviços` (`id`, `nomeServiço`, `valor`, `quantidadeProduto`, `data`, `horário`) VALUES
(2, 'Café expresso', 14, 60, '24/09/23', '16:07'),
(3, 'Capuccino', 22, 80, '24/09/23', '16:07'),
(5, 'Bolo de milho', 80, 1000, '24/09/23', '16:07'),
(7, 'Broa de milho', 43, 500, '24/09/23', '16:07'),
(8, 'Chá preto', 12, 30, '27/09/23', '16:25:21'),
(9, 'Polenta', 26, 200, '01/10/23', '00:33:45'),
(10, 'Bolo de café', 67, 200, '01/10/23', '23:08:46'),
(11, 'café branco', 100, 100, '12/10/23', '22:29:27'),
(12, 'café com leite', 12, 100, '17/10/23', '08:49:59');

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
(27, 'GH', '1c0ef710ebb4f1f1f2fef6a007d2dc68', 'Gustavo'),
(25, 'bn101', 'fd62cf0fb4984a4d6604962e29a06b55', 'bn101'),
(23, 'dsd', '25d55ad283aa400af464c76d713c07ad', 'davi'),
(22, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'admin'),
(21, 'mmc', '9b263381b0bb8ae4a7cb6a8863365c25', 'Marcelo');

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
-- Indexes for table `histórico`
--
ALTER TABLE `histórico`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `metas`
--
ALTER TABLE `metas`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `serviços`
--
ALTER TABLE `serviços`
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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `finanças`
--
ALTER TABLE `finanças`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT for table `fornecedores`
--
ALTER TABLE `fornecedores`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT for table `histórico`
--
ALTER TABLE `histórico`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;
--
-- AUTO_INCREMENT for table `metas`
--
ALTER TABLE `metas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `serviços`
--
ALTER TABLE `serviços`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `usuário`
--
ALTER TABLE `usuário`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
