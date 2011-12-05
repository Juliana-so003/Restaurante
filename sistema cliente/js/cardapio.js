
const entrada = document.querySelector("#entrada1");
const acompanhamento = document.querySelector("#acompanhamento1");
const principal = document.querySelector("#principal1");
const bebidas = document.querySelector("#bebida1");
const sobremesa = document.querySelector("#sobremesa1");
const central = document.querySelector("#entrada");



entrada.addEventListener("click", function(){
  central.style.marginLeft = "7%";
  
});
acompanhamento.addEventListener("click", function(){
  central.style.marginLeft = "-88%";
  
});
principal.addEventListener("click", function(){
  central.style.marginLeft = "-185%";
  
});
bebidas.addEventListener("click", function(){
  central.style.marginLeft = "-281%";
  
});
sobremesa.addEventListener("click", function(){
  central.style.marginLeft = "-381%";
  
});
