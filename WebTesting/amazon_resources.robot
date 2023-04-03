*** Settings ***
Library    SeleniumLibrary



*** Variables ***
${URL}                        https://www.amazon.com.br/
${MENU_ELETRONICOS}           //a[@href='/Eletronicos-e-Tecnologia/b/?ie=UTF8&node=16209062011&ref_=nav_cs_electronics'][contains(.,'Eletrônicos')]



*** Keywords ***
Abrir o navegador
    Open Browser    browser=chrome
    Maximize Browser Window

Fechar o navegador
    Close Browser

Acessar a home page do site Amazon.com.br
    Go To                                    url=${URL}
    Wait Until Element Is Visible            locator=${MENU_ELETRONICOS}




Entrar no menu "Eletrônicos"
    Click Button    locator=${MENU_ELETRONICOS}

# Verificar se o título da página fica "Eletrônicos e Tecnologia |Amazon.com.br"
# Verificar se aparece a frase "Eletrônicos e Tecnologia"
# Verificar se aparece a categoria "Computadores e Informática"
# Digitar o nome de produto "Xbox Series S" no campo de pesquisa
# Clicar no botão de pesquisa
# Verificar o resultado da pesquisa, listando o produto pesquisado
    