<?php 
require '../template/partiels/tpt-top.php'; ?>

<div class="container">
    <form action="" method="post">
        <label for="mail">Entrez votre E-mail</label>
        <input type="text" name="mail">
        <label for="password">Entrez votre mot de passe</label>
        <input type="password" name="password">
        <input type="submit" name="submit" value="Connexion">
    </form>
</div>


<?php require '../template/partiels/tpt-bot.php'; ?>
