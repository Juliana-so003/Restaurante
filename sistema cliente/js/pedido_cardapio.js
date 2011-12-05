const elementos = document.querySelectorAll('[id^=pratos]');
elementos.addEventListener("click", function pegar(){
    alert(this.id);
    
  });
  for(var i = 0; i < elementos.length; i++) {
      elementos[i].onclick = pegar();
  }