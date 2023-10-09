-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 01-Out-2023 às 19:07
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
(14, 'Farinha de trigo', '28/09/2026', 500, 0.2, 11),
(13, 'Pó de café', '29/05/2024', 4860, 0.5, 1),
(12, 'stévia', 'indeterminado', 970, 0.3, 10),
(11, 'grão de café', '30/05/25', 2000, 0.7, 1),
(16, 'Amido de milho', '13/04/2026', 400, 0.5, 11);

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
(17, 'Chá preto', 'Receita', 12, '27/09/23'),
(9, 'Pó de café', 'Despesa', 2500, '26/09/23'),
(7, 'stévia', 'Despesa', 300, '24/09/23'),
(11, 'Capuccino', 'Receita', 22, '26/09/23'),
(13, 'Farinha de trigo', 'Despesa', 400, '26/09/23'),
(14, 'Bolo de milho', 'Receita', 80, '26/09/23'),
(16, 'Broa de milho', 'Receita', 43, '26/09/23'),
(22, 'Polenta', 'Receita', 26, '01/10/23'),
(21, 'Amido de milho', 'Despesa', 300, '01/10/23');

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
(12, 'Lúcio', 'Café', '36655423234-45', '7623132122', 'lucicoffe@hotmail.com'),
(10, 'su adoçantes', 'stévia', '111111199', '26650446', 'suali@gmail.com'),
(11, 'João', 'Farinha', '55565676576-90', '6764564564564', 'joaosinhofarinhas@hotmail.com');

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
(2, 'Serviço', 'Polenta', '01/10/23', '00:33:45');

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
(9, 'Polenta', 26, 200, '01/10/23', '00:33:45');

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
(14, 'rafa', '1234', 'rapaelle'),
(8, 'henry', '1234', 'henry'),
(9, 'bn', '1234', 'bruno'),
(12, 'admin', 'admin', 'admin');

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `finanças`
--
ALTER TABLE `finanças`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `fornecedores`
--
ALTER TABLE `fornecedores`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `histórico`
--
ALTER TABLE `histórico`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `metas`
--
ALTER TABLE `metas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `serviços`
--
ALTER TABLE `serviços`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `usuário`
--
ALTER TABLE `usuário`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
