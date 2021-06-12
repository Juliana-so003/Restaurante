
const entrada = document.querySelector("#entrada1");
const acompanhamento = document.querySelector("#acompanhamento1");
const principal = document.querySelector("#principal1");
const bebidas = document.querySelector("#bebida1");
const sobremesa = document.querySelector("#sobremesa1");
const central = document.querySelector("#entrada");



entrada.addEventListener("click", function(){
  central.style.marginLeft = "1%";
  
});
acompanhamento.addEventListener("click", function(){
  central.style.marginLeft = "-98.2%";
  
});
principal.addEventListener("click", function(){
  central.style.marginLeft = "-196.6%";
  
});
bebidas.addEventListener("click", function(){
  central.style.marginLeft = "-295%";
  
});
sobremesa.addEventListener("click", function(){
  central.style.marginLeft = "-394%";
  
});


function menuOnClick() {
  document.getElementById("menu-bar").classList.toggle("change");
  document.getElementById("nav").classList.toggle("change");
  document.getElementById("menu-bg").classList.toggle("change-bg");
}