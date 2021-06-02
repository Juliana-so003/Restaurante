function mostrarSenha() {
  var tipo = document.querySelector("input#senha")

  if (tipo.type == "password") {
    tipo.type = "text"
  } else {
    tipo.type = "password"
  }
}