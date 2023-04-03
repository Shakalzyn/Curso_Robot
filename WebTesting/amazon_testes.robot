*** Settings ***
Documentation    Essa switch testa o site da Amazon.com.br
Resource         amazon_resources.robot
Test Setup       Abrir o navegador
Test Teardown    Fechar o navegador



*** Test Cases ***
Caso de Teste 01 - Acesso ao menu "Eletrônicos"
    [Documentation]    Esse teste verifica o menu eletronicos do site da Amazon.com.br
    ...                e verificar a categoria Computadores e Informática
    ...                pode continuar a escrever colocando os "..."
    [Tags]             menus    categorias
    Acessar a home page do site Amazon.com.br
#     Entrar no menu "Eletrônicos"
#     Verificar se o título da página fica "Eletrônicos e Tecnologia |Amazon.com.br"
#     Verificar se aparece a frase "Eletrônicos e Tecnologia"
#     Verificar se aparece a categoria "Computadores e Informática"


# Caso de Teste 02 - Pesquisa de um Produto
#     [Documentation]    esse teste verifica a busca de um produto
#     [Tags]             busca_produtos    lista_busca
#     Acessar a home page do site Amazon.com.br
#     Digitar o nome de produto "Xbox Series S" no campo de pesquisa
#     Clicar no botão de pesquisa
#     Verificar o resultado da pesquisa, listando o produto pesquisado
