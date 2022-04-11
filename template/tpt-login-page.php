<?php 
require '../template/partiels/tpt-top.php'; ?>

<div class="container">
    <form action="" method="post">
        <label for="mail">Entrez votre E-mail</label>
        <input type="text" name="mail">
        <label for="pasword">Entrez votre mot de passe</label>
        <input type="password" name="pasword">
        <input type="submit" name="submit" value="Connexion">
    </form>
    <?php if (!empty($message)) :?>
    <div class="alert">
        <?= $message; ?>
    </div>
    <?php endif;?>
</div>


<?php require '../template/partiels/tpt-bot.php'; ?>
