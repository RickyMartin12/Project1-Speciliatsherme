-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 20-Set-2024 às 12:26
-- Versão do servidor: 10.4.24-MariaDB
-- versão do PHP: 8.0.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `project1-gestao`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `admins`
--

CREATE TABLE `admins` (
  `id` int(10) NOT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `pass` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `no_del` varchar(255) DEFAULT NULL,
  `logo` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `tipo_permissao_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `admins`
--

INSERT INTO `admins` (`id`, `nome`, `pass`, `email`, `no_del`, `logo`, `tipo_permissao_id`) VALUES
(2, 'Admin', '091bba2487a73053a576b94c88c5e979', 'r.peleira@hotmail.com', '1', 'http://localhost:8080/upload/emperor_bed.jpg', 1),
(3, 'Teste User', '5e8dbcb3a9972034750166ffe08f3210', 'teste_user@gmail.com', '1', '', 2),
(5, 'Luis Duque', '091bba2487a73053a576b94c88c5e979', 'luis_duque@gamil.com', NULL, NULL, 2),
(6, 'Andre Mendes', '091bba2487a73053a576b94c88c5e979', 'andre_medes@gmail.com', NULL, NULL, 3),
(7, 'Luis Marques', '091bba2487a73053a576b94c88c5e979', 'luis_marques@gmail.com', NULL, 'http://localhost:8080/upload/letsgo-world.png', 1),
(8, 'Julio Mendes', '091bba2487a73053a576b94c88c5e979', 'julio_mendes@gmail.com', NULL, 'http://localhost:8080/upload/plugin3.png', 2),
(9, 'Paulo Jose', '091bba2487a73053a576b94c88c5e979', 'paulo_jose@gmail.com', NULL, 'http://localhost:8080/upload/plugin5.png', 1),
(10, 'Goncalo Nunes', '091bba2487a73053a576b94c88c5e979', 'gnsilva362@gmail.com', NULL, 'http://localhost:8080/upload/IMG_20231215_134212.jpg', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `categoria`
--

CREATE TABLE `categoria` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `palavra_chave` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `categoria`
--

INSERT INTO `categoria` (`id`, `nome`, `palavra_chave`) VALUES
(1, 'Textos de Imagens', 'textos-imagens'),
(2, 'Listagem de Livros', 'listagem-livros');

-- --------------------------------------------------------

--
-- Estrutura da tabela `classificacao`
--

CREATE TABLE `classificacao` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `perg_id` int(11) DEFAULT NULL,
  `resp_id` int(11) DEFAULT NULL,
  `pontuacao` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `historico`
--

CREATE TABLE `historico` (
  `id` int(11) NOT NULL,
  `perg_id` int(11) DEFAULT NULL,
  `resp_id` int(11) DEFAULT NULL,
  `data_hora_historico` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `likes`
--

CREATE TABLE `likes` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `perg_id` int(11) DEFAULT NULL,
  `resp_id` int(11) DEFAULT NULL,
  `ativos_likes` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `notificacao`
--

CREATE TABLE `notificacao` (
  `id` int(11) NOT NULL,
  `e_lido` int(11) NOT NULL DEFAULT 0,
  `user_id` int(11) DEFAULT NULL,
  `perg_id` int(11) DEFAULT NULL,
  `resp_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `pergunta`
--

CREATE TABLE `pergunta` (
  `id` int(11) NOT NULL,
  `cat_id` int(11) DEFAULT NULL,
  `descricao` varchar(2000) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `titulo` varchar(255) DEFAULT NULL,
  `data_hora_pergunta` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `pergunta`
--

INSERT INTO `pergunta` (`id`, `cat_id`, `descricao`, `user_id`, `titulo`, `data_hora_pergunta`) VALUES
(3, 2, 'Tenho trabalhado remotamente há alguns meses, mas sinto que minha produtividade poderia ser melhor. Às vezes, me distraio com as tarefas domésticas ou me sinto menos motivado sem a rotina do escritório. Alguém tem dicas ou estratégias que possam ajudar a manter o foco e a motivação enquanto trabalha em casa?', 9, 'Nao Ze', '2024-09-19 15:40:12'),
(4, 2, 'Tenho trabalhado remotamente há alguns meses, mas sinto que minha produtividade poderia ser melhor. Às vezes, me distraio com as tarefas domésticas ou me sinto menos motivado sem a rotina do escritório. Alguém tem dicas ou estratégias que possam ajudar a manter o foco e a motivação enquanto trabalha em casa?', 8, 'Mias', '2024-09-19 17:36:39'),
(7, 2, 'aaaa', 8, 'Textos de Listas', '2024-09-19 19:37:30'),
(8, 2, 'Mias', 8, 'Tested as', '2024-09-20 10:57:04'),
(9, 1, 'as', 8, 'as', '2024-09-20 10:57:39');

-- --------------------------------------------------------


-- --------------------------------------------------------

--
-- Estrutura da tabela `resposta`
--

CREATE TABLE `resposta` (
  `id` int(11) NOT NULL,
  `cat_id` int(11) DEFAULT NULL,
  `descricao` varchar(1000) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `data_hora_descricao` datetime DEFAULT NULL,
  `perg_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `resposta`
--

INSERT INTO `resposta` (`id`, `cat_id`, `descricao`, `user_id`, `data_hora_descricao`, `perg_id`) VALUES
(3, 1, 'as', 2, '2024-09-20 14:41:44', 3),
(4, 2, 'textos de imagens', 8, '2024-09-19 19:38:49', 3),
(5, 2, 'nice', 8, '2024-09-20 10:36:00', 3),
(6, 2, 'lopes', 8, '2024-09-20 10:37:24', 3),
(7, 2, 'Amigos da saúde', 8, '2024-09-20 10:38:07', 3),
(8, 2, 'Nao sei nada disso', 10, '2024-09-20 11:23:23', 4);

-- --------------------------------------------------------

-- --------------------------------------------------------

--
-- Estrutura da tabela `solicitacao`
--

CREATE TABLE `solicitacao` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `data_hora_criacao` datetime DEFAULT NULL,
  `status` int(11) DEFAULT 0,
  `descricao` varchar(255) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `cat_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tipo_permissao`
--

CREATE TABLE `tipo_permissao` (
  `id` int(11) NOT NULL,
  `nome_permissao` varchar(255) NOT NULL,
  `privilegios` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tipo_permissao`
--

INSERT INTO `tipo_permissao` (`id`, `nome_permissao`, `privilegios`) VALUES
(1, 'Administrador', 1),
(2, 'Utilizador Especifico', 2),
(3, 'Utilizador Normal', 3);

-- --------------------------------------------------------

--
-- Estrutura da tabela `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `users`
--

INSERT INTO `users` (`id`, `email`, `name`) VALUES
(1, 'ricardopeleira16@gmail.com', 'Ricardo Peleira'),
(2, 'jrodriguespeleira@gmail.com', 'João Rodrigues Peleira');

-- --------------------------------------------------------

--
-- Estrutura da tabela `utilizador`
--

CREATE TABLE `utilizador` (
  `id` bigint(20) NOT NULL,
  `data_registo` date DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `reputacao` int(11) DEFAULT NULL,
  `senha_hash` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `classificacao`
--
ALTER TABLE `classificacao`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id_classificacao` (`user_id`),
  ADD KEY `perg_id_classificacao` (`perg_id`),
  ADD KEY `resp_id_classificaco` (`resp_id`);

--
-- Índices para tabela `historico`
--
ALTER TABLE `historico`
  ADD PRIMARY KEY (`id`),
  ADD KEY `resp_id_historico` (`resp_id`),
  ADD KEY `perg_id_historico` (`perg_id`);

--
-- Índices para tabela `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id_likes` (`user_id`),
  ADD KEY `perg_id_likes` (`perg_id`),
  ADD KEY `resp_id_likes` (`resp_id`);

--
-- Índices para tabela `notificacao`
--
ALTER TABLE `notificacao`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id_notificacao` (`user_id`),
  ADD KEY `perg_id_notificacao` (`perg_id`),
  ADD KEY `resp_id_notificacao` (`resp_id`);

--
-- Índices para tabela `pergunta`
--
ALTER TABLE `pergunta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cat_id_pergunta` (`cat_id`),
  ADD KEY `user_id_pergunta` (`user_id`);

--
-- Índices para tabela `resposta`
--
ALTER TABLE `resposta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cat_id_resposta` (`cat_id`),
  ADD KEY `user_id_resposta` (`user_id`),
  ADD KEY `perg_id_resposta` (`perg_id`);

--
-- Índices para tabela `solicitacao`
--
ALTER TABLE `solicitacao`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cat_id_solicitacao` (`cat_id`),
  ADD KEY `user_id_solicitacao` (`user_id`);

--
-- Índices para tabela `tipo_permissao`
--
ALTER TABLE `tipo_permissao`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Índices para tabela `utilizador`
--
ALTER TABLE `utilizador`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `votos_respostas`
--
ALTER TABLE `votos_respostas`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `categoria`
--
ALTER TABLE `categoria`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `classificacao`
--
ALTER TABLE `classificacao`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `historico`
--
ALTER TABLE `historico`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `likes`
--
ALTER TABLE `likes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `notificacao`
--
ALTER TABLE `notificacao`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `pergunta`
--
ALTER TABLE `pergunta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de tabela `resposta`
--
ALTER TABLE `resposta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de tabela `solicitacao`
--
ALTER TABLE `solicitacao`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `tipo_permissao`
--
ALTER TABLE `tipo_permissao`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `classificacao`
--
ALTER TABLE `classificacao`
  ADD CONSTRAINT `perg_id_classificacao` FOREIGN KEY (`perg_id`) REFERENCES `pergunta` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `resp_id_classificaco` FOREIGN KEY (`resp_id`) REFERENCES `resposta` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `user_id_classificacao` FOREIGN KEY (`user_id`) REFERENCES `admins` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limitadores para a tabela `historico`
--
ALTER TABLE `historico`
  ADD CONSTRAINT `perg_id_historico` FOREIGN KEY (`perg_id`) REFERENCES `pergunta` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `resp_id_historico` FOREIGN KEY (`resp_id`) REFERENCES `resposta` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limitadores para a tabela `likes`
--
ALTER TABLE `likes`
  ADD CONSTRAINT `perg_id_likes` FOREIGN KEY (`perg_id`) REFERENCES `pergunta` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `resp_id_likes` FOREIGN KEY (`resp_id`) REFERENCES `resposta` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `user_id_likes` FOREIGN KEY (`user_id`) REFERENCES `admins` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limitadores para a tabela `notificacao`
--
ALTER TABLE `notificacao`
  ADD CONSTRAINT `perg_id_notificacao` FOREIGN KEY (`perg_id`) REFERENCES `pergunta` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `resp_id_notificacao` FOREIGN KEY (`resp_id`) REFERENCES `resposta` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `user_id_notificacao` FOREIGN KEY (`user_id`) REFERENCES `admins` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limitadores para a tabela `pergunta`
--
ALTER TABLE `pergunta`
  ADD CONSTRAINT `cat_id_pergunta` FOREIGN KEY (`cat_id`) REFERENCES `categoria` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `user_id_pergunta` FOREIGN KEY (`user_id`) REFERENCES `admins` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limitadores para a tabela `resposta`
--
ALTER TABLE `resposta`
  ADD CONSTRAINT `cat_id_resposta` FOREIGN KEY (`cat_id`) REFERENCES `categoria` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `perg_id_resposta` FOREIGN KEY (`perg_id`) REFERENCES `pergunta` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `user_id_resposta` FOREIGN KEY (`user_id`) REFERENCES `admins` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limitadores para a tabela `solicitacao`
--
ALTER TABLE `solicitacao`
  ADD CONSTRAINT `cat_id_solicitacao` FOREIGN KEY (`cat_id`) REFERENCES `categoria` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `user_id_solicitacao` FOREIGN KEY (`user_id`) REFERENCES `admins` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
