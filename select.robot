*** Setting ***
Resource    base.robot
Test Setup  Nova sessão
Test Teardown   Encerra sessão

*** Test Cases ***
Selecionando por texto e validar pelo valor
    [tags]  texto
    Go To                           ${url}/dropdown
    Select From List By Label       class:avenger-list              Scott Lang
    ${selected}=                    Get Selected List Value         class:avenger-list
    Should Be Equal                 ${selected}                     7
    
Selecionando por valor e validar pelo texto
    [tags]  id
    Go To                           ${url}/dropdown
    Select From List By Value       id:dropdown                     6
    ${selected}=                    Get Selected List Label         id:dropdown
    Should Be Equal                 ${selected}                     Loki