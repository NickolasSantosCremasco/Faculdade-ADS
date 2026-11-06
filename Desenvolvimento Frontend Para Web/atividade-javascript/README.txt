README - CALCULADORA DE MEDIA (Introducao ao JavaScript)

Nome: Nickolas Dos Santos Cremasco
RGM: 47450363
Turma: Curso de ADS - Sala 502

Nome: Gustavo Rodrigues da Silva
RGM: 47447923
Turma: Curso de ADS - Sala 502

Nome: Keven Da Conceição Viana
RGM: 48906786
Turma: Curso de ADS - Sala 502

Aula: 22/10/2026 - Prof. Carlos Allexandre

O QUE FOI FEITO
A) index.html: label e campo de texto com id "nome"; novo <p id="contagem">.
B) script.js: o nome e lido com campoNome.value.trim(); se ficar vazio
   (inclusive so espacos), mostra "Digite seu nome." e nao calcula.
C) Resultado valido: textContent mostra "Nome, sua media: X.X - situacao."
D) let calculosValidos = 0 declarado fora das funcoes. Aumenta so depois
   de nome e notas passarem na validacao. A contagem aparece em #contagem.
   O botao Limpar zera a contagem, o nome e as notas.
E) Personalizacao: titulo "Calculadora de media do estudante" e CSS
   alterado em h1 (cor), .cartao (borda mais arredondada e sombra) e
   #contagem (estilo novo). O resultado continua com texto e cor.

TESTES REALIZADOS (nome "Ana")
- 8 e 6: media 7.0 -> "Meta atingida" (acima de 6)
- 4 e 5: media 4.5 -> "Precisa revisar" (abaixo de 6)
- 6 e 6: media 6.0 -> "Meta atingida" (exatamente 6)
- Notas vazias: "Preencha as duas notas." (contagem nao aumenta)
- Nota -1: "Use apenas notas de 0 a 10."
- Nota 11: "Use apenas notas de 0 a 10."
- Nome vazio ou so com espacos: "Digite seu nome."
- Limpar: zera nome, notas, resultado e contagem.

EXPLICACOES
- const x let: const cria uma variavel que nao pode ser reatribuida (usei
  para elementos e para valores que nao mudam, como media). let permite
  mudar o valor depois (usei em situacao, classe e calculosValidos).
- Number: o value de um campo e sempre texto. Number() converte para
  numero para poder calcular e comparar. Cuidado: Number('') vira 0,
  por isso confiro se esta vazio antes de converter.
- defer: no <script defer>, o navegador baixa o JS junto com o HTML, mas
  so executa depois que a pagina foi lida. Assim os elementos ja existem
  quando o querySelector procura por eles.
- Sequencia: evento (clique no botao) -> leitura (value dos campos) ->
  validacao (nome, vazio, faixa 0 a 10) -> calculo (media e situacao) ->
  tela (textContent e classes CSS no resultado).
