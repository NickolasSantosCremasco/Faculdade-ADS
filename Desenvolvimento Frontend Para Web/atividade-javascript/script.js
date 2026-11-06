// 1. Busque os elementos do HTML pelo id. O defer garante que já existam.
const campoNome = document.querySelector('#nome');
const campo1 = document.querySelector('#nota1');
const campo2 = document.querySelector('#nota2');
const resultado = document.querySelector('#resultado');
const contagem = document.querySelector('#contagem');
const botaoCalcular = document.querySelector('#calcular');
const botaoLimpar = document.querySelector('#limpar');

// Fica FORA das funções: guarda o valor entre um clique e outro.
// Se estivesse dentro de calcularMedia, voltaria a 0 a cada clique.
let calculosValidos = 0;

// 2. Declare uma função: ela só roda quando for chamada.
function calcularMedia() {
  resultado.classList.remove('sucesso', 'atencao', 'erro');

  // Valida o nome: trim() remove espaços, então "   " vira '' e é rejeitado.
  const nome = campoNome.value.trim();
  if (nome === '') {
    resultado.textContent = 'Digite seu nome.';
    resultado.classList.add('erro');
    return; // Não conta como cálculo válido.
  }

  // value é texto. Confira o vazio ANTES de converter: Number('') é 0.
  if (campo1.value.trim() === '' || campo2.value.trim() === '') {
    resultado.textContent = 'Preencha as duas notas.';
    resultado.classList.add('erro');
    return; // Encerra a função; não calcula com entrada incompleta.
  }

  const nota1 = Number(campo1.value);
  const nota2 = Number(campo2.value);

  // min/max no HTML orientam a entrada; nossa lógica também valida.
  if (!Number.isFinite(nota1) || !Number.isFinite(nota2) ||
      nota1 < 0 || nota1 > 10 || nota2 < 0 || nota2 > 10) {
    resultado.textContent = 'Use apenas notas de 0 a 10.';
    resultado.classList.add('erro');
    return;
  }

  const media = (nota1 + nota2) / 2;
  let situacao = 'Precisa revisar'; // let permite reatribuir o valor.
  let classe = 'atencao';
  if (media >= 6) {
    situacao = 'Meta atingida';
    classe = 'sucesso';
  }

  // Chegou aqui: nome e notas válidos. Só agora a contagem aumenta.
  calculosValidos++;
  contagem.textContent = `Cálculos válidos: ${calculosValidos}`;

  // toFixed(1) formata a exibição. A decisão usa a média sem arredondar.
  resultado.textContent = `${nome}, sua média: ${media.toFixed(1)} — ${situacao}.`;
  resultado.classList.add(classe);
}

function limparCampos() {
  campoNome.value = '';
  campo1.value = '';
  campo2.value = '';
  calculosValidos = 0;
  contagem.textContent = 'Cálculos válidos: 0';
  resultado.textContent = 'Aguardando as notas.';
  resultado.classList.remove('sucesso', 'atencao', 'erro');
  campoNome.focus();
}

// 3. Conecte os eventos às funções (sem parênteses: não executar agora).
botaoCalcular.addEventListener('click', calcularMedia);
botaoLimpar.addEventListener('click', limparCampos);
