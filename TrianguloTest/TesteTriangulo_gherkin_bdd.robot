*** Settings ***

Resource  TesteTrianguloResource.robot

*** Test Cases ***

Caso de Teste 01 - Acesso a aplicação
  Dado que ao abrir navegador
  Quando acessar o site vanilton.net/triangulo/
  Então o título da página deve ficar Triângulo

Caso de Teste 02 - Verificar Triângulo 
  [Documentation]  Esse caso de teste verifica o tipo de triângulo
  Dado que estou na página de vanilton.net/triangulo/
  Quando informar os valores de cada vértice
  Então o programa mostrará o tipo de triângulo