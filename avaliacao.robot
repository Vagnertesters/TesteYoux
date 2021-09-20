*** Settings ***
Library    SeleniumLibrary


Documentation    caso de teste para validar Avaliação de compra    

*** Test Case ***
Avaliação
    acessar site 
    login  
    Avaliação Estrela
    
*** Keywords ***
acessar site
    Open Browser     url=http://automationpractice.com/                     browser=chrome 
    Click Element    xpath=//*[@id="header"]/div[2]/div/div/nav/div[1]/a  
    Maximize Browser Window  

login
    input text       xpath=//*[@id="email"]                                 vagnerosta@youx.com
    input text       xpath=//*[@id="passwd"]                                12345
    Click Button     xpath=//*[@id="SubmitLogin"]

Avaliação Estrela
    Click Element     xpath=//*[@id="block_top_menu"]/ul/li[2]
    click Element     xpath=//*[@id="categories_block_left"]/div/ul/li[2]/a
    click Element     xpath=//*[@id="center_column"]/ul/li
    Sleep             4s
    click Element      xpath=//*[@id="new_comment_tab_btn"]/span
    Click element     xpath=//*[@id="criterions_list"]/li/div[1]/div[6]/a
    Input Text        xpath=//*[@id="comment_title"]            Avaliação de teste
    Input Text        xpath=//*[@id="content"]                  comentário de testes  
    Click Button      xpath=//*[@id="submitNewMessage"]  
    sleep             4s
    Click Button      xpath=//*[@id="product"]/div[2]/div/div/div/p[2]/button/span

