
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `fseletrojogos`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `comentarios`
--

CREATE TABLE `comentarios` (
  `id` int(11) NOT NULL,
  `data` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `nome` varchar(100) DEFAULT NULL,
  `msg` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `comentarios`
--

INSERT INTO `comentarios` (`id`, `data`, `nome`, `msg`) VALUES
(5, '2020-12-01 09:13:33', 'André', 'Excelente'),
(6, '2020-12-01 12:22:31', 'Tobias', 'Sensacional'),
(7, '2020-12-01 07:16:11', 'Elias', 'Congratulations'),
(8, '2020-12-01 04:42:21', 'Marcos', 'Nice');

-- --------------------------------------------------------

--
-- Estrutura da tabela `cores`
--

CREATE TABLE `cores` (
  `idcor` int(11) NOT NULL,
  `cor` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `cores`
--

INSERT INTO `cores` (`idcor`, `cor`) VALUES
(1, 'Branco'),
(2, 'Preto'),
(3, 'Cinza'),
(4, 'Prateado');

-- --------------------------------------------------------

--
-- Estrutura da tabela `loja`
--

CREATE TABLE `loja` (
  `idproduto` int(11) NOT NULL,
  `idcor` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `loja`
--

INSERT INTO `loja` (`idproduto`, `idcor`) VALUES
(1, 4),
(2, 1),
(3, 3),
(4, 1),
(5, 2),
(6, 1),
(7, 2),
(8, 1),
(9, 2),
(10, 1),
(11, 3),
(12, 3),
(13, 1),
(14, 1),
(15, 4),


-- --------------------------------------------------------

--
-- Estrutura da tabela `pedidos`
--

CREATE TABLE `pedidos` (
  `idCliente` int(11) NOT NULL,
  `nomeCliente` varchar(155) DEFAULT NULL,
  `endereco` varchar(255) DEFAULT NULL,
  `telefone` varchar(15) DEFAULT NULL,
  `produto` varchar(255) DEFAULT NULL,
  `valorUnitario` float DEFAULT NULL,
  `quantidade` int(11) DEFAULT NULL,
  `valorTotal` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `pedidos`
--

INSERT INTO `pedidos` (`idCliente`, `nomeCliente`, `endereco`, `telefone`, `produto`, `valorUnitario`, `quantidade`, `valorTotal`) VALUES
(1, 'Aline', 'Rua A', '(21) 1111-1111', 'Horizon Zero Dawn - Complete Edition', 90, 2, 180),
(2, 'Carla', 'Rua B', '(21) 2222-2222', 'God of War', 150, 1, 150),
(3, 'Rosana', 'Rua C', '(21) 3333-3333', 'Tomb Raider - Definitive Edition', 80, 5, 400),
(4, 'Kátia', 'Rua D', '(21) 4444-4444', 'Need For Speed - Heat', 70, 2, 140),
(5, 'André', 'Rua E', '(21) 5555-5555', 'Gran Turismo Sport', 90, 1, 90),
(6, 'Tobias', 'Rua F', '(21) 6666-6666', 'Sonic Team Racing', 60, 4, 240),
(7, 'Elias', 'Rua G', '(21) 7777-7777', 'Injustice 2 - Legendary Edition', 100, 7, 700),
(8, 'Marcos', 'Rua H', '(21) 8888-8888', 'Mortal Kombat 11 - Aftermath', 130, 3, 390),
(9, 'Rafael', 'Rua I', '(21) 9999-9999', 'Samurai Shodown', 150, 2, 300),
(10, 'Mônica', 'Rua J', '(21) 1346-0987', 'Wolfenstein 2 - The New Order', 50, 10, 500),
(11, 'Paula', 'Rua L', '(21) 2543-9876', 'Battlefield 5', 120, 5, 600),
(12, 'Sandra', 'Rua M', '(21) 3786-0956', 'Call Of Duty - Modern Warfare', 120, 1, 120),
(13, 'Tatiana', 'Rua N', '(21) 4765-7890', 'The Witcher 3 - Wild Hunt', 150, 2, 300),
(14, 'Alessandra', 'Rua O', '(21) 5324-8567', 'Final Fantasy VII - Remake', 100, 9, 900),
(15, 'Roberto', 'Rua P', '(21) 6346-9566', 'Persona 5', 80, 2, 160);

-- --------------------------------------------------------

--
-- Estrutura da tabela `produtos`
--

CREATE TABLE `produtos` (
  `idproduto` int(11) NOT NULL,
  `categoria` varchar(255) DEFAULT NULL,
  `descricao` varchar(255) DEFAULT NULL,
  `imagem` varchar(255) DEFAULT NULL,
  `precoinicial` float DEFAULT NULL,
  `precofinal` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `produtos`
--

INSERT INTO `produtos` (`idproduto`, `categoria`, `descricao`, `imagem`, `precoinicial`, `precofinal`) VALUES
(1, 'Ação', 'Horizon Zero Dawn - Complete Edition', 'Imagens/horizon.jpg', 150, 90),
(2, 'Ação', 'God of War', 'Imagens/gow.jpg', 200, 150),
(3, 'Ação', 'Tomb Raider - Definitive Edition', 'Imagens/tombraider.jpg', 130, 80),
(4, 'Corrida', 'Need For Speed - Heat', 'Imagens/nfsheat.jpg', 100, 70),
(5, 'Corrida', 'Gran Turismo Sport', 'Imagens/granturismo.jpg', 150, 90),
(6, 'Corrida', 'Sonic Team Racing', 'Imagens/sonicracing.jpg', 90, 60),
(7, 'Luta', 'Injustice 2 - Legendary Edition', 'Imagens/injustice2.jpg', 140, 100),
(8, 'Luta', 'Mortal Kombat 11 - Aftermath', 'Imagens/mkaftermath.jpg', 200, 130),
(9, 'Luta', 'Samurai Shodown', 'Imagens/samurai.jpg', 200, 150),
(10, 'Tiro', 'Wolfenstein 2 - The New Colossus', 'Imagens/wolfenstein.jpg', 100, 50),
(11, 'Tiro', 'Battlefield 5', 'Imagens/battlefieldv.jpg', 150, 120),
(12, 'Tiro', 'Call of Duty - Modern Warfare', 'Imagens/codmw.jpg', 180, 120),
(13, 'RPG', 'The Witcher 3 - Wild Hunt', 'Imagens/thewitcher3.jpeg', 200, 150),
(14, 'RPG', 'Final Fantasy VII - Remake', 'Imagens/ffviii.jpg', 180, 100),
(15, 'RPG', 'Persona 5', 'Imagens/persona5.jpg', 120, 80);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `comentarios`
--
ALTER TABLE `comentarios`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `cores`
--
ALTER TABLE `cores`
  ADD PRIMARY KEY (`idcor`);

--
-- Índices para tabela `loja`
--
ALTER TABLE `loja`
  ADD PRIMARY KEY (`idproduto`,`idcor`),
  ADD KEY `idcor` (`idcor`);

--
-- Índices para tabela `pedidos`
--
ALTER TABLE `pedidos`
  ADD PRIMARY KEY (`idCliente`);

--
-- Índices para tabela `produtos`
--
ALTER TABLE `produtos`
  ADD PRIMARY KEY (`idproduto`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `comentarios`
--
ALTER TABLE `comentarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de tabela `cores`
--
ALTER TABLE `cores`
  MODIFY `idcor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `pedidos`
--
ALTER TABLE `pedidos`
  MODIFY `idCliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de tabela `produtos`
--
ALTER TABLE `produtos`
  MODIFY `idproduto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `loja`
--
ALTER TABLE `loja`
  ADD CONSTRAINT `loja_ibfk_1` FOREIGN KEY (`idcor`) REFERENCES `cores` (`idcor`),
  ADD CONSTRAINT `loja_ibfk_2` FOREIGN KEY (`idproduto`) REFERENCES `produtos` (`idproduto`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
