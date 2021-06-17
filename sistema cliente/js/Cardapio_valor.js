function moedaParaFloat(valor) {
  let textoLimpo = valor.replace("R$", "").replace(",", ".");
  return parseFloat(textoLimpo);
}

function floatParaMoeda(valor) {
  let valorFormatado = (valor < 1 ? "0" : "") + Math.floor(valor * 100);
  valorFormatado = "R$" + valorFormatado;
  return valorFormatado.substr(0, valorFormatado.length - 2) + "," + valorFormatado.substr(-2);
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
  let totalPedidos = 0;

  for (let posicao = 0; posicao < todosPedidos.length; posicao++) {
    let umPreco = moedaParaFloat(todosPedidos[posicao].innerHTML);
    let subtotal = umPreco;
    totalPedidos += subtotal;
  }
  return totalPedidos;
}

function mostrar() {
  escreveTotal(calcularTotalPedidos());
}

function aoCarregarPagina() {
  let prato = document.querySelectorAll('.pratos');
  for (let i = 0; i < prato.length; i++) {
    prato[i].onchange = (function() {
      mostrar();
    });
  }
}
window.onload = (function() {
  aoCarregarPagina();
  mostrar();
});