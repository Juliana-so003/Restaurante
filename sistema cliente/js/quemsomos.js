function mostrar(id) {
  if (document.getElementById(id).style.display == 'block') {
    document.getElementById(id).style.display = 'none'
  } else {
    document.getElementById(id).style.display = 'block'
  } //se o elemento div estiver visivel,torne-a oculta,senão torne-a visivel
}
 