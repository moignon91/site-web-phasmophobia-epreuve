<?php 

 include ("top.php");
?>
<script>
    const body = document.querySelector('body');
    body.classList.toggle('Item')
</script>
<div class="contenant">
        <h1 class="titregr">Entités</h1>

    <div class="selection">
        
        <table class="tableauitem">
            <tr style="border-top: 1px solid #E9A6A6">
                <td>B</td>
                <td style="padding-left: 30px">M</td>
            </tr>
            <tr>
                <td><a class="aitem" href="entités_normal.php?entiteid=1">Banshee</a></td>
                <td style="padding-left: 30px">
                    <a class="aitem" href="entités_normal.php?entiteid=2">Myling</a>
                </td>
            </tr>
            <tr style="border-top: 1px solid #E9A6A6">
                <td>C</td>
                <td style="padding-left: 30px">O</td>
            </tr>
            <tr>
            
                <td>
                    <a class="aitem" href="entités_normal.php?entiteid=3">Cauchemar</a>
                </td>
                <td style="padding-left: 30px">
                    <a class="aitem" href="entités_normal.php?entiteid=4">Obake</a><br>
                    <a class="aitem" href="entités_normal.php?entiteid=5">Ombre</a><br>
                    <a class="aitem" href="entités_normal.php?entiteid=6">Oni</a><br>
                    <a class="aitem" href="entités_normal.php?entiteid=7">Onryo</a>
                </td>
                
            </tr>
            <tr style="border-top: 1px solid #E9A6A6">
                <td>D</td>
                <td style="padding-left: 30px">P</td>
            </tr>
            <tr>
                <td>
                    <a class="aitem" href="entités_normal.php?entiteid=8">Djinn</a><br>
                    <a class="aitem" href="entités_normal.php?entiteid=9">Démon</a><br>
                </td>
                <td style="padding-left: 30px">
                    <a class="aitem" href="entités_normal.php?entiteid=10">Poltergeist</a><br>
                </td>
            </tr>
            <tr style="border-top: 1px solid #E9A6A6">
                <td>E</td>
                <td style="padding-left: 30px">R</td>
            </tr>
            <tr>
                <td>
                <a class="aitem" href="entités_normal.php?entiteid=11">Esprit</a>
                </td>
                <td style="padding-left: 30px">
                    <a class="aitem" href="entités_normal.php?entiteid=12">Raiju</a><br>
                    <a class="aitem" href="entités_normal.php?entiteid=13">Revenant</a>
                </td>
            </tr>
            <tr style="border-top: 1px solid #E9A6A6">
                <td>F</td>
                <td style="padding-left: 30px">S</td>
            </tr>
            <tr>
                <td>
                <a class="aitem" href="entités_normal.php?entiteid=14">Fantôme</a>
                </td>
                <td style="padding-left: 30px">
                    <a class="aitem" href="entités_normal.php?entiteid=15">Spectre</a>
                </td>
            </tr>
            <tr style="border-top: 1px solid #E9A6A6">
                <td>G</td>
                <td style="padding-left: 30px">Y</td>
            </tr>
            <tr>
                <td>
                <a class="aitem" href="entités_normal.php?entiteid=16">Goryo</a>
                </td>
                <td style="padding-left: 30px">
                    <a class="aitem" href="entités_normal.php?entiteid=17">Yokai</a><br>
                    <a class="aitem" href="entités_normal.php?entiteid=18">Yurei</a>
                </td>
            </tr>
            <tr style="border-top: 1px solid #E9A6A6">
                <td>H</td>
                <td style="padding-left: 30px">J</td>
            </tr>
            <tr>
                <td>
                <a class="aitem" href="entités_normal.php?entiteid=19">Hantu</a>
                </td>
                <td style="padding-left: 30px">
                    <a class="aitem" href="entités_normal.php?entiteid=20">Jumeaux</a>
                </td>
            </tr>
        </table>
    </div>
</div>
<?php 

include ("bot.php");
?>