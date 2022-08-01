*** Settings ***

Resource  TesteTrianguloResource.robot

*** Test Cases ***

Caso de Teste 01 - Acesso a aplicação
  Abrir o navegador
  Acessar página vanilton.net/triangulo/
  Verificar se o título da página fica "Triângulo"

Caso de Teste 02 - Verificar Triângulo 
  Digitar o tamanho do vértice 1
  Digitar o tamanho do vértice 2
  Digitar o tamanho do vértice 3
  Clicar no botão Identificar
  Identificar triângulo
  Fechar navegador

