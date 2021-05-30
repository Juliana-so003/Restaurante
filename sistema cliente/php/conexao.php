<?php
comentario
   $servidor = "localhost";
    $usuario = "root";
    $senha = "";
    $database = "dbrestaurante";
if ($conn = mysqli_connect($servidor, $usuario, $senha, $database)) {
     //echo "ok";
} else {
        echo "deu merda";
}


?>