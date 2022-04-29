<?php 

 include ("top.php");
?>
<script>
    const body = document.querySelector('body');
    body.classList.toggle('Item')
</script>
<div class="contenant">
        <h1 class="titregr">Item</h1>

    <div class="selection">
        
        <table class="tableauitem">
            <tr style="border-top: 1px solid #E9A6A6">
                <td>A</td>
                <td style="padding-left: 30px">L</td>
            </tr>
            <tr>
                <td><a class="aitem" href="item_objet_normal.php?objetid=1">Appareil photo</a></td>
                <td style="padding-left: 30px">
                    <a class="aitem" href="item_objet_normal.php?objetid=2">Lampe de poche</a><br>
                    <a class="aitem" href="item_objet_normal.php?objetid=3">Lampe de poche puissante</a><br>
                    <a class="aitem" href="item_objet_normal.php?objetid=4">Lecteur EMF</a><br>
                    <a class="aitem" href="item_objet_normal.php?objetid=5">Livre d'écriture</a><br>
                    <a class="aitem" href="item_objet_normal.php?objetid=6">Lumirère UV</a>
                </td>
            </tr>
            <tr style="border-top: 1px solid #E9A6A6">
                <td>B</td>
                <td style="padding-left: 30px">M</td>
            </tr>
            <tr>
                <td>
                    <a class="aitem" href="item_objet_normal.php?objetid=7">Bougie</a><br>
                    <a class="aitem" href="item_objet_normal.php?objetid=8">Briquet</a><br>
                    <a class="aitem" href="item_objet_normal.php?objetid=9">Baton lumineux</a><br>
                    <a class="aitem" href="item_objet_normal.php?objetid=10">Baton d'encens</a>
                </td>
                <td style="padding-left: 30px">
                    <a class="aitem" href="item_objet_normal.php?objetid=11">Microphone parabolique</a>
                </td>
            </tr>
            <tr style="border-top: 1px solid #E9A6A6">
                <td>C</td>
                <td style="padding-left: 30px">P</td>
            </tr>
            <tr>
                <td>
                    <a class="aitem" href="item_objet_normal.php?objetid=12">Caméra montée sur la tête</a><br>
                    <a class="aitem" href="item_objet_normal.php?objetid=13">Caméra vidéo</a><br>
                    <a class="aitem" href="item_objet_normal.php?objetid=14">Capteur de lumière infrarouge</a><br>
                    <a class="aitem" href="item_objet_normal.php?objetid=15">Capteur de mouvement</a><br>
                    <a class="aitem" href="item_objet_normal.php?objetid=16">Capteur sonore</a><br>
                    <a class="aitem" href="item_objet_normal.php?objetid=17">Crucifix</a>
                </td>
                <td style="padding-left: 30px">
                    <a class="aitem" href="item_objet_normal.php?objetid=18">Pilules calmantes</a><br>
                    <a class="aitem" href="item_objet_normal.php?objetid=19">Planche Ouija</a><br>
                    <a class="aitem" href="item_objet_normal.php?objetid=20">Projecteur DOTS</a>
                </td>
            </tr>
            <tr style="border-top: 1px solid #E9A6A6">
                <td>S</td>
                <td style="padding-left: 30px">T</td>
            </tr>
            <tr>
                <td>
                <a class="aitem" href="item_objet_normal.php?objetid=21">Sel</a><br>
                <a class="aitem" href="item_objet_normal.php?objetid=22">Spirit Box</a>
                </td>
                <td style="padding-left: 30px">
                    <a class="aitem" href="item_objet_normal.php?objetid=23">Thermomètre</a><br>
                    <a class="aitem" href="item_objet_normal.php?objetid=24">Trépied</a>
                </td>
            </tr>
        </table>
    </div>
</div>
<?php 

include ("bot.php");
?>