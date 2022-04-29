<?php
session_start();
require_once 'config.php';
if(isset($_SESSION['user'])){

    $data = $_SESSION['user'];
    $check = $bdd->prepare('DELETE FROM inscrit WHERE pseudo = ?');
    $check->execute(array($data));
    session_destroy();
    header('Location:Accueil.php');

}else header('Location:Accueil.php');