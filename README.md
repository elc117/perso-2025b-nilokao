# Mogoso
## Conceito
A aplicação web "Mogoso" é uma versão do jogo [Termo](https://term.ooo/), com a diferença de ter 6 letras. A base de dados usada foi retirada do site do IME-USP<sup>1</sup>, sendo coletadas apenas palavras sem acento. Após isso, foi realizado o processamento desse arquivo de texto, com apenas as palavras de 6 letras sendo mantidas ao final. O parser dessa etapa pode ser encontrado no arquivo 'parser.hs'.

A interface foi construída com base no jogo original, usando HTML, CSS e JavaScript puros, com a diferença principal entre as interfaces sendo no input, onde o próprio usuário digita e navega entre as letras da palavra. O teclado que fica na parte debaixo teve como fonte primária o site FreeCodeCamp, mas foi modificado para ficar melhor integrado ao jogo.

## Passo-a-passo do programa
Antes do programa foi rodado o parser uma vez para limpar as palavras da base de dados.

1. Ao rodar o servidor, uma palavra aleatória é sorteada do arquivo txt, com todas as palavras sendo colocadas dentro de uma lista e uma escolhida.
2. Dentro do cliente, o usuário digita uma palavra, que é enviada ao servidor.
    - Primeiro verifica-se se a palavra está dentro da lista de palavras existentes.
    - Caso a palavra exista, verifica-se se ela está correta.
    - Caso não, testa quais letras estão incorretas, parcialmente corretas e corretas.
    - Retorna ao cliente um arquivo json com a resposta.
3. O cliente lê o arquivo e verifica se ele é uma String, o que significa que a palavra não estava nas possíveis palavras. Caso isso não aconteça, o servidor retornou uma lista de inteiros de 0 até 2, onde cada número representa a cor da letra daquela posição.
4. Verificação de vitória e derrota.


## Fontes
<p><sup>1</sup>:https://www.ime.usp.br/</p>
<p><sup>2</sup>:https://www.freecodecamp.org/news/build-a-wordle-clone-in-javascript/</p>

[![Review Assignment Due Date](https://classroom.github.com/assets/deadline-readme-button-22041afd0340ce965d47ae6ef1cefeee28c7c493a6346c4f15d667ab976d596c.svg)](https://classroom.github.com/a/7NMOLXjY)