<?php 
 include ("top.php");
 require_once 'config.php';
?>

<script>
    const body = document.querySelector('body');
    body.classList.toggle('Item_objet_modi')
</script>
<?php 
$servername ='localhost';
$username ='root';
$password ='';

$numeroid = $_GET['preuveid'];

$pdo = new PDO("mysql:host=$servername;dbname=phasmophobia", $username, $password);

$nom = $pdo->prepare("SELECT * FROM preuve WHERE id = ?");
$nom->execute(array($numeroid));
$result1 = $nom->fetch();
?>
<div class="contenant">

    <div class="carré_content">
        <h1 class="nom_de_objet"><?php echo $result1['nom'];  ?></h1>
        <img class="image_objet_normal" src=<?php echo $result1['image']; ?>>
        <div class="objet_carré">
        <h3><strong>Information :</strong></h3>
        <br><br>
        <?php echo $result1['text'];?>
        </div>
    </div>

    <?php $page = htmlspecialchars(4); 
    if(isset($_POST['commentaire_submite'])){
        if(isset($_POST['commentaire'])){
            $commentaire = htmlspecialchars($_POST['commentaire']);
            if(strlen($commentaire)> 30 && strlen($commentaire)<500) {

                $ins = $bdd->prepare('INSERT INTO commentaire (pseudo, commentaire, idpage, id_art) VALUES(:pseudo, :commentaire, :idpage, :id_art)');
                $ins->execute(array(
                    'pseudo' => $_SESSION['user'],
                    'commentaire' => $commentaire,
                    'idpage' => $page,
                    'id_art' => $numeroid
                ));
                $erreur ="<strong>votre commentaire a bien été poster</strong>";
            }else {
                $erreur = "<strong>pour envoyez un commentaire il faut plus de 30 caractére et moin de 500 caractére</strong>";
            }

        }else {
            $erreur = "<strong>pour envoyez un commentaire veuillez marquer un commentaire.</strong>";
        }
    }

        $affichecommentaire = $bdd->prepare('SELECT pseudo, commentaire FROM commentaire WHERE idpage = :idpage AND id_art = :id_art');
        $affichecommentaire->execute(array(
            'idpage' => $page,
            'id_art' => $numeroid
        ));
    ?>


    <div class="partie_commentaire">
        
        <?php while($c = $affichecommentaire->fetch()) { ?>
            <div class="commentaire">
                <div class="in_commentaire">
                    <h3 style="color:#E9A6A6"><?= $c['pseudo']?>:</h3>
                    <div class="textcommentaire">
                        <?= $c['commentaire']?>
                    </div>
                    <div class="videcommentarie">
                    </div>
                </div>
            </div>
        <?php 
                }
                ?>
        <?php if(isset($_SESSION['user'])){ 
        if(isset($erreur)) 
        {
            echo $erreur;
        }?>
        <br><br>
        <div class="envoie_commentaire">
            <form method="post">
                <div class="mb-3">
                    <label for="exampleInputEmail1" class="form-label" style="color:white">Les commentaires sont là pour aider des joueurs donc ne mettez pas n'importe quoi car ils seront supprimés.</label>
                    <textarea class="form-control" name="commentaire" id="exampleFormControlTextarea1" rows="3"></textarea>
                </div>
                    <button type="submit" name="commentaire_submite" class="btn btn-primary" style="background-color:#864879; color:#E9A6A6">envoyez</button>
            </form>
        </div>

        <?php }?>

    </div>


    <div class="carrévide">
    </div>
</div>

<?php 
include ("bot.php");
?>