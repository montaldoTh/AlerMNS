<?php require '../template/partiels/tpt-chat-top.php' ?>

<div class="chattingBox">
    <div class="messagesBox">
        <h5>Alert</h5>
        <?php foreach($messages as $message) : ?>
            <div class="messages">
                <div class="userBox">
                    <span><?= $message['lastName'] . ' ' . $message['firstName'] ?></span>
                </div>
                <div class="messageBox">
                    <p><?= $message['content'] ?></p>
                    <span><?= substr($message['sending_date'], 11) ?></span>
                </div>
            </div>
            <?php endforeach; ?>
    </div>
    <div class="userInput">
        <form class="formUser" action="api.php?task=write" method="POST">
            <div class="userInfo">
                <label><?= ucfirst($loggedUser->getLastName()) . " " . ucfirst($loggedUser->getFirstName()) ?></label>
                <span>online</span>
                <input type="hidden" name="author" id="id_users" value="<?= $loggedUser->getId() ?>">
            </div>
            <textarea name="content" id="content" cols="30" rows="2" placeholder="Ecrivez votre message"></textarea>
            <button type="submit">Envoyer</button>
        </form>
    </div>
</div>




<?php require '../template/partiels/tpt-chat-bot.php' ?>