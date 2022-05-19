<?php require '../template/partiels/tpt-top.php' ?>

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

    <div class="messages">
        <div class="message">
            <span class="date">12:78</span>
            <span class="author">Machin</span>
            <span class="content">Lorem ipsum dolor, sit amet consectetur adipisicing elit. Necessitatibus voluptate recusandae repellendus consequatur rem! Ex minima, ratione voluptatem laudantium nesciunt laborum maiores ab iste, explicabo dolorum dolore officia dolores eum?</span>
        </div>
    </div>
    <div class="userInput">
        <form action="">
            <p><?= ucfirst($user->getLastName()) ?></p>
            <input type="text" name="texte" id="texte" placeholder="Ecrivez votre message">
        </form>
    </div>


<?php require '../template/partiels/tpt-top.php' ?>