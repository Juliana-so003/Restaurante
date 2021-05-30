<?php
   $servidor = "localhost";
    $usuario = "root";
    $senha = "";
    $database = "dbrestaurante";

$conexao = new mysqli($servidor, $usuario, $senha, $database);

if ($conexao->connect_error) {
        die("Conexão inválida: " . $connect->connect_error);
}

