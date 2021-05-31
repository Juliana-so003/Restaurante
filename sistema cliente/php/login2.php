<?php
session_start();
require 'conexao.php';

if (empty($_POST['usuario']) && empty($_POST['email']) || empty($_POST['senha'])) {
    header('Location: login1.php');
    exit();
}
$usuario = mysqli_real_escape_string($conexao, $_POST['usuario']);
$email = mysqli_real_escape_string($conexao, $_POST['email']);
$senha = mysqli_real_escape_string($conexao, $_POST['senha']);

$query = "select id_cliente, nome_usuario from tbcliente where nome_usuario = '{$usuario}' or email = '{$email}' and senha = '{$senha}' " ;
$result = mysqli_query($conexao, $query);
$linha = mysqli_num_rows($result);

if ($linha == 1) {
    $_SESSION['nome_usuario'] = $usuario;
    header('Location: painel.php');
    exit();
} else {
    $_SESSION['nao_autenticado'] = true;
    header('Location: login1.php');
    exit();
}