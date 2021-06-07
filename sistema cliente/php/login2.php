<?php
session_start();
include('conexao.php');
if(empty($_POST['usuario']) || empty($_POST['email']) || empty($_POST['senha'])){
    header('Location: login1.php');
    exit();
}
$usuario = mysqli_real_escape_string($conexao, $_POST['usuario']);
$email = mysqli_real_escape_string($conexao, $_POST['email']);
$senha = mysqli_real_escape_string($conexao, $_POST['senha']);

$query = "SELECT *  FROM `tbcliente` WHERE (`nome_usuario` = '{$usuario}' and `email` = '{$email}') and `senha` = '{$senha}'";
$result = mysqli_query($conexao, $query);

$linha = mysqli_num_rows($result);

if($linha === 1){
    $_SESSION['usuario'] = $usuario;
    header('Location: Visualizar.php');
    exit();
}else{
    header('Location: login1.php');

    exit();
}
?>