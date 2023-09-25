*** Settings ***
Resource        ../Resources/BasePage.robot
Resource        ../Resources/Pages/locatorsPage.robot
Resource        ../Resources/Pages/steps.robot

Test Setup      Start Session
Test Teardown   Close Session


*** Test Cases ***
Cenario1: Pesquisar Melhor hotel de Manaus de acordo com a Avaliacao e Sugestoes
    Dado que eu estou na pagina de busca do trivago
    Quando eu insiro a cidade "Manaus" no campo de busca
    E insiro uma data de entrada
    E insiro uma data de saida
    E clico no botao "Pesquisar"
    E Seleciono a opcao ordenar por “Avaliação e Sugestões"
    Então deve ser mostrado uma lista de Hoteis 
    E verifico os dados do hotel, nome, valor, avaliação