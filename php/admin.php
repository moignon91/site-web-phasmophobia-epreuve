<?php 
session_start();
require_once 'config.php';

if(isset($_POST['email']) && isset($_POST['psw'])) {

    $email = htmlspecialchars($_POST['email']);
    $password = htmlspecialchars($_POST['psw']);

    $check = $bdd->prepare('SELECT pseudo, mel, psw FROM admins WHERE mel = ?');
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
                $_SESSION['admin'] = $data['pseudo'];
                header('Location:Accueil.php');

            }else header('Location:admin_qui_mine_dans_une_mine.php');

        }else header('Location:admin_qui_mine_dans_une_mine.php');

    }else header('Location:admin_qui_mine_dans_une_mine.php');
}else header('Location:admin_qui_mine_dans_une_mine.php');