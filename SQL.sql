DROP TABLE IF EXISTS tbFuncionario;
DROP TABLE IF EXISTS tbProdutos;
DROP TABLE IF EXISTS tbPedidos;
DROP TABLE IF EXISTS tbCliente;
DROP TABLE IF EXISTS tbConta;


CREATE TABLE tbFuncionario (
CPF CHAR(11) NOT NULL PRIMARY KEY,
Nome VARCHAR(45) NOT NULL,
DataNascimento  DATE NOT NULL,
Nacionalidade  VARCHAR(20) NOT NULL,
IdiomasFalados ENUM ("Português", "Inglês ","Espanhol","outros") NOT NULL DEFAULT 'Português ',
Cargo ENUM ("Gerente", "Cozinheiro", "Entregador","Proprietário") NOT NULL,
Salario DECIMAL(6,2) NOT NULL);

CREATE TABLE tbProdutos (
Codigo INT NOT NULL PRIMARY KEY,
Nome VARCHAR(20) NOT NULL,
DataFabri DATE NOT NULL,
DataValida DATE NOT NULL,
Quantidade  INT NOT NULL,
Categoria ENUM ("Frutas","Secos", "Bedidas geladas", "Bebidas quentes", "Verduras/legumes"  ) NOT NULL,
valor INT NOT NULL);

CREATE TABLE tbPedidos (
Id CHAR(11) AUTO_INCREMENT NOT NULL PRIMARY KEY,
Nome VARCHAR(20) NOT NULL,
Quantidade  INT NOT NULL,
Valor DECIMAL(4,2) NOT NULL,
CPF_cliente CHAR(11) NOT NULL,
Desconto INT NOT NULL,
Categoria ENUM ("Entrada","Prato principal", "Acompanhamento", "sobremesa","Bebidas") NOT NULL);

CREATE TABLE tbCliente (
CPF CHAR(11) NOT NULL PRIMARY KEY,
Nome VARCHAR(45) NOT NULL,
DataNascimento DATE NOT NULL,
email VARCHAR(35) NOT NULL,
Endereco VARCHAR(45) NOT NULL);

CREATE TABLE tbConta (
Código  INT NOT NULL PRIMARY KEY,
Valor DECIMAL(5,2) NOT NULL,
FormaPagamento ENUM ("Credito", "Debito", "Pix", "Especie") NOT NULL,
CPF_cliente CHAR(11) NOT NULL,
nomeCliente VARCHAR(45) NOT NULL);

ALTER TABLE tbPedidos ADD CONSTRAINT tbPedidos_CPF_cliente_tbCliente_CPF FOREIGN KEY (CPF_cliente) REFERENCES tbCliente(CPF);
ALTER TABLE tbConta ADD CONSTRAINT tbConta_CPF_cliente_tbCliente_CPF FOREIGN KEY (CPF_cliente) REFERENCES tbCliente(CPF);