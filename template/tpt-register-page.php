<?php

require '../template/partiels/tpt-top.php'; ?>

<div class="formInscription">

    <h2>Inscription</h2>
    <form class="form" method="POST">
        <div class="inputBox">
            <label for="firstName">Prénom</label>
            <input class="firstName" type="text" name="firstName" placeholder="Veuillez saisir votre Prénom" maxlength="25" id="firstName" required>
            <img src="ressources/check.svg" alt="icone de validation" class="icone-verif">
            <span class="message-alerte">25 caractères maximum</span>
        </div>
        <div class="inputBox">
            <label for="lastName">Nom</label>
            <input class="lastName" type="text" name="lastName" placeholder="votre Nom" maxlength="50" id="lastName" required>
            <img src="ressources/check.svg" alt="icone de validation" class="icone-verif">
            <span class="message-alerte">50 caractères maximum</span>
        </div>
        <div class="inputBox">
            <label for="mail">E-Mail</label>
            <input class="inputMail" type="text" name="mail" placeholder="votre Mail" id="email" required>
            <img src="ressources/check.svg" alt="icone de validation" class="icone-verif">
            <span class="message-alerte">Rentrez un email valide.</span>
        </div>
        <div class="inputBox">
            <label for="password">Mot de passe</label>
            <input class="inputPassword" type="password" name="password" placeholder="votre Mot de passe" id="mdp" required>
            <img src="ressources/check.svg" alt="icone de validation" class="icone-verif">
            <span class="message-alerte">Un symbole, une lettre minuscule et Majuscule, un chiffre.</span>
            <div class="ligne">
                <div class="l1"><span>faible</span></div>
                <div class="l2"><span>moyen</span></div>
                <div class="l3"><span>fort</span></div>
            </div>
        </div>
        <div class="inputBox">
            <label for="confirmPsw">Confirmation Mot de passe</label>
            <input class="inputPassword" type="password" name="confirmPsw" placeholder="Confirmez" id="mdpconf" required>
            <img src="ressources/check.svg" alt="icone de validation" class="icone-verif">
        </div>

        <button type="submit" name="submit" class="regBtn" id="btn" value="Inscription">Création du compte</button>
    </form>
    <?php if (!empty($message)) : ?>
        <div class="alert">
            <?= $message; ?>
        </div>
    <?php endif; ?>

    <a href="index.php">Déjà inscit ? Connectez-vous en cliquant ici!</a>

</div>

<?php require '../template/partiels/tpt-bot.php'; ?>