*** Setting ***
Resource        base.robot
Test Setup      Nova sessão
Test Teardown   Encerra sessão

*** Test Cases ***
Login com Sucesso
    Go To                               ${url}    
    Login With                         72484373600                                 !234Qwer

*** Keywords ***
Login With
    [Arguments]                         ${uname}                        ${pass}
    Clear Element Text                  id:login
    Clear Element Text                  id:senha
    Sleep                               5
    Input Text                          id:login                        ${uname}
    Input Text                          id:senha                        ${pass}
    Sleep                               2
    Click Element                       class:but.but-pri
    Sleep                               5

#Responde pergunta secreta    
    Input Text                          id:resposta                                 12
    Click Element                       class:but.but-pri
    Sleep                               5
    Capture Page Screenshot

 
#Volta para o menu de solicitações 
    Sleep                               2 
    Click Element                       xpath://*[@id="sidebar"]/app-acesso-rapido/div/div/app-botao-aplicativo[4]/div/div/a
    
                                                     
     
    Sleep                               5

    #Click Element                       class:router-link-active        Solicitações