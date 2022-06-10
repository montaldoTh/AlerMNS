var idUser = document.getElementById('idLogged');
var str = window.location.href
var url = new URL(str);
var contact = url.searchParams.get("contact");

function getMessage(){
    if(contact){
        const reqAjax = new XMLHttpRequest();
        reqAjax.open("GET", `api.php?logged=${idUser.value}&contact=${contact}`);
        reqAjax.onload = function(){
            const resultat = JSON.parse(reqAjax.responseText);
            const html = resultat.reverse().map(function(message){
                return `
                <div class="messages">
                    <div class="card">
                        <div class="userBox">
                            <span>${message.senderLstName} ${message.senderFstName}</span>  
                        </div>
                        <div class="messageBox">
                            <p>${message.content}</p>
                        </div>
                        <span class="sendingBox">${message.sending_date.substring(11, 16)}</span>
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
}

function getUserList(){
    
    const reqAjax = new XMLHttpRequest();
    reqAjax.open("GET", `api.php?logged=${idUser.value}`);

    reqAjax.onload = function(){
        const result = JSON.parse(reqAjax.responseText);
        // const html = result.map(function(user){
        //     return `
        //     <div class="userBox">
        //     <a href="/profil.php?logged=${idUser.value}&contact=${user.id_sender}">${user.senderLstName[0].toUpperCase()} ${user.senderFstName}</a>
        //         <input type="hidden" name="id_sender" value="${user.id_sender}">
        //     </div>
        //     `
        // }).join('');
        let html = ''
        const usersId = []
        for (let i = 0; i < result.length; i++) {
            const user = result[i];
            if(!usersId.includes(user.id_sender)){
               html += `
            <div class="userBox">
            <a href="/profil.php?logged=${idUser.value}&contact=${user.id_sender}">${user.senderLstName[0].toUpperCase()} ${user.senderFstName}</a>
                <input type="hidden" name="id_sender" value="${user.id_sender}">
            </div>
            `
            usersId.push(user.id_sender)
            }
            console.log(usersId);
            console.log(html);
        }

        const message = document.querySelector('.users');

        message.innerHTML = html;
    }
    

    reqAjax.send();
}

async function postMessage(event){
    event.preventDefault;
    const author = document.querySelector('#idLogged');
    const content = document.querySelector('#content');
    const request = await fetch(`api.php?task=write`, {
        method: 'POST',
        headers: {
            'content-type' : 'application/json'
        },   
        body: JSON.stringify({
            'author': parseInt(author.value),
            'content': content.value,
            'contact': parseInt(contact)
        })
    })
    const response = await request.json()
    .then((response)=>{
        content.value = "";
        content.focus();
        getMessage();
        getUserList();
    }) 
}

getUserList();
getMessage();

const interval = window.setInterval(getMessage, 3000);
