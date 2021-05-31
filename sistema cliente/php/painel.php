<?php
session_start();
   require 'verifica_login.php';
?>
<h2>Olá, <?php echo $_SESSION['nome_usuario'];?></h2>
<h2><a href="logout.php">Sair da sessão</a></h2>