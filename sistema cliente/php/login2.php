<?php
require 'conexao.php';

if(empty($_POST['usuario']) && empty($_POST['email']) || empty($_POST['senha'])) {
    header('Location: login1.php');
    exit();
}