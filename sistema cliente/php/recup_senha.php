<?php session_start();


?>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Recuperar senha</title>
  <link rel="stylesheet" href="../css/recup_senha.css">
</head>

<body>
  
  <?php
if (isset($_SESSION['falta_preenxer'])) :
        ?>
    <div class="erro"><p id="erro">Insira todos os campos!</p></div>
        <?php
    endif;
    unset($_SESSION['falta_preenxer']);
    ?>
    <?php
    if (isset($_SESSION['falta_autenticado'])) :
        ?>
    <div class="erro"><p id="erro">ERRO: email invalida.</p></div>
        <?php
    endif;
    unset($_SESSION['falta_autenticado']);
    ?>
     <?php
if (isset($_SESSION['verificado'])) :
        ?>
    <div class="verificado"><p id="erro">Verificado!</p></div>
        <?php
    endif;
    unset($_SESSION['verificado']);
    ?>

<div class="container">

<form method="POST" action="verifica1_email.php">
      <h2>Nova senha</h2>
      <div class="form-group">
        <div class="label">Digite o email cadastrado</div>
        <div class="div_input"> 
          <img class="img1" src="../icones/e-mail.png"/>
        <input type="email" name="email" id="email" placeholder="e-mail"> 
    </div> </form>
      <div class="form-group">
    
      <button type="submit" class="submit">Enviar</button>
    
        </div>
        <div class="label">Lembrou da senha?<a href="../php/login1.php">Clique aqui</a></div>
      
   
  </div>
</body>

</html>