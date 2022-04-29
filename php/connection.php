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
        <h1 class="nom_de_objet">Connexion</h1>
            <?php 
                if(isset($_GET['login_err']))
                {
                    $err = htmlspecialchars($_GET['login_err']);

                    switch($err)
                    {
                        case 'password':
                            ?>
                            <br><br>
                            <div class="alert">
                                <strong>Erreur</strong> mot de passe 
                            </div>
                            <br><br>
                        <?php
                        break;
                        case 'email':
                            ?>
                            <br><br>
                            <div class="alert">
                                <strong>Erreur</strong> mot de passe ou email incorrecte.
                            </div>
                            <br><br>
                        <?php
                        break;
                        case 'already':
                            ?>
                            <br><br>
                            <div class="alert">
                                <strong>Erreur</strong> compte non existant.
                            </div>
                            <br><br>
                        <?php
                        break;
                    }
                }
            ?>
            <form action="connection_commande.php" method="post">
            <div class="mb-3">
                <label for="exampleInputEmail1" class="form-label" style="color:white">Email address</label>
                <input type="email" name="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
            </div>
            <div class="mb-3">
                <label for="exampleInputPassword1" class="form-label" style="color:white">Password</label>
                <input type="password" name="psw1" class="form-control" id="exampleInputPassword1">
            </div>
            <button type="submit" name="submit" class="btn btn-primary">Submit</button>
            </form>

            <br><br>
            <a class="aitem" href="inscription.php">s'inscrire</a>
        </div>
        <div class="carrévideconnecte">
        </div>
    </div>
</div>
<?php 
include ("bot.php");
?>