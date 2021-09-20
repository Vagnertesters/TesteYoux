*** Settings ***
Library    SeleniumLibrary

Documentation    caso de teste para validar a criação de conta do usuario e compra no Site    

*** Test Case ***
criar conta
    acessar site 
    inserir e-mail 
    cadastrar 


*** Keywords ***
acessar site
    Open Browser     url=http://automationpractice.com/                     browser=chrome 
    Click Element    xpath=//*[@id="header"]/div[2]/div/div/nav/div[1]/a    

inserir e-mail
    Input text      xpath=//*[@id="email_create"]    vagnerosta@youx.com 
    Sleep           3s
    Click Button    xpath=//*[@id="SubmitCreate"]
    Sleep           3s
    

cadastrar
    Click Element          xpath=//*[@id="id_gender1"]      
    Input Text             xpath=//*[@id="customer_firstname"]    Vagner 
    Input Text             xpath=//*[@id="customer_lastname"]     Passos
    Input Text             xpath=//*[@id="passwd"]                12345
    Select From List By Value   xpath=//*[@id="days"]             28
    Select From List By Value   xpath=//*[@id="months"]           1  
    Select From List By Value   xpath=//*[@id="years"]            1982
    Click Element          xpath=//*[@id="newsletter"]
    Click Element          xpath=//*[@id="uniform-optin"]
    Input Text             xpath=//*[@id="company"]               Youx
    Input Text             xpath=//*[@id="address1"]              Curitiba
    Input text             xpath=//*[@id="address2"]              Rua Leonel França 
    Input text             xpath=//*[@id="city"]                  Texas Cit
    Select From List By Value          xpath= //*[@id="id_state"]    43 
    Input text             xpath=//*[@id="postcode"]              00000
    Select From List By Value  xpath=//*[@id="id_country"]        21
    Input text              xpath=//*[@id="phone"]                41 33270431
    input Text              xpath=//*[@id="alias"]                Miguel 52
    Click Button            xpath=//*[@id="submitAccount"]
    Page Should Contain    MY ACCOUNT 
    Log            Cenario com sucesso Usuario direcionado para proxima pagina 



    
