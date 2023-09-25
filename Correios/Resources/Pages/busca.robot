*** Settings ***
Documentation    This is the main page for the project
Library          SeleniumLibrary

*** Variables ***
${titulo}    id = titulo_tela
${cep}       id= endereco
${busca_btn}    id = btn_pesquisar
${localizacao}    //*[@id="resultado-DNEC"]/tbody/tr/td[4]    

*** Keywords ***

Dado que eu estou na pagina de busca do cep
    Wait Until Element Is Visible    ${titulo} 
    Page Should Contain              Busca CEP

Quando eu insiro o cep "69005-040"
    Click Element    ${cep} 
    Input text       ${cep}           69005-040    
    Click Element    ${busca_btn} 

Então deve ser mostrado a localização "Bemol"
    Wait Until Element Is Visible    ${localizacao} 
    Page Should Contain              Rua Miranda Leão 

Quando eu insiro o nome "Lojas Bemol"
    Click Element    ${cep} 
    Input text       ${cep}           Lojas Bemol    
    Click Element    ${busca_btn} 

Então o endereço da loja "Bemol" é exibido
    Wait Until Element Is Visible    ${localizacao} 
    Page Should Contain              Lojas Bemol
    Sleep                               3