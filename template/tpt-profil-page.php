<?php require '../template/partiels/tpt-top.php' ?>
<h1>Alert</h1>

<div class="chattingBox">
    <div class="messagesBox">
        
        <?php foreach($messages as $message) : ?>
            <div class="messages">
                <div class="userBox">
                    <span><?= $message['date_d_envoi'] . ' | ' ?></span>
                    <span><?= $message['lastName'] . ' ' . $message['firstName'] ?></span>
                </div>
                <div class="messageBox">
                    <p><?= $message['texte'] ?></p>
                </div>
            </div>
            <?php endforeach; ?>
    </div>
    <div class="userInput">
        <form class="formUser" action="post">
            <label><?= ucfirst($user->getLastName()) . " " . ucfirst($user->getFirstName()) ?></label>
            <textarea  name="texte" id="texte" cols="30" rows="2" placeholder="Ecrivez votre message"></textarea>
        </form>
    </div>
</div>




<?php require '../template/partiels/tpt-bot.php' ?>








<!-- <div class="groupeNavbar">
    <nav>
        <ul>    
            Pour chaque groupe affiché un a/li 
        </ul>
    </nav>
</div> -->

<!-- <div class="messageNavbar">
    <nav>
        <form action="">
            <input type="text" name="userResearch" placeholder="With who do you want to talk ? ">
            <button>Searching</button>
        </form>
        <div class="messageList">
            <ul>

            </ul>
        </div>
    </nav>
</div> -->