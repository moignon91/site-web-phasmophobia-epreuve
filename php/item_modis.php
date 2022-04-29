<?php 

 include ("top.php");
?>
<script>
    const body = document.querySelector('body');
    body.classList.toggle('Item_modis')
</script>
<div class="contenant">
        <h1 class="titregr">Item Modis</h1>

    <div class="selection">
        
        <table class="tableauitem" style="margin-top:90px">
            <tr>
                <td>
                    <a class="aitem" href="item_objet_modis.php?objet_modiid=1">Les cartes de tarot</a><br><br>
                    <a class="aitem" href="item_objet_modis.php?objet_modiid=2">La poupée vaudou torturée</a><br><br>
                    <a class="aitem" href="item_objet_modis.php?objet_modiid=3">La boîte à musique</a>
                </td>
                <td style="padding-left: 30px">
                    <a class="aitem" href="item_objet_modis.php?objet_modiid=4">Le miroir hanté</a><br><br>
                    <a class="aitem" href="item_objet_modis.php?objet_modiid=5">Le cercle d'invocation</a><br><br>
                    <a class="aitem" href="item_objet_modis.php?objet_modiid=6">La planche Ouija</a>
                </td>
            </tr>
        </table>
    </div>
</div>
<?php 

include ("bot.php");
?>