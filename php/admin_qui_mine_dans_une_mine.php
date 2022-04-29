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
            <form action="admin.php" method="post">
              <div class="mb-3">
                <label for="exampleInputEmail1" class="form-label" style="color:white">Email address</label>
                <input type="email" name="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
              </div>
              <div class="mb-3">
                <label for="exampleInputPassword1" class="form-label" style="color:white">Password</label>
                <input type="password" name="psw" class="form-control" id="exampleInputPassword1">
              </div>
              <button type="submit" class="btn btn-primary">Submit</button>
            </form>
          </div>
        <div class="carrévideconnecte">
        </div>
    </div>
</div>
<?php 
include ("bot.php");
?>