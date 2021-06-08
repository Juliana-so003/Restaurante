<?php


require 'conexao.php';
 if(empty($_POST['email'])){
  $_SESSION['falta_preenxer'] = true;

  header('Location: recup_senha.php');
    exit();
}
$email = mysqli_real_escape_string($conexao, $_POST['email']);
$query = "SELECT `nome_usuario`, `senha`  FROM `tbcliente` WHERE `email` = '{$email}'";
$result = mysqli_query($conexao, $query);

$linha = mysqli_num_rows($result);

if($linha === 1){
    $_SESSION['email'] = $email;
    header('Location: recup_senha.php');
    $_SESSION['verificado'] = true;
    exit();
}else{
  $_SESSION['falta_autenticado'] = true;
  
    header('Location: recup_senha.php');
    exit();
}
?>