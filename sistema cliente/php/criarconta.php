<?php
require 'conexao.php';
 $nome = $_POST['nome_cad'];
 $usuario = $_POST['usuario_cad'];
 $senha = $_POST['senha_cad'];
 $data = $_POST['data_cad'];
 $cpf = $_POST['CPF_cad'];
 $cidade = $_POST['cidade_cad'];
 $bairro = $_POST['bairro_cad'];
 $rua = $_POST['rua_cad'];
 $numCasa = $_POST['numCasa_cad'];


$sql = "INSERT INTO `tbcliente`(`nome`, `telefone`, `data_nascimento`, `cpf`, `email`, `senha`, `nome_usuario`) VALUES ('{$nome}','{$','[value-3]','[value-4]','[value-5]','[value-6]','[value-7]')";

?>