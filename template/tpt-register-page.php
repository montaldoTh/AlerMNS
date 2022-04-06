<?php

require '../template/partiels/tpt-top.php'; ?>

<div class="container">
    <form action="" method="POST">
        <label for="firstName">Votre Prénom</label>
        <input type="text" name="firstName">
        <label for="lastName">Votre Nom</label>
        <input type="text" name="lastName">
        <label for="mail">Votre E-mail</label>
        <input type="text" name="mail">
        <label for="pasword">Entrez un mot de passe</label>
        <input type="password" name="pasword">
        <label for="confirmPsw">Confirmez mot de passe</label>
        <input type="password" name="confirmPsw">
        <input type="submit" name="submit" value="Enregistrer">
    </form>
    <?php if(!empty($message)): ?>
    <div class="alert">
        <?= $message; var_dump($message) ?>
    </div>
    <?php endif; ?>
</div>

<?php require '../template/partiels/tpt-bot.php'; ?>