let div = document.querySelector('#senha1');
let input = document.querySelector('#senha');
let icon = document.querySelector('.olhos');

icon.addEventListener('click', function() {
  div.classList.toggle('visible');
  if (div.classList.contains('visible')) {
    icon.src = '../icones/olhos-abertos.png';
    input.type = 'text';
  } else {
    icon.src = '../icones/olhos-fechados.png';
    input.type = 'password';
  }
});