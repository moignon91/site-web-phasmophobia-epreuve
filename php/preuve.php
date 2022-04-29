<?php 

 include ("top.php");
?>
<script>
    const body = document.querySelector('body');
    body.classList.toggle('Item')
</script>
<div class="contenant">
        <h1 class="titregr">Preuve</h1>

    <div class="selection">
        
        <table class="tableauitem">
            <tr style="border-top: 1px solid #E9A6A6">
                <td>E</td>
                <td style="padding-left: 30px">P</td>
            </tr>
            <tr>
                <td>
                    <a class="aitem" href="preuve_indice.php?preuveid=1">Ecriture fantomatique</a><br><br>
                    <a class="aitem" href="preuve_indice.php?preuveid=2">EMF niveau 5</a><br><br>
                    <a class="aitem" href="preuve_indice.php?preuveid=3">Empreintes</a>
                </td>
                <td style="padding-left: 30px">
                    <a class="aitem" href="preuve_indice.php?preuveid=4">Projecteur de DOTS</a>
                </td>
            </tr>
            <tr style="border-top: 1px solid #E9A6A6">
                <td>O</td>
                <td style="padding-left: 30px">S</td>
            </tr>
            <tr>
                <td>
                    <a class="aitem" href="preuve_indice.php?preuveid=5">Orbes fantomatiques</a>
                </td>
                <td style="padding-left: 30px">
                    <a class="aitem" href="preuve_indice.php?preuveid=6">Spirit Box</a>
                </td>
            </tr>
            <tr style="border-top: 1px solid #E9A6A6">
                <td>T</td>
            </tr>
            <tr>
                <td>
                    <a class="aitem" href="preuve_indice.php?preuveid=7">Températures glaciales</a>
                </td>
            </tr>
        </table>
    </div>
</div>
<?php 

include ("bot.php");
?>