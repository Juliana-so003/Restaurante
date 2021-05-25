
USE dbRestaurante;
DROP TABLE IF EXISTS `tbProprietario`;
DROP TABLE IF EXISTS `tbFuncionario`;
DROP TABLE IF EXISTS `tbEnderecoFuncionario`;
DROP TABLE IF EXISTS `tbGerente`;
DROP TABLE IF EXISTS `tbEntregador`;
DROP TABLE IF EXISTS `tbCozinheiro`;
DROP TABLE IF EXISTS `tbProduto`;
DROP TABLE IF EXISTS `tbSeco`;
DROP TABLE IF EXISTS `tbCereais`;
DROP TABLE IF EXISTS `tbVerduras`;
DROP TABLE IF EXISTS `tbFrios`;
DROP TABLE IF EXISTS `tbFrutas`;
DROP TABLE IF EXISTS `tbBebidaQuente`;
DROP TABLE IF EXISTS `tbBebidaGelada`;
DROP TABLE IF EXISTS `tbPratos`;
DROP TABLE IF EXISTS `tbEntrada`;
DROP TABLE IF EXISTS `tbPrincipal`;
DROP TABLE IF EXISTS `tbAcompanhamento`;
DROP TABLE IF EXISTS `tbSobremesa`;
DROP TABLE IF EXISTS `tbBebidas`;
DROP TABLE IF EXISTS `tbCliente`;
DROP TABLE IF EXISTS `tbEnderecoCliente1`;
DROP TABLE IF EXISTS `tbPedido`;
DROP TABLE IF EXISTS `tbGerenteCliente`;
DROP TABLE IF EXISTS `tbPagamento`;
DROP TABLE IF EXISTS `tbEnderecoCliente2`;
DROP TABLE IF EXISTS `tbCartao`;
DROP TABLE IF EXISTS `tbPix`;
DROP TABLE IF EXISTS `tbTransferencia`;
DROP TABLE IF EXISTS `tbDinheiro`;


CREATE TABLE `tbProprietario` (
`id_proprietario` INT(5) AUTO_INCREMENT NOT NULL PRIMARY KEY,
`nome_proprietario` VARCHAR(15) NOT NULL);

CREATE TABLE `tbFuncionario` (
`cpf` CHAR(11) NOT NULL PRIMARY KEY,
`nome` VARCHAR(20) NOT NULL,
`data_nascimento` DATE NOT NULL,
`telefone` CHAR(11) NOT NULL,
`escolaridade` TEXT NOT NULL,
`salario` DECIMAL(62) NOT NULL,
`nome_usuario` VARCHAR(10) NOT NULL,
`email` VARCHAR(20) NOT NULL,
`senha` VARCHAR(10) NOT NULL UNIQUE,
`cargo` VARCHAR(10) NOT NULL,
`id_proprietario` INT(5) NOT NULL,
`rg` INT(11) NOT NULL UNIQUE);

CREATE TABLE `tbEnderecoFuncionario` (
`cidade` VARCHAR(10) NOT NULL DEFAULT 'Guaiúba ',
`bairro` VARCHAR(10) NOT NULL,
`cpf` CHAR(11) NOT NULL,
`rua` VARCHAR(20) NOT NULL,
`numero` VARCHAR(5) NOT NULL);

CREATE TABLE `tbGerente` (
`id_gerente` INT NOT NULL PRIMARY KEY,
`cpf` CHAR(11) NOT NULL);

CREATE TABLE `tbEntregador` (
`id_entregador` INT(10) NOT NULL PRIMARY KEY,
`cnh` INT(11) NOT NULL,
`cpf` CHAR(11) NOT NULL,
`id_gerente` INT NOT NULL);

CREATE TABLE `tbCozinheiro` (
`id_cozinheiro` INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
`certificado_gastronomia` BOOLEAN NOT NULL,
`id_gerente` INT NOT NULL,
`cpf` VARCHAR(11) NOT NULL);

CREATE TABLE `tbProduto` (
`id_produto` INT NOT NULL PRIMARY KEY,
`data_validade` DATE NOT NULL,
`data_fabricacao` DATE NOT NULL,
`nome` VARCHAR(10) NOT NULL,
`lote` CHAR(12) NOT NULL,
`column_6` INT NOT NULL,
`id_gerente` INT NOT NULL);

