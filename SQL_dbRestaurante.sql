CREATE DATABASE `dbrestaurante`;
USE `dbrestaurante`;
DROP TABLE IF EXISTS `tbPratos`;
DROP TABLE IF EXISTS `tbCliente`;
DROP TABLE IF EXISTS `tbEnderecoCliente1`;
DROP TABLE IF EXISTS `tbPedido`;
DROP TABLE IF EXISTS `tbEnderecoCliente2`;
DROP TABLE IF EXISTS `tbConta`;


CREATE TABLE `tbPratos` (
`id` INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
`nome` VARCHAR(30) NOT NULL,
`valor` FLOAT NOT NULL,
`porcao` INT NOT NULL,
`desconto` FLOAT NOT NULL,
`observacao` MEDIUMTEXT NOT NULL,
`categoria` ENUM ("bebida","entrada","acompanhamento","principal","sobremesa") NOT NULL,
`img_prato` MEDIUMBLOB NOT NULL);

CREATE TABLE `tbCliente` (
`nome` VARCHAR(30) NOT NULL,
`telefone` VARCHAR(14) NOT NULL,
`data_nascimento` DATE NOT NULL,
`cpf` VARCHAR(11) NOT NULL PRIMARY KEY,
`email` VARCHAR(35) NOT NULL,
`senha` TEXT(10) NOT NULL UNIQUE,
`nome_usuario` VARCHAR(10) NOT NULL);

CREATE TABLE `tbEnderecoCliente1` (
`cidade` VARCHAR(10) NOT NULL DEFAULT 'Guaiúba',
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

CREATE TABLE `tbEnderecoCliente2` (
`cidade` VARCHAR(10) NOT NULL DEFAULT 'Guaiuba',
`bairro` VARCHAR(20) NOT NULL,
`rua` VARCHAR(20) NOT NULL,
`numero` VARCHAR(5) NOT NULL,
`nome_cliente` VARCHAR(30) NOT NULL,
`codigo` INT NOT NULL);

CREATE TABLE `tbConta` (
`codigo` INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
`valor` DECIMAL NOT NULL,
`forma_pagamento` ENUM ("Credito","Débito","Espécie") NOT NULL,
`cpf_cliente` VARCHAR(11) NOT NULL,
`especie` INT NOT NULL,
`nome_cartao` ENUM ("MasterCard","alelo","elo","visa") NOT NULL);

ALTER TABLE `tbEnderecoCliente1` ADD CONSTRAINT `tbEnderecoCliente1_cpf_tbCliente_cpf` FOREIGN KEY (`cpf`) REFERENCES `tbCliente`(`cpf`) ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE `tbPedido` ADD CONSTRAINT `tbPedido_cpf_tbCliente_cpf` FOREIGN KEY (`cpf`) REFERENCES `tbCliente`(`cpf`) ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE `tbPedido` ADD CONSTRAINT `tbPedido_id_prato_tbPratos_id` FOREIGN KEY (`id_prato`) REFERENCES `tbPratos`(`id`) ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE `tbEnderecoCliente2` ADD CONSTRAINT `tbEnderecoCliente2_codigo_tbConta_codigo` FOREIGN KEY (`codigo`) REFERENCES `tbConta`(`codigo`) ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE `tbConta` ADD CONSTRAINT `tbConta_cpf_cliente_tbCliente_cpf` FOREIGN KEY (`cpf_cliente`) REFERENCES `tbCliente`(`cpf`) ON DELETE CASCADE ON UPDATE CASCADE;