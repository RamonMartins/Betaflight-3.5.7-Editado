# Aviso:
  ### Faça por sua conta e risco. Nada neste tutorial veio de uma canal oficial. Tudo aqui foi feito por mim. Se você acredita que não é capaz de fazer os procedimentos, não arrisque pois pode acabar perdendo sua placa.

## Objetivo do Projeto:
Adicionar uma nova porta UART para ser utilizada.

## Entenda o Motivo:
Comprei um Tiny Whoop US65 de um amigo, a placa dele vem com um Receptor embutido, e nesta placa vinha o Receptor da FrSky, porém eu utilizo um Rádio Controle da FlySky, então precisei colocar um Receptor externo da FlySky no pino RX da porta UART3. Funcionou, porém eu tinha de abrir mão do SmartAudio que estava configurado na mesma UART3 porém no pino TX. Sendo assim foi necessário que eu ativasse outra UART para poder utilizar o Receptor externo e o SmartAudio. Para isso foi preciso soldar o pino de comunicação do Receptor externo a um pino do Chip F3 na placa e alterar o código fonte da Firmware da Betaflight 3.5.7 (essa é a versão mais recomendada e mais estável para este Chip F3 por conta do seu poder de processamento).

## Firmwares testadas:
  - Placa com FrSky:  <b>OK</b>
  - Placa com FlySky: <b>Não testado</b>
  - Placa com DSMX:   <b>Não testado</b>

## Requisitos:
  - Saber fazer solda em componentes pequenos, como componentes SMD.
  - Saber trocar a firmware do Betaflight na placa

## Dicas:
  - Primeiro coloque um pouco de estanho no pino, depois no cabo, por fim posicione o fio encima do pino e apenas toque com o ferro de solda para fazer a liga entre o estanho do pino e do cabo.
  - Caso o seu ferro de solda não tenha um bico fino, você pode utilizar um fio rígido e enrolar na ponta do ferro e assim poder fazer a solda SMD.
  - Também pode utilizar uma lupa para melhor identificar o pino onde você irá soldar.
  - <img src="https://user-images.githubusercontent.com/18702896/82059444-6c0bd200-969c-11ea-9378-cc501bfd4b06.jpeg" width="250" height="300" /> <img src="https://user-images.githubusercontent.com/18702896/82059948-0f5ce700-969d-11ea-8fdd-24bc56f58907.jpeg" width="250" height="300" />

## Onde Soldar:
  - Você irá fazer a solda no pino "PA10", ele é o 6º(sexto) pino da esquerda para a direita na parte de cima do Chip.
#### Preste atenção na orientação do chip para não errar, existe uma bolinha encima do chip para indicar a orientação, basei-se por ela.
  - <img src="https://user-images.githubusercontent.com/18702896/82064833-aaf15600-96a3-11ea-9805-fca3b3fc2390.jpeg" width="400" height="300" /> <img src="https://user-images.githubusercontent.com/18702896/82064046-a4aeaa00-96a2-11ea-86b2-3abed002a76c.jpeg" width="250" height="300" />
  - Este é o exemplo de como ficará na placa com Receptor FrSky e FlySky. Eu optei por soldar no resistor onde o pino esta ligado. No caso da DSMX não tem esse resistor e terá de soldar diretamente no pino do chip.
  - <img src="https://user-images.githubusercontent.com/18702896/82064963-d411e680-96a3-11ea-9e9c-c8a715c2dff5.jpeg" width="250" height="300" />

## Trocar a Firmware:
Tendo conseguido fazer a solda agora é hora de trocar a Firmware do Betaflight com as modificações que eu fiz para ativar a porta UART1.
  - 1: Baixe os arquivos .hex da Firmware do Betaflight na página de Releases <a href="https://github.com/RamonMartins/Betaflight-3.5.7-Editado/releases" target="_blank">clicando aqui</a>.
  - 2: Abra o Betaflight Configurator.
  - 3: Clique na aba "<b>Atualização de Firmware</b>".
  - 4: Ligue sua placa no computador apertando o botão "<b>boot</b>" que se encontra na placa, após aparecer as siglas "<b>DFU</b>" na caixa de seleção no topo do Betaflight Configurator, solte o botão de "<b>boot</b>".
  - 5: Clique no botão "<b>Carregar Firmware[local]</b>" e navegue ate encontrar a pasta onde você baixou o arquivo e selecione o arquivo referente ao Receptor que vem embutido na sua placa.
  - 6: Marque as opções "<b>Sem sequencia de inicialização</b>" e "<b>Formatar chip</b>".
  - 7: Clique no botão "<b>Atualizar firmware</b>", ao finalizar você já pode clicar no botao de conectar para configurar sua placa.
  - 8: Na aba "<b>Portas</b>", na UART1 marque a opção "<b>Serial RX</b>".
  - 9: Ainda na aba "<b>Portas</b>", na UART3, em periféricos, selecione na caixa a opção "<b>TBS SmartAudio</b>".

## Recomendação:
  #### Se você fez backup das suas cofigurações do Betaflight, recomendo que não restaure elas pois existem configurações que foram alteradas na firmware e se você restaurar elas, pode acabar voltando ao padrão da firmware e você terá de instalar a firmware modificada novamente, então faça as configurações manualmente.
