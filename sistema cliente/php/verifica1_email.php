<?php


require 'conexao.php';
 if(empty($_POST['email'])){
  $_SESSION['nao_preenxido'] = true;

  header('Location: recup_senha.php');
    exit();
}
$email = mysqli_real_escape_string($conexao, $_POST['email']);
$query = "SELECT `nome_usuario`, `senha`  FROM `tbcliente` WHERE `email` = '{$email}'";
$result = mysqli_query($conexao, $query);

$linha = mysqli_num_rows($result);

if($linha === 1){
    $_SESSION['email'] = $email;
    $_SESSION['verificado'] = true;

    header('Location: recup_senha.php');
    exit();
}else{
  $_SESSION['nao_autenticado'] = true;
  
    header('Location: recup_senha.php');
    exit();
}
?>