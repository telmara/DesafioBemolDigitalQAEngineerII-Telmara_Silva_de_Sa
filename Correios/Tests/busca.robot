*** Settings ***
Resource        ../Resources/BasePage.robot
Resource        ../Resources/Pages/busca.robot

Test Setup      Start Session
Test Teardown   Close Session


*** Test Cases ***
Cenario1: Pesquisa cep "69005-040"
    Dado que eu estou na pagina de busca do cep
    Quando eu insiro o cep "69005-040"
    Então deve ser mostrado a localização "Bemol"

Cenario2: Pesquisa pelo nome "Lojas Bemol"
   Dado que eu estou na pagina de busca do cep
   Quando eu insiro o nome "Lojas Bemol"
   Então o endereço da loja "Bemol" é exibido