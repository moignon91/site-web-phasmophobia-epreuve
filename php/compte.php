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
        <h1 class="nom_de_objet">Compte</h1>
        <div>
            <a class="liencompte" href="deconnexion.php">deconnexion</a>
            <br><br>
            <a class="liencompte2" href="supression.php">supprimer compte</a>
        </div>
        </div>
        <div class="carrévideconnecte">
        </div>
    </div>
</div>
<?php 
include ("bot.php");
?>