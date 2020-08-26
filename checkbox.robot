*** Setting ***
Resource    base.robot
Test Setup  Nova sessão
Test Teardown   Encerra sessão

*** Variables ***
${check_thor}                       id:thor
${check_iron}                       css:input[value='iron-man']
${check_pantera}                    xpath://*[@id='checkboxes']/input[7]

*** Test Cases ***
Marcando Opção com Id
    [tags]  Id
    Go To                           ${url}/checkboxes
    Select Checkbox                 ${check_thor}
    Checkbox Should Be Selected     ${check_thor}

Marcando opção com CSS Selector  
    [tags]  CSS
    Go To                           ${url}/checkboxes
    Select Checkbox                 ${check_iron}
    Checkbox Should Be Selected     ${check_iron}   
    

Marcando opção com Xpath
    [tags]  Xpath
    Go To                           ${url}/checkboxes
    Select Checkbox                 ${check_pantera}
    Checkbox Should Be Selected     ${check_pantera}