<?php
require 'conexao.php';
$sql = "SELECT * FROM `tbcliente`";
$retorno = $conexao->query($sql);
if ($retorno->num_rows > 0) {
    while ($linha = $retorno->fetch_assoc()) {
        echo $linha['nome'] . '<br/>' . $linha['telefone'] . '<br/>' . $linha['data_nascimento'] . '<br/>' . $linha['cpf'] . '<br/>'
            . $linha['email'] . '<br/>' . $linha['senha'] . '<br/>' . $linha['nome_usuario'] . '<br/>'
            . $linha['img'] . '<br/>';
    }
} else {
    echo "nao foi encontrado";
} ?>