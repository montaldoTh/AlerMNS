function getMessage(){
    const reqAjax = new XMLHttpRequest();
    reqAjax.open("GET", "api.php");

    reqAjax.onload = function() {
        const resultat = JSON.parse(reqAjax.responseText);
        const html = resultat.reverse().map(function(message){
            `
            <div class="messages">
                <div class="userBox">
                    <span>${message.lastName} ${message.firstName}</span>
                </div>
                <div class="messageBox">
                    <p>${message.content}</p>
                    <span>${message.sending_date.substring(11, 16)}</span>
                </div>
            </div>
            ` 
        }).join('');

        const message = document.querySelector('.messages');

        message.innerHTML = html;
        message.scrollTop = message.scrollHeight;
    }

    reqAjax.send();
    
}

function postMessage(event){
    event.preventDefault();
    const author = document.querySelector('#id_users');
    const content = document.querySelector('#content');
    
    const data = new FormData();
    data.append('author', author.value);
    data.append('content', content.value);
    if(content.value.length > 0){
        const reqAjax = new XMLHttpRequest();
        reqAjax.open("POST", "api.php?task=write");
    }
    
    reqAjax.onload = function(){
        content.value = '';
        content.focus();
        getMessage();
    };
    reqAjax.send(data);
}

    

document.querySelector('.formUser').addEventListener('submit', postMessage);

const interval = window.setInterval(getMessage, 3000);

getMessage();