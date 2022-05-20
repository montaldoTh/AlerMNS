<?php require '../template/partiels/tpt-chat-top.php' ?>

<div class="chattingBox">
    <div class="messagesBox">
        <h5>Alert</h5>
        <?php foreach($messages as $message) : ?>
            <div class="messages">
                <div class="userBox">
                    <span><?= $message['sending_date'] . ' | ' ?></span>
                    <span><?= $message['lastName'] . ' ' . $message['firstName'] ?></span>
                </div>
                <div class="messageBox">
                    <p><?= $message['content'] ?></p>
                </div>
            </div>
            <?php endforeach; ?>
    </div>
    <div class="userInput">
        <form class="formUser" action="post">
            <div class="userInfo">
                <label><?= ucfirst($loggedUser->getLastName()) . " " . ucfirst($loggedUser->getFirstName()) ?></label>
                <span>online</span>
            </div>
            <textarea name="texte" id="texte" cols="30" rows="2" placeholder="Ecrivez votre message"></textarea>
        </form>
    </div>
</div>




<?php require '../template/partiels/tpt-chat-bot.php' ?>