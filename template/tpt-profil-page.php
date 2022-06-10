<?php require '../template/partiels/tpt-chat-top.php' ?>

<div class="chattingBox">
    <div class="messagesBox">
        <?php if(!isset($_GET['contact'])): ?>
        <input type="hidden" name="logged" id="idLogged" value="<?= $loggedUser->getId() ?>">
        <h1>Qui voulez-vous contacter ?</h1>
        <div class="searchingPage">
            <div class="cardCol">
                <div class="cardRow">
            <?php foreach($users as $user): ?>
                <div class="card">
                    <a href="/profil.php?logged=<?= $loggedUser->getId() ?>&contact=<?= $user->getId()?>"><span><?= ucfirst($user->getLastName()) . " " . ucfirst($user->getFirstName()) ?></span></a>
                    <span> Inscrit depuis le <?= $user->getRegisterDate()?></span>
                </div>

                
            <?php endforeach; ?>
                </div>
            </div>
        </div>
        <?php else: ?>
        <h1>Alert</h1>
        <div class="messages">
            <div class="card">
                <div class="userBox">
                    <span> Nom prénom </span>  
                </div>
                <div class="messageBox">
                    <p> Contenu </p>
                </div>
                <span class="sendingBox"> Date d'envoie</span>
            </div>
        </div>
    </div>
    <div class="userInput">
        <form class="formUser" onsubmit="return false;">
            <div class="userInfo">
                <span><?= ucfirst($loggedUser->getLastName()) . " " . ucfirst($loggedUser->getFirstName()) ?></span>
                <span>online</span>
                <input type="hidden" name="logged" id="idLogged" value="<?= $loggedUser->getId() ?>">
            </div>
            <textarea class="msgSend" name="content" id="content" cols="30" rows="2" placeholder="Ecrivez votre message"></textarea>
            <button class="btnSend" type="submit">Envoyer</button>
        </form>       
    </div>
    <?php endif; ?>
</div>




<?php require '../template/partiels/tpt-chat-bot.php' ?>