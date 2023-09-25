*** Settings ***
Documentation    This is the main page for the project
Library          SeleniumLibrary
Library          DateTime

*** Variables ***
${titulo}                 xpath = //*[@id="__next"]/div[1]/div[1]/section/div[1]/h1
${cidade}                 id = input-auto-complete
${busca_btn}              xpath = //span[text()='Pesquisar']
${localizacao}            //*[@id="resultado-DNEC"]/tbody/tr/td[4]                                                               
${entrada}                xpath = //button[@data-testid='search-form-calendar-checkin']//span
${saida}                  xpath = //button[@data-testid='search-form-calendar-checkout']//span
${ordenar}                xpath = //label[text()='Ordenar por']/following-sibling::select
${avaliacaoEsugestoes}    xpath = //*[@id="sorting-selector"]/option[2]
${hotel_title}            xpath = //span[@title='Hotel Express Vieiralves']
${hotel_destaques}        xpath = //button[text()='Destaques']
${hotel_valor}            xpath = //p[@data-cos='recommendedPrice'] 
${hotel_avaliacao}        xpath = //span[text()='Bom']
${manaus}                 xpath = //div[@data-testid='ssg-element']//div                     

${dataentrada}            xpath = //button[@data-testid='valid-calendar-day-2023-10-15']//time[1]
${datasaida}              xpath = //button[@data-testid='valid-calendar-day-2023-10-20']//time[1]     
