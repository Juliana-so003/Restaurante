<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=Edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">

  <title>HTML</title>
  
  <!-- HTML -->
  

  
  <link rel="stylesheet" href="visualizar.css">
</head>


<body>
 
<?php
session_start();
require 'conexao.php';
include('login2.php');
print_r($_SESSION);
exit;

/*
$sql = "SELECT * FROM `tbcliente`";

$retorno = $conexao->query($sql);

if ($retorno->num_rows > 0) {

    while ($linha = $retorno->fetch_assoc()) {
        echo $linha['nome_usuario'] . " - " . $linha['senha'] .
            " - " . $linha['email'] .  "<br/>";
    }
    echo "<a href='../php/login1.php'><button type='button'>Início</button></a>";
} else {
    echo "Não foi encontrado registro";
}*/
?>
  

  
  
  
  
 
</body>
</html>