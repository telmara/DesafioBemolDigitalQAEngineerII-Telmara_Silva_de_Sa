*** Settings ***
Documentation    This is the main page for the project
Library          SeleniumLibrary
Library          DateTime

*** Keywords ***
Dado que eu estou na pagina de busca do trivago
    Wait Until Element Is Visible        ${titulo} 
    Page Should Contain              Comparamos preços de hotéis de vários sites
Quando eu insiro a cidade "Manaus" no campo de busca
    Click Element                       ${cidade} 
    Input text                          ${cidade}     Manaus
    Wait Until Page Contains Element    ${manaus}
    Click Element                       ${manaus}

E insiro uma data de entrada
    Press Keys                               ${entrada}            ENTER
    Wait Until Page Contains Element         ${dataentrada} 
    Click Element                            ${dataentrada}        
E insiro uma data de saida
    Press Keys                               ${datasaida}          ENTER
    Wait Until Page Contains Element         ${busca _btn}     
    Click Element                            xpath = //button[text()='Confirmar']
E clico no botao "Pesquisar"
    Click Element                            ${busca_btn} 
    Sleep            30                      #Pagina abre um dialog de 30s
E Seleciono a opcao ordenar por “Avaliação e Sugestões"
    Click Element                           ${ordenar}
    Select From List By Value               ${ordenar}        6

Então deve ser mostrado uma lista de Hoteis
    Wait Until Page Contains Element        xpath = //span[text()='Estadias encontradas: ']
    Element Text Should Be                  ${hotel_title}    Hotel Express Vieiralves

E verifico os dados do hotel, nome, valor, avaliação
    Click Element                           ${hotel_title} 
    Click Element                           ${hotel_destaques} 

[Documentation]    Confirma os valores do primeiro resultado ordenado por avaliacao E sugestoes

    ${nome} =                           Get Text               ${hotel_title}
    Should Be Equal As Strings          ${nome}                Hotel Express Vieiralves

    ${valor} =                          Get Text    ${hotel_valor}
    Should Be Equal As Strings          ${valor}    R$ 220 

    ${avaliacao} =         Get Text       ${hotel_avaliacao}
    Page Should Contain    ${avaliacao}   Bom 


