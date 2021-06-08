<?php
 session_start();
 if(!$_SESSION['email']){
     header('Location: ../php/recup_senha.php');
     exit();
 }
 
?>