CREATE TABLE `tbSeco` (
`id` INT NOT NULL PRIMARY KEY,
`nome` CHAR(5) NOT NULL DEFAULT 'secos',
`id_produto` INT NOT NULL);

CREATE TABLE `tbCereais` (
`id_cereais` INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
`nome` CHAR(7) NOT NULL DEFAULT 'cereais',
`id_produto` INT NOT NULL);

CREATE TABLE `tbVerduras` (
`id` INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
`nome` CHAR(8) NOT NULL DEFAULT 'verduras',
`id_produto` INT NOT NULL);

CREATE TABLE `tbFrios` (
`id` INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
`nome` CHAR(5) NOT NULL DEFAULT 'Frios',
`column_3` INT NOT NULL);

CREATE TABLE `tbFrutas` (
`id` INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
`nome` CHAR(6) NOT NULL DEFAULT 'Frutas',
`id_produto` INT NOT NULL);

CREATE TABLE `tbBebidaQuente` (
`id` INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
`nome` VARCHAR(17) NOT NULL DEFAULT 'Bebidas Quentes',
`id_produto` INT NOT NULL);

CREATE TABLE `tbBebidaGelada` (
`id` INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
`nome` VARCHAR(17) NOT NULL DEFAULT 'Bebidas Geladas',
`id_produto` INT NOT NULL);

CREATE TABLE `tbPratos` (
`id` INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
`nome` VARCHAR(30) NOT NULL,
`valor` FLOAT NOT NULL,
`porcao` INT NOT NULL,
`desconto` FLOAT NOT NULL,
`id_gerente` INT NOT NULL,
`observacao` MEDIUMTEXT NOT NULL);

CREATE TABLE `tbEntrada` (
`id_entrada` INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
`nome` CHAR(7) NOT NULL DEFAULT 'Entrada',
`id` INT NOT NULL);

CREATE TABLE `tbPrincipal` (
`id_principal` INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
`nome` VARCHAR(15) NOT NULL DEFAULT 'Prato Principal',
`id` INT NOT NULL);

CREATE TABLE `tbAcompanhamento` (
`id_acompanhamento` INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
`nome` VARCHAR(15) NOT NULL DEFAULT 'Acompanhamento',
`id` INT NOT NULL);

CREATE TABLE `tbSobremesa` (
`id_sobremesa` INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
`nome` VARCHAR(10) NOT NULL DEFAULT 'Sobremesa',
`id` INT NOT NULL);

CREATE TABLE `tbBebidas` (
`id_bebidas` INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
`nome` VARCHAR(7) NOT NULL DEFAULT 'Bebidas',
`id` INT NOT NULL);

CREATE TABLE `tbCliente` (
`nome` VARCHAR(30) NOT NULL,
`telefone` VARCHAR(14) NOT NULL,
`data_nascimento` DATE NOT NULL,
`cpf` VARCHAR(11) NOT NULL PRIMARY KEY,
`email` VARCHAR(35) NOT NULL,
`senha` TEXT(10) NOT NULL UNIQUE,
`nome_usuario` VARCHAR(10) NOT NULL);

CREATE TABLE `tbEnderecoCliente1` (
`cidade` VARCHAR(10) NOT NULL DEFAULT 'Guaiúba ',
`bairro` VARCHAR(20) NOT NULL,
`rua` VARCHAR(20) NOT NULL,
`numero` VARCHAR(5) NOT NULL,
`cpf` VARCHAR(11) NOT NULL);

CREATE TABLE `tbPedido` (
`id` INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
`data` DATE NOT NULL,
`hora` TIME NOT NULL,
`cpf` VARCHAR(11) NOT NULL,
`quantidade` INT NOT NULL,
`observacao` MEDIUMTEXT NOT NULL,
`id_prato` INT NOT NULL);

CREATE TABLE `tbGerenteCliente` (
`id_gerente` INT NOT NULL,
`cpf` VARCHAR(11) NOT NULL);

CREATE TABLE `tbPagamento` (
`id_pagamento` INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
`id_pedido` INT NOT NULL);

