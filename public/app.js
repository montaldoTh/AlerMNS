function getMessage(){
    const reqAjax = new XMLHttpRequest();
    reqAjax.open("GET", "api.php");

    reqAjax.onload = function() {
        const resultat = JSON.parse(reqAjax.responseText);
        console.log(resultat);
        const html = resultat.reverse().map(function(message){
            `
            <div class="message">
                <span class="date">${message.sending_date.substring(11, 16)}</span>
                <span class="author">${message.lastName} ${message.firstName}</span> :
                <span class="content">${message.content}</span>
            </div>` 
        }).join('');

        const message = document.querySelector('.messages');

        message.innerHTML = html;
        message.scrollTop = message.scrollHeight;
    }

    reqAjax.send();
    
}

function postMessage(){
    const author = document.querySelector('#id_users');
    const content = document.querySelector('#content');
    
    const data = new FormData();
    data.append('author', author.value);
    data.append('content', content.value);

    const reqAjax = new XMLHttpRequest();
    reqAjax.open("POST", "api.php?task=write");
    reqAjax.send(data);
}

// reqAjax.onload = function(){
//     content.value = '';
//     content.focus();
//     getMessage();
// };

document.querySelector('.formUser').addEventListener('submit', postMessage());

// const interval = window.setInterval(getMessage, 3000);

getMessage();