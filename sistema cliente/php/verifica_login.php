<?php
session_start();

if (!$_SESSION['nome_usuario']) {
        header('Location: login1.php');
        exit();
}