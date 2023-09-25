***Settings***
Documentation           This is the main page for the project
Library                 SeleniumLibrary

***Variables***
${BASEURL}          https://buscacepinter.correios.com.br/app/endereco/index.php
${BROWSER}          Chrome
${TIMEOUT}          10


***Keywords***
Start Session
    Open Browser            about:blank     ${BROWSER} 
    Go To                   ${BASEURL}
    Set Selenium Implicit Wait          ${TIMEOUT}
    ${PageTitle}            SeleniumLibrary.Get Title
    Log                     ${PageTitle}
    Set Window Size         1440            900
    Sleep                    6


Close Session
    Capture Page Screenshot
    Close Browser