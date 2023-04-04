*** Settings ***
Library    SeleniumLibrary



*** Variables ***
${URL}                                    https://www.amazon.com.br/
${MENU_ELETRONICOS}                       //a[@href='/Eletronicos-e-Tecnologia/b/?ie=UTF8&node=16209062011&ref_=nav_cs_electronics'][contains(.,'Eletrônicos')]
${HEADER_ELETRONICOS}                     //h1[contains(.,'Eletrônicos e Tecnologia')]
#${TEXTO_HEADER_ELETRONICOS}              Eletrônicos e Tecnologia
#${TITULO_ELETRONICOS_E_TECNOLIGIA}       //title[contains(.,'Eletrônicos e Tecnologia | Amazon.com.br')]
#${IMAGEM_COMPUTADORES}                   //img[contains(@alt,'Computadores e Informática')]
${CAMPO_PESQUISA}                         twotabsearchtextbox
${BOTAO_PESQUISA}                         nav-search-submit-button
${RESULTADO}                              //span[@class='a-size-medium-plus a-color-base a-text-normal'][contains(.,'RESULTADOS')]

*** Keywords ***
Abrir o navegador
    Open Browser    browser=chrome
    Maximize Browser Window

Fechar o navegador
    Capture Page Screenshot
    Close Browser

Acessar a home page do site Amazon.com.br
    Go To                                        url=${URL}
    Wait Until Element Is Visible                locator=${MENU_ELETRONICOS}

Entrar no menu "Eletrônicos"
    Click Element                                locator=${MENU_ELETRONICOS}

Verificar se aparece a frase "${FRASE}"
    Wait Until Page Contains                     text=${FRASE}
    Wait Until Element Is Visible                locator=${HEADER_ELETRONICOS}

Verificar se o título da página fica "${TITULO}"
    Title Should Be                              title=${TITULO} 

Verificar se aparece a categoria "${CATEGORIA}"
    Element Should Be Visible                    locator=//img[contains(@alt,'${CATEGORIA}')] 
    #Page Should Contain Image                    locator=${IMAGEM_COMPUTADORES} 

Digitar o nome de produto "${PRODUTO}" no campo de pesquisa
    Input Text    locator=${CAMPO_PESQUISA}    text=${PRODUTO}
   
Clicar no botão de pesquisa
    Click Button    locator=${BOTAO_PESQUISA} 
Verificar o resultado da pesquisa, listando o "${PRODUTO}"
    Wait Until Element Is Visible    locator=(//span[contains(.,'${PRODUTO}')])
    