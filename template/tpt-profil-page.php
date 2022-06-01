<?php require '../template/partiels/tpt-top.php' ?>
<h1>Alert</h1>

    <div class="message_container">
            <div class="picture">
                
            </div> 
        <div class="message">
            <div class="card">
                <div class="pseudo">                                          
                    <label><?= ucfirst($user->getLastName()) . " " . ucfirst($user->getFirstName()) ?></label>         
                </div>            
                    <div class="chattingBox">            
                </div> 
                <span class="time">date</span>
            </div>

    
        

        </div>
    </div>
    
                
           

<div>

        <div class="userInput">
            <form class="formUser" action="post">
                <label><?= ucfirst($user->getLastName()) . " " . ucfirst($user->getFirstName()) ?></label>
                <textarea  name="texte" id="texte" cols="30" rows="2" placeholder="Ecrivez votre message"></textarea>
            </form>
        </div>
    </div>
</div>




<?php require '../template/partiels/tpt-bot.php' ?>








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