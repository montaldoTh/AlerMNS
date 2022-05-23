<?php

require '../template/partiels/tpt-top.php'; ?>

<div class="formInscription">
    <h1>Alert</h1>
    <span id="date_time"></span>
    <h2>Inscription</h2>
        <form  method="POST">
            <div class="inputBox">
                <label for="firstName">Prénom</label>
                <input class="firstName" type="text" name="firstName" placeholder="Veuillez saissir votre Prénom">
            </div>
            <div class="inputBox">
                <label for="lastName">Nom</label>
                <input class="lastName" type="text" name="lastName" placeholder="votre Nom">
            </div>
            <div class="inputBox">
                <label  for="mail">E-Mail</label>
                <input class="inputMail"type="text" name="mail" placeholder="votre Mail">
            </div>
            <div class="inputBox">
                <label for="password">Mot de passe</label>
                <input class="inputPassword" type="password" name="password" placeholder="votre Mot de passe">
            </div>
            <div class="inputBox">
                <label for="confirmPsw">Confirmer Mot de passe</label>
                <input class="inputPassword"type="password" name="confirmPsw" placeholder="Réécrivez votre Mot de passe">
            </div>
            
            <input type="submit" name="submit" class="regBtn" value="Inscription">
        </form>
        <?php if(!empty($message)): ?>
        <div class="alert">
            <?= $message; ?>
        </div>
        <?php endif; ?>

        <a href="index.php">Déjà inscit ? Connectez-vous en cliquant ici!</a>
        
</div>

<?php require '../template/partiels/tpt-bot.php'; ?>