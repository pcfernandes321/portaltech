/*
1. Insira um comentário para indicar uma primeira interação do usuário e capture o input do 
username do DOM

2. Adicione a classe "error" ao input do usuário e mostre o resultado no navegador


let loginUsuario = document.getElementById('login-usuario');
let loginSenha = document.getElementById('login-senha'); 

//captura o elemento
let h2element = document.querySelector('h2');

//alterar a cor e tam. fonte
h2element.style.color = 'blue';
h2element.style.fontSize = '24px';

loginUsuario.classList.visible('allow');

const botElem = document.querySelector('button');

botElem.style.borderRadius;
botElem.style.backgroundColor= 'blue';

*/

h2Site = document.querySelector("section#login h2");
h2Site.style.color = "red";
h2Site.style.fontsize = "20px";
parags = document.querySelectorAll("p.error-text");
p1 = parags[0];
p2 = parags[1];
p1.classList.add("visible");
p2.classList.add("visible");

document.addEventListener('DOMContentLoaded', function () {

    const userInputElement = document.querySelector('#login-usuario');

    const errorTextElement = document.querySelector('.error-text');

    const loginButton = document.querySelector('button');

 
    loginButton.addEventListener('click', function () {

      const userInput = userInputElement.value.trim();

 

      if (userInput === '') {

        userInputElement.classList.add('error');

        errorTextElement.classList.add('visible');

      } else {

        userInputElement.classList.remove('error');

        errorTextElement.classList.remove('visible');

        alert('Login bem-sucedido para: ' + userInput);

      

      }

    });

  });

 