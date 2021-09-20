*** Settings ***
Library    SeleniumLibrary

Documentation    caso de teste para validar compra no site   

*** Test Case ***
fazer compra 
    acessar site 
    login  
    comprar vestido rosa p
    comprar vestido bege M
    selecionar termos de serviço
    historico de pedidos
    
*** Keywords ***
acessar site
    Open Browser     url=http://automationpractice.com/                     browser=chrome 
    Click Element    xpath=//*[@id="header"]/div[2]/div/div/nav/div[1]/a    
    Maximize Browser Window 

login
    input text       xpath=//*[@id="email"]                                 vagnerosta@youx.com
    input text       xpath=//*[@id="passwd"]                                12345
    Click Button     xpath=//*[@id="SubmitLogin"]

comprar vestido rosa p
    Click Element     xpath=//*[@id="block_top_menu"]/ul/li[2]
    click Element     xpath=//*[@id="categories_block_left"]/div/ul/li[2]/a
    click Image       xpath=//*[@id="center_column"]/ul/li/div/div[1]/div/a[1]/img
    click Element     xpath=//*[@id="color_24"]
    Select From List By Value    xpath=//*[@id="group_1"]    2
    click Button      xpath=//*[@id="add_to_cart"]/button
    Sleep             4s
    Click Element     xpath=//*[@id="layer_cart"]/div[1]/div[2]/div[4]/span/span
    click Element      xpath=//*[@id="color_7"]
comprar vestido bege m 
    Select From List By Value    xpath=//*[@id="group_1"]    1
    click Button      xpath=//*[@id="add_to_cart"]/button
    Sleep             3s
    Click Element     xpath=//*[@id="layer_cart"]/div[1]/div[2]/div[4]/a


selecionar termos de serviço
    Click Element     xpath=//*[@id="center_column"]/p[2]/a[1]
    Sleep             2s
    Click Element     xpath=//*[@id="center_column"]/form/p/button
    Click element     xpath=//*[@id="cgv"]
    click element     xpath=//*[@id="form"]/p/button
    click element     xpath=//*[@id="HOOK_PAYMENT"]/div[2]/div/p/a
    click element     xpath=//*[@id="cart_navigation"]/button
historico de pedidos
    click element     xpath=//*[@id="header"]/div[2]/div/div/nav/div[1]/a
    click element     xpath=//*[@id="center_column"]/div/div[1]/ul/li[1]/a/i





    
        