<?php
    require_once 'config.php';

    if(isset($_POST['pseudo']) && isset($_POST['email']) && isset($_POST['psw1']) && isset($_POST['psw2'])){
        if(isset($_POST['chek'])){    
            $pseudo = htmlspecialchars($_POST['pseudo']);
            $email = htmlspecialchars($_POST['email']);
            $password = htmlspecialchars($_POST['psw1']);
            $password_retype = htmlspecialchars($_POST['psw2']);

            $check = $bdd->prepare('SELECT pseudo, mel, psw FROM inscrit WHERE mel = ?');
            $check->execute(array($email));
            $data = $check->fetch();
            $row = $check->rowCount();
            $check2 = $bdd->prepare('SELECT pseudo, mel, psw FROM inscrit WHERE pseudo = ?');
            $check2->execute(array($pseudo));
            $data2 = $check2->fetch();
            $row2 = $check2->rowCount();
            if($row == 0 && $row2 ==0)
            {
                if(strlen($pseudo) <= 50)
                {
                    if(strlen($email) <= 150)
                    {
                        if(filter_var($email, FILTER_VALIDATE_EMAIL))
                        {
                            if($password == $password_retype)
                            {
                                $password = hash('sha256', $password);

                                $ip = $_SERVER['REMOTE_ADDR'];

                                $insert = $bdd->prepare('INSERT INTO inscrit(pseudo, mel, psw, ip) VALUES(:pseudo, :mel, :psw, :ip)');
                                $insert->execute(array(
                                    'pseudo' => $pseudo,
                                    'mel' => $email,
                                    'psw' => $password,
                                    'ip' => $ip
                                ));
                                header('Location:inscription.php?reg_err=sucesse');
                            }else header('Location:inscription.php?reg_err=password');

                        }else header('Location:inscription.php?reg_err=email');

                    }else header('Location:inscription.php?reg_err=email_length');

                }else header('Location:inscription.php?reg_err=pseudo_length');

            }else header('Location:inscription.php?reg_err=already');
        }else header('Location:inscription.php?reg_err=chek');
    }