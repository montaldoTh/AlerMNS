var idUser = document.getElementById('idLogged');

var str = window.location.href
var url = new URL(str);
var contact = url.searchParams.get("contact");

function getMessage(){
    const reqAjax = new XMLHttpRequest();
    if(contact){
        reqAjax.open("GET", `api.php?logged=${idUser.value}&contact=${contact}`);
    }else{
        reqAjax.open("GET", `api.php?logged=${idUser.value}`);
    }

    reqAjax.onload = function(){
        const resultat = JSON.parse(reqAjax.responseText);
        const html = resultat.reverse().map(function(message){
            return `
            <div class="messages">
                <div class="userBox">
                    <span>${message.senderLstName} ${message.senderFstName}</span>
                </div>
                <div class="messageBox">
                    <p>${message.content}</p>
                    <span>${message.sending_date.substring(11, 16)}</span>
                </div>
            </div>
            <br/>
            ` 
        }).join('');

        const message = document.querySelector('.messagesBox');

        message.innerHTML = html;
        message.scrollTop = message.scrollHeight;
    }

    reqAjax.send();
    
}

function getUserList(){
    
    const reqAjax = new XMLHttpRequest();
    reqAjax.open("GET", `api.php?logged=${idUser.value}`);

    reqAjax.onload = function(){
        const result = JSON.parse(reqAjax.responseText);
        const html = result.map(function(user){
            return `
            <div class="userBox">
            <a href="/profil.php?logged=${idUser.value}&contact=${user.id_sender}">${user.senderLstName[0].toUpperCase()} ${user.senderFstName}</a>
                <input type="hidden" name="id_sender" value="${user.id_sender}">
            </div>
            `
        }).join('');

        const message = document.querySelector('.users');

        message.innerHTML = html;
    }
    

    reqAjax.send();
}

function postMessage(event){
    event.preventDefault();
    const author = document.getElementById('idLogged');
    const content = document.getElementById('content');
    
    const data = new FormData();
    data.append('author', author.value);
    data.append('content', content.value);
    if(content.value.length > 0){
        const reqAjax = new XMLHttpRequest();
        reqAjax.open("POST", "api.php?task=write");
    }
    
    // reqAjax.onload = function(){
    //     content.value = '';
    //     content.focus();
    //     getMessage();
    // };
    reqAjax.send(data);
}

    

document.querySelector('.formUser').addEventListener('submit', postMessage);

// const interval = window.setInterval(getMessage, 3000);
getUserList();


getMessage();



    // const request = await fetch(`api.php?id=${idUser.value}`, {
    //     method: 'GET',
    //     headers: {
    //         'content-type' : 'application/json'
    //     }        
    // })

    // const reponse = await request.json();
    // console.log(reponse);
    // const status = request.status;