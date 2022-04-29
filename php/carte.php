<?php 

 include ("top.php");
?>
<script>
    const body = document.querySelector('body');
    body.classList.toggle('Item')
</script>
<div class="contenant">
        <h1 class="titregr">Carte</h1>

    <div class="selection">
        
        <table class="tableauitem">
            <tr style="border-top: 1px solid #E9A6A6">
                <td>Petite</td>  
            </tr>
            <tr>
                <td>
                    <a class="aitem" href="cartes_visu.php?carteid=1">Bleasdale Farmhouse</a><br><br>
                    <a class="aitem" href="cartes_visu.php?carteid=2">Edgefield Street House</a><br><br>
                    <a class="aitem" href="cartes_visu.php?carteid=3">Grafton Farmhouse</a><br><br>
                    <a class="aitem" href="cartes_visu.php?carteid=4">Ridgeview Road House</a><br><br>
                    <a class="aitem" href="cartes_visu.php?carteid=5">Tanglewood Street House</a><br><br>
                    <a class="aitem" href="cartes_visu.php?carteid=6">Willow Street House</a><br><br>
                </td>
            </tr>
            <tr style="border-top: 1px solid #E9A6A6">
                <td>Medium</td>
            </tr>
            <tr>
                <td>
                    <a class="aitem" href="cartes_visu.php?carteid=7">Brownstone High School</a><br><br>
                    <a class="aitem" href="cartes_visu.php?carteid=8">Maple Lodge Campsite</a><br><br>
                    <a class="aitem" href="cartes_visu.php?carteid=9">Prison</a><br><br>
                </td>
            </tr>
            <tr style="border-top: 1px solid #E9A6A6">
                <td>Large</td>
            </tr>
            <tr>
                <td>
                    <a class="aitem" href="cartes_visu.php?carteid=10">Asylum</a>
                </td>
            </tr>
        </table>
    </div>
</div>
<?php 

include ("bot.php");
?>