CREATE TABLE `tbEnderecoCliente2` (
`cidade` VARCHAR(10) NOT NULL DEFAULT 'Guaiuba',
`bairro` VARCHAR(20) NOT NULL,
`rua` VARCHAR(20) NOT NULL,
`numero` VARCHAR(5) NOT NULL,
`cpf_cliente` VARCHAR(11) NOT NULL,
`nome` VARCHAR(25) NOT NULL);

CREATE TABLE `tbCartao` (
`nome_cartao` VARCHAR(20) NOT NULL,
`numero_cartao` INT NOT NULL PRIMARY KEY,
`data_validade` DATE NOT NULL,
`cvv` INT(4) NOT NULL UNIQUE,
`tipo_cartao` ENUM ("Visa", "Elo", "Alelo", "MasterCard") NOT NULL,
`id_pagamento` INT NOT NULL);

CREATE TABLE `tbPix` (
`id_pix` INT NOT NULL PRIMARY KEY,
`codigo_pix` CHAR(32) NOT NULL,
`id_pagamento` INT NOT NULL);

CREATE TABLE `tbTransferencia` (
`cpf_transferencia` CHAR(11) NOT NULL PRIMARY KEY,
`nome_titular` VARCHAR(50) NOT NULL,
`banco` VARCHAR(15) NOT NULL,
`tipo_conta` VARCHAR(10) NOT NULL,
`agencia` VARCHAR(10) NOT NULL,
`numero_conta` VARCHAR(17) NOT NULL UNIQUE,
`id_pagamento` INT NOT NULL);

CREATE TABLE `tbDinheiro` (
`id_especie` INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
`troco` FLOAT(42) NOT NULL,
`id_pagamento` INT NOT NULL);

