*** Settings ***
Documentation   mostrar meses de acordo com a tarefa 03 do curso ROBOT

*** Variable ***
#Tipo Lista meses
@{MESES}    janeiro    fevereiro    março    abril    maio    junho    julho    agosto    setembro    outubro    novembro    dezembro

*** Test Cases ***
Caso de teste tarefa 03
    Uma keyword mostrar meses

*** Keywords ***
Uma keyword mostrar meses
    Log To Console    meses:
    Log To Console    Mes 01 e ${MESES[0]}
    Log To Console    Mes 02 e ${MESES[1]}
    Log To Console    Mes 03 e ${MESES[2]}
    Log To Console    Mes 04 e ${MESES[3]}
    Log To Console    Mes 05 e ${MESES[4]}
    Log To Console    Mes 06 e ${MESES[5]}
    Log To Console    Mes 07 e ${MESES[6]}
    Log To Console    Mes 08 e ${MESES[7]}
    Log To Console    Mes 09 e ${MESES[8]}
    Log To Console    Mes 10 e ${MESES[9]}
    Log To Console    Mes 11 e ${MESES[10]}
    Log To Console    Mes 12 e ${MESES[11]}
