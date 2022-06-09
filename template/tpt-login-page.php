<?php
require '../template/partiels/tpt-top.php'; ?>

<div class="formConnexion">


    <h2>Connexion</h2>
    <form method="post">
        <div class="inputBox">
            <label for="mail">Mail</label>
            <input class="inputMail" type="text" name="mail" placeholder="Enter your mail">
        </div>
        <div class="inputBox">
            <label for="password">Password</label>
            <input class="inputPassword" type="password" name="password" placeholder="Enter your password">
        </div>
        <button type="submit" name="submit" class="logBtn" value="Connexion">Connexion</button>
    </form>
    <?php if (!empty($message)) : ?>
        <!-- On verifie si la variable message dans profil est vide ou non, s'il est rempli l'affiche -->
        <div class="alert">
            <?= $message; ?>
        </div>
    <?php endif; ?>
    <a href="register-page.php">Pas inscit ? Inscrivez-vous en cliquant ici!</a>
</div>


<?php require '../template/partiels/tpt-bot.php'; ?>