ALTER TABLE `tbFuncionario` ADD CONSTRAINT `tbFuncionario_id_proprietario_tbProprietario_id_proprietario` FOREIGN KEY (`id_proprietario`) REFERENCES `tbProprietario`(`id_proprietario`) ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE `tbEnderecoFuncionario` ADD CONSTRAINT `tbEnderecoFuncionario_cpf_tbFuncionario_cpf` FOREIGN KEY (`cpf`) REFERENCES `tbFuncionario`(`cpf`) ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE `tbGerente` ADD CONSTRAINT `tbGerente_cpf_tbFuncionario_cpf` FOREIGN KEY (`cpf`) REFERENCES `tbFuncionario`(`cpf`) ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE `tbEntregador` ADD CONSTRAINT `tbEntregador_cpf_tbFuncionario_cpf` FOREIGN KEY (`cpf`) REFERENCES `tbFuncionario`(`cpf`) ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE `tbEntregador` ADD CONSTRAINT `tbEntregador_id_gerente_tbGerente_id_gerente` FOREIGN KEY (`id_gerente`) REFERENCES `tbGerente`(`id_gerente`) ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE `tbCozinheiro` ADD CONSTRAINT `tbCozinheiro_id_gerente_tbGerente_id_gerente` FOREIGN KEY (`id_gerente`) REFERENCES `tbGerente`(`id_gerente`) ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE `tbCozinheiro` ADD CONSTRAINT `tbCozinheiro_cpf_tbFuncionario_cpf` FOREIGN KEY (`cpf`) REFERENCES `tbFuncionario`(`cpf`) ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE `tbProduto` ADD CONSTRAINT `tbProduto_id_gerente_tbGerente_id_gerente` FOREIGN KEY (`id_gerente`) REFERENCES `tbGerente`(`id_gerente`) ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE `tbSeco` ADD CONSTRAINT `tbSeco_id_produto_tbProduto_id_produto` FOREIGN KEY (`id_produto`) REFERENCES `tbProduto`(`id_produto`) ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE `tbCereais` ADD CONSTRAINT `tbCereais_id_produto_tbProduto_id_produto` FOREIGN KEY (`id_produto`) REFERENCES `tbProduto`(`id_produto`) ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE `tbVerduras` ADD CONSTRAINT `tbVerduras_id_produto_tbProduto_id_produto` FOREIGN KEY (`id_produto`) REFERENCES `tbProduto`(`id_produto`) ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE `tbFrios` ADD CONSTRAINT `tbFrios_column_3_tbProduto_id_produto` FOREIGN KEY (`column_3`) REFERENCES `tbProduto`(`id_produto`) ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE `tbFrutas` ADD CONSTRAINT `tbFrutas_id_produto_tbProduto_id_produto` FOREIGN KEY (`id_produto`) REFERENCES `tbProduto`(`id_produto`) ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE `tbBebidaQuente` ADD CONSTRAINT `tbBebidaQuente_id_produto_tbProduto_id_produto` FOREIGN KEY (`id_produto`) REFERENCES `tbProduto`(`id_produto`) ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE `tbBebidaGelada` ADD CONSTRAINT `tbBebidaGelada_id_produto_tbProduto_id_produto` FOREIGN KEY (`id_produto`) REFERENCES `tbProduto`(`id_produto`) ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE `tbPratos` ADD CONSTRAINT `tbPratos_id_gerente_tbGerente_id_gerente` FOREIGN KEY (`id_gerente`) REFERENCES `tbGerente`(`id_gerente`) ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE `tbEntrada` ADD CONSTRAINT `tbEntrada_id_tbPratos_id` FOREIGN KEY (`id`) REFERENCES `tbPratos`(`id`) ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE `tbPrincipal` ADD CONSTRAINT `tbPrincipal_id_tbPratos_id` FOREIGN KEY (`id`) REFERENCES `tbPratos`(`id`) ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE `tbAcompanhamento` ADD CONSTRAINT `tbAcompanhamento_column_3_tbPratos_id` FOREIGN KEY (`id`) REFERENCES `tbPratos`(`id`) ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE `tbSobremesa` ADD CONSTRAINT `tbSobremesa_id_tbPratos_id` FOREIGN KEY (`id`) REFERENCES `tbPratos`(`id`) ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE `tbBebidas` ADD CONSTRAINT `tbBebidas_id_tbPratos_id` FOREIGN KEY (`id`) REFERENCES `tbPratos`(`id`) ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE `tbEnderecoCliente1` ADD CONSTRAINT `tbEnderecoCliente1_cpf_tbCliente_cpf` FOREIGN KEY (`cpf`) REFERENCES `tbCliente`(`cpf`) ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE `tbPedido` ADD CONSTRAINT `tbPedido_cpf_tbCliente_cpf` FOREIGN KEY (`cpf`) REFERENCES `tbCliente`(`cpf`) ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE `tbPedido` ADD CONSTRAINT `tbPedido_id_prato_tbPratos_id` FOREIGN KEY (`id_prato`) REFERENCES `tbPratos`(`id`) ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE `tbGerenteCliente` ADD CONSTRAINT `tbGerenteCliente_id_gerente_tbGerente_id_gerente` FOREIGN KEY (`id_gerente`) REFERENCES `tbGerente`(`id_gerente`) ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE `tbGerenteCliente` ADD CONSTRAINT `tbGerenteCliente_cpf_tbCliente_cpf` FOREIGN KEY (`cpf`) REFERENCES `tbCliente`(`cpf`) ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE `tbPagamento` ADD CONSTRAINT `tbPagamento_id_pedido_tbPedido_id` FOREIGN KEY (`id_pedido`) REFERENCES `tbPedido`(`id`) ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE `tbEnderecoCliente2` ADD CONSTRAINT `tbEnderecoCliente2_cpf_cliente_tbCliente_cpf` FOREIGN KEY (`cpf_cliente`) REFERENCES `tbCliente`(`cpf`) ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE `tbCartao` ADD CONSTRAINT `tbCartao_id_pagamento_tbPagamento_id_pagamento` FOREIGN KEY (`id_pagamento`) REFERENCES `tbPagamento`(`id_pagamento`) ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE `tbPix` ADD CONSTRAINT `tbPix_id_pagamento_tbPagamento_id_pagamento` FOREIGN KEY (`id_pagamento`) REFERENCES `tbPagamento`(`id_pagamento`) ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE `tbTransferencia` ADD CONSTRAINT `tbTransferencia_id_pagamento _tbPagamento_id_pagamento` FOREIGN KEY (`id_pagamento `) REFERENCES `tbPagamento`(`id_pagamento`) ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE `tbDinheiro` ADD CONSTRAINT `tbDinheiro_id_pagamento _tbPagamento_id_pagamento` FOREIGN KEY (`id_pagamento `) REFERENCES `tbPagamento`(`id_pagamento`) ON DELETE CASCADE ON UPDATE CASCADE;
