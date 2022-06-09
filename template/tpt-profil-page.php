<?php require '../template/partiels/tpt-chat-top.php' ?>

<div class="chattingBox">
    <div class="messagesBox">
        <h1>Alert</h1>
            <?php if(!isset($_GET['contact'])): ?>

            <?php else: ?>
            <div class="messages">
                <div class="userBox">
                    <span> Nom prénom </span>
                </div>
                <div class="messageBox">
                    <p> Contenu </p>
                    <span> Date d'envoie</span>
                </div>
            </div>
            <?php endif; ?>
    </div>
    <div class="userInput">
        <!-- <form class="formUser" action="api.php?task=write" method="POST"> -->
        <form class="formUser" onsubmit="return false;">
            <div class="userInfo">
                <span><?= ucfirst($loggedUser->getLastName()) . " " . ucfirst($loggedUser->getFirstName()) ?></span>
                <span>online</span>
                <input type="hidden" name="logged" id="idLogged" value="<?= $loggedUser->getId() ?>">
            </div>
            <textarea name="content" id="content" cols="30" rows="2" placeholder="Ecrivez votre message"></textarea>
            <button type="submit">Envoyer</button>
        </form>
    </div>
</div>




<?php require '../template/partiels/tpt-chat-bot.php' ?>