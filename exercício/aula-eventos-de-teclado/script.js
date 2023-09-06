const linkPerfil = document.getElementById("link-perfil");
const navPerfil = document.getElementById("nav-perfil");

linkPerfil.addEventListener("mouseover", ()=> {
  navPerfil.style.display = "block"
})

document.addEventListener("keyup",(e) =>{
  console.log(e.key);
  console.log(e.code);

  if(e.code == "Digit1"){
    console.log("Abre o menu de perfil")
    navPerfil.style.display = "block";
  } else if (e.key == "1"){
    console.log("fechar o menu do perfil 1")
    linkPerfil.style.display = "block";
  }  else if (e.code == "Escape"){
    console.log("fechar o menu side")
    linkPerfil.style.display = "none";
  } 
  }
)

