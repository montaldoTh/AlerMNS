<?php require '../template/partiels/tpt-chat-top.php' ?>


<div class="message_container ">
    <div class="picture">
    </div>
    <div class="message">
        <div class="card">
            <h3 class="msg">Messages Reçus</h3>
            <div class="pseudo">
                <label><?= ucfirst($user->getLastName()) . " " . ucfirst($user->getFirstName()) ?></label>
            </div>
            <div class="chattingBox">
                <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.</p>
            </div>
            <span class="time">22/06/2021</span>
        </div>
    </div>
</div>
<div class="message_container message_container1">
    <div class="picture">
    </div>
    <div class="message">
        <div class="card">
            <h3 class="msg">Messages Envoyées</h3>
            <div class="pseudo pseudo2">
                <label><?= ucfirst($user->getLastName()) . " " . ucfirst($user->getFirstName()) ?></label>
            </div>
            <div class="chattingBox ">
                <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.</p>
            </div>
            <span class="time time2">22/06/2021</span>
        </div>
    </div>
</div>



<div>

    <form class="formUser" action="post">
        <label><?= ucfirst($user->getLastName()) . " " . ucfirst($user->getFirstName()) ?></label>
        <textarea class='msgSend' name="texte" id="texte" cols="30" rows="2" placeholder="Ecrivez votre message"></textarea>
        <button>Send!</button>
    </form>
</div>




<?php require '../template/partiels/tpt-chat-bot.php' ?>








<!--<div class="groupeNavbar">
    <nav>
        <ul>    
            Pour chaque groupe affiché un a/li 
        </ul>
    </nav>
</div>-->

<!--<div class="messageNavbar">
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