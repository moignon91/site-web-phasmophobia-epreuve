<?php 
session_start();
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="../css/principal.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>

    <title>Wiki phasmophobia</title>
</head>
<body>
<section class="saine">
    <div class="carrétitre">
       <a href="Accueil.php"> <img class="imgtitre" src="../image/phasmophobia.jpg"></a>
        <div class="carrénav">
            <nav class="navbar navbar-expand-lg navbar-light">
                <div class="container-fluid">
                    <a class="navbar-brand" style="color:white;" href="Accueil.php">Accueil</a>
                    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse" id="navbarNavDropdown">
                        <ul class="navbar-nav">
                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle" style="color:white;" href="#" id="navbarDropdownMenuLink" role="button" data-bs-toggle="dropdown" aria-expanded="false">Items</a>
                            
                                <ul class="dropdown-menu"  aria-labelledby="navbarDropdownMenuLink">
                                    <li><a class="dropdown-item" href="Items.php">Items Normals</a></li>
                                    <li><a class="dropdown-item" href="Item_modis.php">Items modis</a></li>
                                </ul>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" style="color:white;" href="entites.php">Entités</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" style="color:white;" href="preuve.php">Preuve</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" style="color:white;" href="carte.php">Carte</a>
                            </li>
                            <?php if(!isset($_SESSION['user'])){
                                    if(!isset($_SESSION['admin'])) {
                            ?>
                            <li class="nav-item">
                                <a class="nav-link" style="color:white;" href="connection.php">se connecter</a>
                            </li>
                            <?php 
                                }elseif(isset($_SESSION['admin'])){ ?>
                                    <li class="nav-item">
                                        <a class="nav-link" style="color:white;" href="compte.php">compte/déco</a>
                                        
                                    </li>
                            <?php }
                            }
                            elseif(isset($_SESSION['user'])){?>
                            <li class="nav-item">
                                <a class="nav-link" style="color:white;" href="compte.php">compte/déco</a>
                                
                            </li>
                            <?php }
                            ?>
                        </ul>
                    </div>
                </div>
            </nav>
        </div>
    </div>   
