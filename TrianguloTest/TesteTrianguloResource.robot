*** Settings ***

Library  SeleniumLibrary

*** Variables ***


${BROWSER}    chrome
${URL}        http://www.vanilton.net/triangulo/
${VERTICE1}        xpath=/html/body/form/input[1]
${TEXT_VERTICE1}   15
${VERTICE2}        xpath=/html/body/form/input[2]
${TEXT_VERTICE2}   15
${VERTICE3}        xpath=/html/body/form/input[3]
${TEXT_VERTICE3}   12
${BUTTON}          xpath=/html/body/form/input[4]

*** Keywords ***

Abrir o navegador
  Open Browser  browser=${BROWSER}

Acessar página vanilton.net/triangulo/
  Go to  ${URL}

Verificar se o título da página fica "${TITULO}"
  Title Should Be    ${TITULO}

Digitar o tamanho do vértice 1
  Input Text    ${VERTICE1}    ${TEXT_VERTICE1}

Digitar o tamanho do vértice 2
  Input Text    ${VERTICE2}    ${TEXT_VERTICE2}

Digitar o tamanho do vértice 3
  Input Text    ${VERTICE3}   ${TEXT_VERTICE3}

Clicar no botão Identificar
  Click Button    ${BUTTON}

Identificar triângulo 
   IF   (${TEXT_VERTICE1} + ${TEXT_VERTICE2} < ${TEXT_VERTICE3}) or (${TEXT_VERTICE1} + ${TEXT_VERTICE3} < ${TEXT_VERTICE2}) or (${TEXT_VERTICE2} + ${TEXT_VERTICE3} < ${TEXT_VERTICE1})
        Log    Não é um triângulo
   ELSE IF   (${TEXT_VERTICE1} == ${TEXT_VERTICE2} != ${TEXT_VERTICE3}) or (${TEXT_VERTICE1} == ${TEXT_VERTICE3} != ${TEXT_VERTICE2}) or (${TEXT_VERTICE2} == ${TEXT_VERTICE3} != ${TEXT_VERTICE1})
        Log    Triângulo isósceles   #Possui dois lados iguais e um diferente
   ELSE IF   (${TEXT_VERTICE1} == ${TEXT_VERTICE2} == ${TEXT_VERTICE3})
        Log    Triângulo equilátero  #Possui todos os lados iguais
       ELSE 
        Log    Triângulo escaleno    #Possui todos os lados diferentes
   END

Fechar navegador
  Close Browser

  #GHERKIN STEPS

Dado que ao abrir navegador
  Abrir o navegador

Quando acessar o site vanilton.net/triangulo/
  Acessar página vanilton.net/triangulo/

Então o título da página deve ficar Triângulo
  Verificar se o título da página fica "Triângulo"

Dado que estou na página de vanilton.net/triangulo/
  Acessar página vanilton.net/triangulo/

Quando informar os valores de cada vértice
  Digitar o tamanho do vértice 1
  Digitar o tamanho do vértice 2
  Digitar o tamanho do vértice 3

Então o programa mostrará o tipo de triângulo
  Clicar no botão Identificar
  Identificar triângulo 
  Fechar navegador