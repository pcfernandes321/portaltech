let elemmentoH1 = document.querySelector("h1");

elemmentoH1.innerText = "Novo H1";

console.log(elemmentoH1);
console.log(elemmentoH1.innerText);

let elementMain = document.querySelector("main");
console.log(elementMain);
console.log(elementMain.innerText);
console.log(elementMain.innerHTML);

elementMain.innerHTML=`
<H2>SUB TÍTULO</H2>
<ul>
    <li>01</li>
    <li>02</li>
    <li>03</li>
</ul>
`

let nome = "Paulo"
let sobrenome = "fernandes"

let nomeCompleto = "Meu Nome é:" +nome +" "+sobrenome;
console.log(nomeCompleto);

let templateString = `Nome é: ${nome}, sobrenome: ${sobrenome}`
console.log(templateString);

let a = 5;
let b = 9;
let soma = `A soma de ${a} e ${b} é ${a+b}`;
console.log(soma);