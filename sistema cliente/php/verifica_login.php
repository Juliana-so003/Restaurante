<?php
session_start();

if ((!$_SESSION['nome_usuario'] && !$_SESSION['email']) || !$_SESSION['senha']) {
        header('Location: login1.php');
        exit();
}