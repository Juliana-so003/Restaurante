
<?php
session_start();

include('verifica_login.php');

/*
$query = "SELECT *  FROM `tbcliente` WHERE `nome_usuario` = '{$usuario}' and `email` = '{$email}' and `senha` = '{$senha}'";

$sql = "SELECT * FROM `tbcliente`";
$retorno = $conexao->query($sql);

if ($retorno->num_rows > 0) {

    while ($linha = $retorno->fetch_assoc()) {
        echo $linha['nome_usuario'] . " - " . $linha['senha'] .
            " - " . $linha['email'] .  "<br/>";
    }
} else {
    echo "Não foi encontrado registro";
}*/
?>
<h2> <?php echo $_SESSION['usuario']; ?></h2>
<h2> <a href='logout.php'>sair</a>
</h2>