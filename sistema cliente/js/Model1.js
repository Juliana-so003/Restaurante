
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

const voltar = document.querySelector(".voltar_login");

voltar.addEventListener("click", function() {
  window.location.href = 'Aux.html';
});