function mostra(id) {
  if (document.getElementById(id).style.display == 'block') {
    document.getElementById(id).style.display = 'none'
    //console.log('clicou')
  } else {
    document.getElementById(id).style.display = 'block'
  } //se o elemento div estiver visivel,torne-a oculta,senão torne-a visivel
}