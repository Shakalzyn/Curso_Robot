*** Settings ***
Documentation   mostrar meses de acordo com a tarefa 04 do curso ROBOT

*** Variable ***
#Tipo Lista meses
&{MESES}    jan=janeiro    
...    fev=fevereiro    
...    mar=março    
...    abr=abril    
...    mai=maio     
...    jun=junho    
...    jul=julho    
...    ago=agosto    
...    set=setembro   
...    out=outubro    
...    nov=novembro    
...    dez=dezembro    
...    normaldias=30   
...    longodias=31      
...    curtodias=28

*** Test Cases ***
Caso de teste tarefa 04
    Uma keyword mostrar meses

*** Keywords ***
Uma keyword mostrar meses
    Log To Console    meses:
    Log To Console    Mes 01 e ${MESES.jan} e tem ${MESES.longodias} dias
    Log To Console    Mes 02 e ${MESES.fev} e tem ${MESES.curtodias} dias
    Log To Console    Mes 03 e ${MESES.mar} e tem ${MESES.longodias} dias
    Log To Console    Mes 04 e ${MESES.abr} e tem ${MESES.normaldias} dias
    Log To Console    Mes 05 e ${MESES.mai} e tem ${MESES.longodias} dias
    Log To Console    Mes 06 e ${MESES.jun} e tem ${MESES.normaldias} dias
    Log To Console    Mes 07 e ${MESES.jul} e tem ${MESES.longodias} dias
    Log To Console    Mes 08 e ${MESES.ago} e tem ${MESES.normaldias} dias
    Log To Console    Mes 09 e ${MESES.set} e tem ${MESES.longodias} dias
    Log To Console    Mes 10 e ${MESES.out} e tem ${MESES.normaldias} dias
    Log To Console    Mes 11 e ${MESES.nov} e tem ${MESES.longodias} dias
    Log To Console    Mes 12 e ${MESES.dez} e tem ${MESES.normaldias} dias
