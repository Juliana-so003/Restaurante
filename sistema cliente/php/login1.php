<?php
 session_start(); 
?>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Tela de Login</title>
  <link rel="stylesheet" type="text/css" href="../css/login.css">
     <link rel=" stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css ">
</head>

<body>
  <div class="container"> 

    <?php
    if (isset($_SESSION['nao_autenticado'])) :
        ?>
    <div class="erro"><p id="erro">ERRO: Usuario ou senha invalida.</p></div>
        <?php
    endif;
    unset($_SESSION['nao_autenticado']);
    ?>
<div class="container1">
  <form action="login2.php" method="POST">
   <h1 id="titulo">Login </h1>
   <div class="div_input"> 
     <img class="img1"  src="../icones/avatar.png">
    <input type="text" name="usuario" id="nome_usu" placeholder="nome de usuário"> 
    </div>
     <p id="linha">ou</p>

      <div class="div_input"> 
          <img class="img1" src="../icones/e-mail.png"/>
        <input type="email" name="email" id="email" placeholder="e-mail"> 
    </div>
    <div class="div_input"> 
      <img class="img1" src="../icones/cadeado.png" />
    <input type="password" name="senha" id="senha" placeholder="senha" required>
       <button type="button" onclick="mostrarSenha()">
               <i class="fa fa-eye" aria-hidden="true"></i>
       </button>
   </div>
  <div>
<button id="botao" type="submit">Login</button>
 </div> 
 
 <p><a href="recup_senha.html">Esqueceu sua senha?</a></p>
 
 <p><a href="criarconta.html">Criar conta</a>
 </p>
  </form>
</div>

<div class="container2"></div>
</div>
 <script src="../js/login.js"></script>
</body>
</html>
