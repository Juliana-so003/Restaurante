<?php
require 'conexao.php';
$sql = "SELECT * FROM `tbcliente`";
$retorno = $conexao->query($sql);

if ($retorno->num_rows > 0) {

    while ($linha = $retorno->fetch_assoc()) {
        echo $linha['nome_usuario'] . " - " . $linha['senha'] .
            " - " . $linha['email'] .  "<br/>";
    }
    echo "<a href='index.html'><button type='button'>Início</button></a>";
} else {
    echo "Não foi encontrado registro";
}