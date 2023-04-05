*** Settings ***
Documentation   Tarefa 05 do curso de Robot
Library    FakerLibrary
Library    SeleniumLibrary

*** Variable ***
&{PESSOA}       nome=Felipe    sobrenome=Manoel    email=@testerobot.com

*** Test Cases ***
Caso de teste Tarefa 05
    Criando email personalizado


*** Keywords ***
Criando email personalizado
    ${PALAVRAFAKE}    FakerLibrary.Word  
    ${NOVO_EMAIL}    Difinindo Usuario   ${PESSOA.nome}   ${PESSOA.sobrenome}    ${PALAVRAFAKE}    ${PESSOA.email}   
    Log To Console        ${NOVO_EMAIL}
    

Difinindo Usuario
    [Arguments]     ${NOME_USUARIO}   ${SOBRENOME_USUARIO}    ${PALAVRA_FAKE}    ${EMAIL_USUARIO}
    Log To Console             ${None}
    Log To Console             Nome Usuário: ${NOME_USUARIO}
    Log To Console             Sobrenome: ${SOBRENOME_USUARIO}
    Log To Console             Palavra Aleatoria: ${PALAVRA_FAKE}
    Log To Console             Email: ${EMAIL_USUARIO}
    ${PRE_EMAIL}    Set Variable    ${NOME_USUARIO}${SOBRENOME_USUARIO}${PALAVRA_FAKE}${EMAIL_USUARIO}
    [Return]    ${PRE_EMAIL}             
