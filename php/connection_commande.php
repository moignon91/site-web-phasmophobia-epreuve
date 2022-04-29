<?php
session_start();
require_once 'config.php';

if(isset($_POST['email']) && isset($_POST['psw1']))
{
    $email =htmlspecialchars($_POST['email']);
    $password = htmlspecialchars($_POST['psw1']);

    $check = $bdd->prepare('SELECT pseudo, mel, psw FROM inscrit WHERE mel = ?');
    $check->execute(array($email));
    $data = $check->fetch();
    $row = $check->rowCount();

    if($row == 1)
    {
        if(filter_var($email, FILTER_VALIDATE_EMAIL))
        {
            $password = hash('sha256', $password);

            if($data['psw'] === $password)
            {
                $_SESSION['user'] = $data['pseudo'];
                header('Location:Accueil.php');

            }else header('Location:connection.php?login_err=password');

        }else header('Location:connection.php?login_err=email');

    }else header('Location:connection.php?login_err=already');

}else header('Location:connection.php');