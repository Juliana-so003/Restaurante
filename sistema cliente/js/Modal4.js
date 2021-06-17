function openModal(mn){
  let modal = document.getElementById(mn);
  if(typeof modal == 'undefined' || modal === null ) return;
  modal.style.display = 'block';
document.body.style.overflow = 'hidden';
}
function closeModal(mn) {
  let modal = document.getElementById(mn);
  if (typeof modal == 'undefined' || modal === null) return;
  modal.style.display = 'none';
  document.body.style.overflow = 'auto';
}

function openModal2(mn){
  let modal = document.getElementById(mn);
  if(typeof modal == 'undefined' || modal === null ) return;
  modal.style.display = 'block';
document.body.style.overflow = 'hidden';
}
function closeModal2(mn) {
  let modal = document.getElementById(mn);
  if (typeof modal == 'undefined' || modal === null) return;
  
  modal.style.display = 'none';
  document.body.style.overflow = 'auto';
}



const voltar = document.querySelector(".voltar_index");



voltar.addEventListener("click", function() {
  
  window.location.href = 'meus_pedidos.html';
  input_submenu1.style.display = 'none';
  
});
const img = document.querySelector("#img_icone");

img.addEventListener("click", function() {
  
  document.getElementById("input_submenu1").style.display = "none";
  
});
