*** Settings ***
Documentation   Esse e um teste para a Tarefa 06

*** Variables ***

@{LISTA_NUMEROS}   1    2    3    4    5    6    7    8    9    10

*** Test Case ***
Caso de teste tarefa 04
    Crie uma keyword que percorra essa lista usando o FOR


*** Keywords ***
Crie uma keyword que percorra essa lista usando o FOR
    Log To Console    ${\n}
    FOR   ${INDICE}   ${NUMERO}   IN ENUMERATE   @{LISTA_NUMEROS}
        IF    ${NUMERO} == 5
            Log To Console    Eu sou o numero:${NUMERO}!
            No Operation
        ELSE IF    ${NUMERO} == 10
            Log To Console    Eu sou o numero:${NUMERO}!
            No Operation
        ELSE
            Log To Console    Eu não sou o número 5 e nem o 10!
        END
        
    END