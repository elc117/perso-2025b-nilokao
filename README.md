# Mogoso
Nome: Nicolas Monteiro Longo, curso: Sistemas de Informação
## Conceito (tema):
A aplicação web "Mogoso" é uma versão do jogo [Termo](https://term.ooo/), com a diferença de ter 6 letras. A base de dados usada foi retirada do site do IME-USP<sup>1</sup>, sendo coletadas apenas palavras sem acento. Após isso, foi realizado o processamento desse arquivo de texto, com apenas as palavras de 6 letras sendo mantidas ao final. O parser dessa etapa pode ser encontrado no arquivo 'parser.hs'.

A interface foi construída com base no jogo original, usando HTML, CSS e JavaScript puros, com a diferença principal entre as interfaces sendo no input, onde o próprio usuário digita e navega entre as letras da palavra. O teclado que fica na parte debaixo teve como fonte primária o site FreeCodeCamp, mas foi modificado para ficar melhor integrado ao jogo.

## Passo-a-passo do funcionamento da aplicação:
Antes do programa foi rodado o parser uma vez para limpar as palavras da base de dados.

1. Ao rodar o servidor, uma palavra aleatória é sorteada do arquivo txt, com todas as palavras sendo colocadas dentro de uma lista e uma escolhida.
2. Dentro do cliente, o usuário digita uma palavra, que é enviada ao servidor.
    - Primeiro verifica-se se a palavra está dentro da lista de palavras existentes.
    - Caso a palavra exista, verifica-se se ela está correta.
    - Caso não, testa quais letras estão incorretas, parcialmente corretas e corretas.
    - Retorna ao cliente um arquivo json com a resposta.
3. O cliente lê o arquivo e verifica se ele é uma String, o que significa que a palavra não estava nas possíveis palavras. Caso isso não aconteça, o servidor retornou uma lista de inteiros de 0 até 2, onde cada número representa a cor da letra daquela posição.
4. Verificação de vitória e derrota.

## Comentários sobre o desenvolvimento:
Provavelmente, a parte mais complexa do desenvolvimento foi programar a função de teste de palavras. Quando eu comecei o trabalho eu achei que era uma lógica simples, e realmente é, menos quando se trata de palavras com letras repetidas, é aí que o problema realmente está! Gostaria de destacar que durante os primeiros testes do trabalho (quando eu ainda não tinha confirmado a ideia com a professora e o repositório que eu estava atualizando era o meu pessoal), por algum motivo a porta 3000 parou de funcionar, e desde então eu usei a 5000.

Antes de falar sobre a parte mais díficil, vale destacar o que foi fácil, ler o arquivo de palavras e limpá-lo, assim como sortear uma palavra foi tranquilo, com algoritmos adaptados<sup>3</sup> usando a biblioteca Text, além de um dos trabalhos dos semestres passados<sup>4</sup> ter feito uma prática parecida em seu código, o que facilitou a aplicação.

Já sobre o JavaScript, as funções são relativamente simples, elas basicamente recebem dados do backend e processam para imprimir para o usuário. O CSS foi baseado no jogo em que o Mogoso tem como base, com algumas modificações de cores e fonte, escolhidas pelo gosto pessoal do programador. 

## Como rodar o Mogoso:
1. Clone o repositório para a pasta de sua preferência.
    ```console
    cd seuDiretório
    ```
    ```console
    git clone https://github.com/elc117/perso-2025b-nilokao.git
    ```
    ```console
    cd seuDiretório/perso-2025b-nilokao
    ```

2. Rode o cabal.
    ```console
    cabal build
    ```

    ```console
    cabal run mogoso
    ```

3. Navegue até a pasta static e abra o arquivo html.
    ```console
    cd seuDiretório/perso-2025b-nilokao/static
    ```

4. Jogue o Mogoso :).

## Fontes e referências
1: https://www.ime.usp.br/

2: https://www.freecodecamp.org/news/build-a-wordle-clone-in-javascript/

3: https://stackoverflow.com/questions/22547430/haskell-readfile-line-by-line-and-put-into-list

4: https://github.com/elc117/perso-2024b-fennerspohr

[![Review Assignment Due Date](https://classroom.github.com/assets/deadline-readme-button-22041afd0340ce965d47ae6ef1cefeee28c7c493a6346c4f15d667ab976d596c.svg)](https://classroom.github.com/a/7NMOLXjY)