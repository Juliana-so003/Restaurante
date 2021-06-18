function moedaParaFloat(valor) {
  let textoLimpo = valor.replace("R$", "").replace(",", ".");
  return parseFloat(textoLimpo);
}

function floatParaMoeda(valor) {
  let valorFormatado = (valor < 1 ? "0" : "") + Math.floor(valor*100);
  valorFormatado = "R$" + valorFormatado;
  return valorFormatado.substr(0, valorFormatado.length-2) + "," + valorFormatado.substr(-2);
}

function retornaTotal() {
  let valorTotal = document.querySelector('#total')
  return moedaParaFloat(valorTotal.innerHTML);
}

function escreveTotal(valor) {
  let valorTotal = document.querySelector('#total')
  valorTotal.innerHTML = floatParaMoeda(valor);
}

function calcularTotalPedidos() {
  let todosPedidos = document.querySelectorAll('.preco-pedido');
  let todasQuantidades = document.querySelectorAll('.quantidade');
  let totalPedidos = 0;

  for (let posicao = 0; posicao < todosPedidos.length; posicao++) {
    let umPreco = moedaParaFloat(todosPedidos[posicao].innerHTML);
    let umaQuantidade = moedaParaFloat(todasQuantidades[posicao].value);
    let subtotal = (umPreco * umaQuantidade);
    totalPedidos += subtotal;
  }
  return totalPedidos;
}

function quantidadeMudou() {
  escreveTotal(calcularTotalPedidos());
}

function aoCarregarPagina() {
  let camposQuantidade = document.querySelectorAll('.quantidade');
  for (let i = 0; i < camposQuantidade.length; i++) {
    camposQuantidade[i].onchange = (function() {
      quantidadeMudou();
    });
  }
}
window.onload = (function(){
  aoCarregarPagina();
  quantidadeMudou();
});



function mostrar() {
  let modal = document.querySelector('.modal')
  modal.style.display = 'block';
}

function fechar() {
  let modal = document.querySelector('.modal')
  modal.style.display = 'none';
}
