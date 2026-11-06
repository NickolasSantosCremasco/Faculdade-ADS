// Localiza os botões pelo id: o # indica um identificador do HTML.
const botaoTeclado = document.querySelector("#adicionar-teclado");
const botaoMouse = document.querySelector("#adicionar-mouse");
const botaoHeadset = document.querySelector("#adicionar-headset");
// ALTERAÇÃO: referência ao botão do quarto produto (monitor).
const botaoMonitor = document.querySelector("#adicionar-monitor");
const botaoLimpar = document.querySelector("#limpar");

// Guarda referências aos elementos cujo texto será atualizado.
const quantidadeNaTela = document.querySelector("#quantidade");
const totalNaTela = document.querySelector("#total");
const mensagemNaTela = document.querySelector("#mensagem");

// let permite reatribuir os valores conforme os cliques acontecem.
let quantidade = 0; // Começamos sem itens na seleção.
let totalCentavos = 0; // Guardamos dinheiro como centavos inteiros: 25000 = R$ 250,00.

// Intl é uma API do JavaScript para apresentação conforme idioma e região.
const moeda = new Intl.NumberFormat("pt-BR", {
  style: "currency", // Solicita formatação monetária.
  currency: "BRL" // Usa o real brasileiro.
}); // Fecha as opções, a chamada do construtor e a instrução.

// Uma função reúne instruções que poderão ser executadas várias vezes.
function atualizarResumo() {
  quantidadeNaTela.textContent = quantidade; // Mostra a quantidade atual no HTML.
  totalNaTela.textContent = moeda.format(totalCentavos / 100); // Converte centavos em reais só para exibir.
} // Encerra o corpo da função.

// Os parâmetros recebem o nome e o preço do produto escolhido.
function adicionarProduto(nome, precoCentavos) {
  quantidade = quantidade + 1; // Soma uma unidade ao estado atual.
  totalCentavos = totalCentavos + precoCentavos; // Acumula o preço em centavos.
  atualizarResumo(); // Atualiza os dois textos na página.
  mensagemNaTela.textContent = nome + " adicionado à seleção!"; // Confirma a ação usando texto.
}

// O navegador executa esta função anônima somente quando ocorrer o clique.
botaoTeclado.addEventListener("click", function () {
  adicionarProduto("Teclado mecânico", 25000); // Adiciona R$ 250,00.
}); // Fecha a função e a chamada de addEventListener.

// Reutiliza a mesma função de cálculo para outro produto.
botaoMouse.addEventListener("click", function () {
  adicionarProduto("Mouse sem fio", 9000); // Adiciona R$ 90,00.
});

// Registra o comportamento do terceiro botão.
botaoHeadset.addEventListener("click", function () {
  adicionarProduto("Headset", 18000); // Adiciona R$ 180,00.
});

// ALTERAÇÃO: quarto produto, reutilizando adicionarProduto sem duplicar lógica.
botaoMonitor.addEventListener("click", function () {
  adicionarProduto("Monitor 24\"", 45000); // Adiciona R$ 450,00.
});

// O botão de limpar também recebe seu próprio evento de clique.
botaoLimpar.addEventListener("click", function () {
  if (quantidade === 0) { // === compara se a quantidade já é exatamente zero.
    mensagemNaTela.textContent = "Sua seleção já está vazia."; // Explica por que nada mudou.
  } else { // Executa este bloco quando existem itens na seleção.
    quantidade = 0; // Zera a quantidade armazenada.
    totalCentavos = 0; // Zera o total armazenado.
    atualizarResumo(); // Faz os valores zerados aparecerem no HTML.
    mensagemNaTela.textContent = "Seleção limpa. Escolha novos produtos."; // Confirma a limpeza.
  } // Encerra a condição.
});

atualizarResumo(); // Sincroniza o resumo quando o script é carregado.
