function date_time(id) {
    date = new Date;
    year = date.getFullYear();
    month = date.getMonth();
    months = new Array('Janvier', 'Fevrier', 'Mars', 'Avril', 'Mai', 'Juin', 'Juillet', 'Août', 'Septembre', 'Octobre', 'Novembre', 'Décembre');
    d = date.getDate();
    day = date.getDay();
    days = new Array('Dimanche', 'Lundi', 'Mardi', 'Mercredi', 'Jeudi', 'Vendredi', 'Samedi');
    h = date.getHours();
    if (h < 10) {
        h = "0" + h;
    }
    m = date.getMinutes();
    if (m < 10) {
        m = "0" + m;
    }
    s = date.getSeconds();
    if (s < 10) {
        s = "0" + s;
    }
    resultat = days[day] + ' ' + d + ' ' + months[month] + ' ' + year + ' il est ' + h + ':' + m + ':' + s;
    document.getElementById(id).innerHTML = resultat;
    setTimeout('date_time("' + id + '");', '1000');
    return true;
}


let allImg = document.querySelectorAll('img');
let allSpan = document.querySelectorAll('span');
let allLigne = document.querySelectorAll('.ligne div')
let boutton = document.querySelector('#btn')
// let input = document.querySelector(".input");
boutton.style.display = "none";

// boutton.addEventListener("input", afficher());
// function afficher() {
//     if (document.querySelector("input").value.length < 3) {
//         boutton.style.display = "none";
//     } else {
//         boutton.style.display = "block";
//     }
// }
let verif = [];
function afficher() {
    if (verif.length == 5) {

        boutton.style.display = "block"
    }
    if (verif.length < 5) {
        boutton.style.display = "none"

    }
}

// la saisie du prénom de l'user
let inpUtilisateurP = document.querySelector('#firstName');
// ecouter un evenement sur le compte utilisateur sur
inpUtilisateurP.addEventListener('input', (e) => {
    //controle taille de saisie 
    if (e.target.value.length >= 3) {
        //ok 
        //comment aller chercher l'image et modifier
        //sa propriete css display
        allImg[0].style.display = "inline"
        //METTRE la bonne image 
        allImg[0].src = "ressources/check.svg"
        //masquer le span 
        allSpan[0].style.display = "none"
        verif[0] = 1


    }
    else {
        allImg[0].style.display = "inline"
        allImg[0].src = "ressources/error.svg"
        allSpan[0].style.display = "inline"


    }
    afficher()

})
// la saisie du nom de l'user
let inpUtilisateurN = document.querySelector('#lastName');
// ecouter un evenement sur le compte utilisateur sur
inpUtilisateurN.addEventListener('input', (e) => {
    //controle taille de saisie 
    if (e.target.value.length >= 2) {
        //ok 
        //comment aller chercher l'image et modifier
        //sa propriete css display
        allImg[1].style.display = "inline"
        //METTRE la bonne image 
        allImg[1].src = "ressources/check.svg"
        //masquer le span 
        allSpan[1].style.display = "none"
        verif[1] = 1
        console.log(verif);

    }
    else {
        allImg[1].style.display = "inline"
        allImg[1].src = "ressources/error.svg"
        allSpan[1].style.display = "inline"


    }
    afficher()

})
// controler le champ mail 

let inpMail = document.querySelector("#email");
inpMail.addEventListener('input', (e) => {
    //controler par regex mail
    const regexMail = /^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
    if (e.target.value.search(regexMail) === 0) {
        // le controle est ok 
        allImg[2].style.display = "inline"
        //METTRE la bonne image 
        allImg[2].src = "ressources/check.svg"
        //masquer le span 
        allSpan[2].style.display = "none"
        verif[2] = 1

    }
    else {
        allImg[2].style.display = "inline"
        allImg[2].src = "ressources/error.svg"
        allSpan[2].style.display = "inline"

    }
    afficher()
})

// le mot de passe, test de complexite

let inpMdp = document.querySelector("#mdp");
let coeff = 0

inpMdp.addEventListener('input', (e) => {
    let coeff = 0
    // definir une expression reguliere pour chaque cas
    const alphabet = /[a-z]/
    const ALPHABET = /[A-Z]/
    const chiffre = /[0-9]/
    const carspe = /[^a-zA-Z0-9]/
    // tester chaque cas 
    valeurInp = e.target.value
    if (valeurInp.search(alphabet) !== -1) {
        coeff++
    }
    if (valeurInp.search(ALPHABET) !== -1) {
        coeff++
    }
    if (valeurInp.search(chiffre) !== -1) {
        coeff++
    }
    if (valeurInp.search(carspe) !== -1) {
        coeff++
    }

    // test des mot de passe de
    // maquer  la barre de progression
    allSpan[3].style.display = "inline"
    allLigne[0].style.display = "none"
    allLigne[1].style.display = "none"
    allLigne[2].style.display = "none"
    allImg[3].style.display = "none"
    switch (coeff) {
        case 1:
            // afficher le premier
            allLigne[0].style.display = "inline"
            allImg[3].src = "ressources/error.svg"
            allImg[3].style.display = "inline"
            break
        case 2:
            allLigne[0].style.display = "inline"
            allLigne[1].style.display = "inline"
            allImg[3].src = "ressources/error.svg"
            allImg[3].style.display = "inline"
            break
        case 3:
            allLigne[0].style.display = "inline"
            allLigne[1].style.display = "inline"
            allImg[3].src = "ressources/error.svg"
            allImg[3].style.display = "inline"
            break
        case 4:
            allSpan[3].style.display = "none"
            allLigne[0].style.display = "inline"
            allLigne[1].style.display = "inline"
            allLigne[2].style.display = "inline"
            allImg[3].src = "ressources/check.svg"
            allImg[3].style.display = "inline"
            verif[3] = 1

            break
        default:
            allSpan[3].style.display = "none"
            allSpan[4].style.display = "none"
            allSpan[5].style.display = "none"
            allSpan[6].style.display = "none"
            allImg[3].style.display = "none"
    }
    afficher()
})
//confirmation
let inpConfirme = document.querySelector('#mdpconf')
// On ecoute l'événement de la confirmation du mot de passe
inpConfirme.addEventListener('input', (e) => {
    if (e.target.value === valeurInp) {
        //mot de  passe sont identique
        allImg[4].style.display = "inline"
        allImg[4].src = "ressources/check.svg"
        verif[4] = 1
        console.log(verif);
    }
    else if
        (e.target.value < 1) {
        allImg[4].style.display = "none"

    }


    else {
        allImg[4].style.display = "inline"
        allImg[4].src = "ressources/error.svg"

    }
    afficher()

})