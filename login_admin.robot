*** Setting ***
Resource        base.robot
Test Setup      Nova sessão
Test Teardown   Encerra sessão

*** Test Cases ***
Login com Sucesso
    [tags]                              login_sucesso
    Go To                               ${url}    
    Login With                          16013393800                                 !tss3g@1218    
                                      # 38478235825                                 Mike@1990

*** Keywords ***
Login With
    [Arguments]                         ${uname}                        ${pass}
    Input Text                          id:login                        ${uname}
    Input Text                          id:senha                        ${pass}
    Click Element                       class:but.but-pri
    Sleep                               5
    Input Text                          id:resposta                                 12
    sleep                               5