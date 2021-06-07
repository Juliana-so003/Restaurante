<?php
 session_start();
 if(!$_SESSION['usuario']){
     header('Location: login1.php');
     exit();
 }
?>