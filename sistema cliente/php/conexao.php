<?php
   $servidor = "localhost";
    $usuario = "root";
    $senha = "";
    $database = "dbrestaurante";

if ($conn = mysqli_connect($servidor, $usuario, $senha, $database)) {
    // echo "ok";
} else {
        echo "erroo";
}

$conexao = new mysqli($servidor, $usuario, $senha, $database);

if ($conexao->connect_error) {
        die("Conexão inválida: " . $connect->connect_error);
} else{
  echo "ok";
}

