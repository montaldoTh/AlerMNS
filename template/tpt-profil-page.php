<?php require '../template/partiels/tpt-chat-top.php' ?>

<div class="chattingBox">
    <div class="messagesBox">
        <h5>Alert</h5>
            <div class="messages">
                <div class="userBox">
                    <span> Nom prénom </span>
                </div>
                <div class="messageBox">
                    <p> Contenu </p>
                    <span> Date d'envoie</span>
                </div>
            </div>
    </div>
    <div class="userInput">
        <form class="formUser" action="api.php?task=write" method="POST">
            <div class="userInfo">
                <label><?= ucfirst($loggedUser->getLastName()) . " " . ucfirst($loggedUser->getFirstName()) ?></label>
                <span>online</span>
                <input type="hidden" name="author" id="idLogged" value="<?= $loggedUser->getId() ?>">
            </div>
            <textarea name="content" id="content" cols="30" rows="2" placeholder="Ecrivez votre message"></textarea>
            <button type="submit">Envoyer</button>
        </form>
    </div>
</div>




<?php require '../template/partiels/tpt-chat-bot.php' ?>