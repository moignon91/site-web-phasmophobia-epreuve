
<?php
// si le mot de passe est posté
if(isset($_POST["motpasse"])){
// si la valeur du mot de passe est bien celle qu'il faut
if($_POST["motpasse"] == "moi") {
header ("Location: php/Accueil.php");
echo 'ok';
exit();
}else {echo "Mauvais mot de passe";}
}
echo 'Veuillez saisir votre mot de passe: <br>';
echo '<form name="motdepasse" method="post" action="' . htmlspecialchars($_SERVER['REQUEST_URI']) . '">';
echo '<input type=password name="motpasse" size="10" value="" />';
echo '<input type="submit" name="action onClick=(this.form)" value="OK">';
echo '</form>';
?> 