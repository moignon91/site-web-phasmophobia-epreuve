<?php 
 include ("top.php");
?>
<script>
    const body = document.querySelector('body');
    body.classList.toggle('Item_objet_modi')
</script>
<div class="contenant">
    <div class="carré_content">
        <div class="carreconnecte">
        <h1 class="nom_de_objet">Inscription</h1>

        <?php 
                if(isset($_GET['reg_err']))
                {
                    $err = htmlspecialchars($_GET['reg_err']);

                    switch($err)
                    {
                        case 'sucesse':
                            ?>
                            <br><br>
                            <div class="alert">
                                <strong>Succès</strong> inscription réussi!
                            </div>
                            <br><br>
                        <?php
                        break;
                        case 'email':
                            ?>
                            <br><br>
                            <div class="alert">
                                <strong>Erreur</strong> email non valide.
                            </div>
                            <br><br>
                        <?php
                        break;
                        case 'email_length':
                            ?>
                            <br><br>
                            <div class="alert">
                                <strong>Erreur</strong> email trop long max 150 caractére.
                            </div>
                            <br><br>
                        <?php
                        break;
                        case 'pseudo_length':
                            ?>
                            <br><br>
                            <div class="alert">
                                <strong>Erreur</strong> pseudo trop long max 50 caractére.
                            </div>
                            <br><br>
                        <?php
                        break;
                        case 'already':
                            ?>
                            <br><br>
                            <div class="alert">
                                <strong>Erreur</strong> mail ou speudo déja existant.
                            </div>
                            <br><br>
                        <?php
                        break;
                        case 'password':
                            ?>
                            <br><br>
                            <div class="alert">
                                <strong>Erreur</strong> mot de passe différent.
                            </div>
                            <br><br>
                        <?php
                        break;
                        case 'chek':
                            ?>
                            <br><br>
                            <div class="alert">
                                <strong>Erreur</strong> les condition pour l'utilisateur doive être cocher pour pouvoir s'inscrire.
                            </div>
                            <br><br>
                        <?php
                        break;
                    }
                }
            ?>
            <form action="inscription_commande.php" method="post">
            <div class="mb-3">
                <label for="exampleInputEmail1" class="form-label" style="color:white">Pseudo</label>
                <input type="text" name="pseudo" class="form-control" id="exampleInputEmail1" required="required">
            </div>
            <div class="mb-3">
                <label for="exampleInputEmail1" class="form-label" style="color:white">Email address</label>
                <input type="email" name="email" class="form-control" id="exampleInputEmail1" required="required" aria-describedby="emailHelp">
            </div>
            <div class="mb-3">
                <label for="exampleInputPassword1" class="form-label" style="color:white">Password</label>
                <input type="password" name="psw1" class="form-control" required="required" id="exampleInputPassword1">
            </div>
            <div class="mb-3">
                <label for="exampleInputPassword1" class="form-label" style="color:white">Vérification Password</label>
                <input type="password" name="psw2" class="form-control" required="required" id="exampleInputPassword2">
            </div>
            <div class="mb-3 form-check">
                <input type="checkbox" name="chek" class="form-check-input" id="exampleCheck1">
                <label class="form-check-label" for="exampleCheck1" required="required" style="color:white">Condition d'utilisateur</label>
            </div>
            <button type="submit" class="btn btn-primary">Submit</button>
            </form>
            <br><br>
            <a class="aitem" href="connection.php">Connexion</a>
        </div>
        <div class="carrévideconnecte">
        </div>
    </div>
</div>
<?php 
include ("bot.php");
?>