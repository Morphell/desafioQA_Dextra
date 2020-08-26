*** Setting ***
Resource    base.robot
Test Setup  Nova sessão
Test Teardown   Encerra sessão

*** Test Cases ***
Selecionar por id
    Go To                               ${url}/radios
    Select Radio Button                movies  cap
    Radio Button Should Be Set To      movies  cap

Selecionar por value
    Go To                               ${url}/radios
    Select Radio Button                movies  guardians
    Radio Button Should Be Set To      movies  guardians

    Sleep                               5