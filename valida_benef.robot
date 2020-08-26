*** Setting ***
Resource        base.robot
Test Setup      Nova sessão
Test Teardown   Encerra sessão

*** Test Cases ***
Login com Sucesso
    Go To                               ${url}    
    Login With                          72484373600                                 !234Qwer 
    
*** Keywords ***
Login With
    [Arguments]                         ${uname}                        ${pass}
    Input Text                          id:login                        ${uname}
    Input Text                          id:senha                        ${pass}
    Click Element                       class:but.but-pri
    Sleep                               5           
        


    Input Text                          id:resposta                                 12
    sleep                               5
    Click Element                       class:but.but-pri
    sleep                               5
    Capture Page Screenshot
    #  Clicar no App de Benefícios 
    Click Element                       xpath://*[@id="sidebar"]//*[@title="Benefícios"]
                                       
    sleep                               5

    # Validar lista de benefícios
    Title Should Be                     Benefícios

    # Grid Farmácia
    Element Should Contain              xpath://*[@id="main-interna"]/main/div[1]/app-card/div/div[1]/div/div/h5            BENEFÍCIO
    Element Should Contain              xpath://*[@id="main-interna"]/main/div[1]/app-card/div/div[1]/div/div/h2            Farmácia
    Element Should Contain              xpath://*[@id="main-interna"]/main/div[1]/app-card/div/div[1]/div/div/app-status/div/h5     ATIVA
    Element Should Contain              xpath://*[@id="main-interna"]/main/div[1]/app-card/div/div[2]/div/div[1]/h5         OPÇÃO        
    Element Should Contain              xpath://*[@id="main-interna"]/main/div[1]/app-card/div/div[2]/div/div[1]/h3         R$ 0,00
    Element Should Contain              xpath://*[@id="main-interna"]/main/div[1]/app-card/div/div[2]/div/div[2]/h5         INÍCIO VIGÊNCIA
    Element Should Contain              xpath://*[@id="main-interna"]/main/div[1]/app-card/div/div[2]/div/div[2]/h3         13 jun, 2000
    Element Should Contain              xpath://*[@id="main-interna"]/main/div[1]/app-card/div/div[2]/div/div[3]/h5         DESCONTO
    Element Should Contain              xpath://*[@id="main-interna"]/main/div[1]/app-card/div/div[2]/div/div[3]/h3         R$ 0,00/mês

        # Grid Previdência                    
    Element Should Contain              xpath://*[@id="main-interna"]/main/div[2]/app-card/div/div[1]/div/div/h5            BENEFÍCIO
    Element Should Contain              xpath://*[@id="main-interna"]/main/div[2]/app-card/div/div[1]/div/div/h2            PGBL
    Element Should Contain              xpath://*[@id="main-interna"]/main/div[2]/app-card/div/div[1]/div/div/app-status/div/h5     ATIVA
    Element Should Contain              xpath://*[@id="main-interna"]/main/div[2]/app-card/div/div[2]/div/div[1]/h5         OPÇÃO        
    Element Should Contain              xpath://*[@id="main-interna"]/main/div[2]/app-card/div/div[2]/div/div[1]/h3         Previdência PGBL
    Element Should Contain              xpath://*[@id="main-interna"]/main/div[2]/app-card/div/div[2]/div/div[2]/h5         INÍCIO VIGÊNCIA
    Element Should Contain              xpath://*[@id="main-interna"]/main/div[2]/app-card/div/div[2]/div/div[2]/h3         27 mar, 2020
    Element Should Contain              xpath://*[@id="main-interna"]/main/div[2]/app-card/div/div[2]/div/div[3]/h5         DESCONTO
    Element Should Contain              xpath://*[@id="main-interna"]/main/div[2]/app-card/div/div[2]/div/div[3]/h3         R$ 0,00/mês

    # Validar Detalhes do Benefício Farmácia
    Click Element                       class:card-footer.ng-star-inserted
    sleep                               7

    ELement Should Contain              xpath://*[@id="main-interna"]/main/div[1]/app-card/div/div/div/div/h5           BENEFÍCIO
    ELement Should Contain              xpath://*[@id="main-interna"]/main/div[1]/app-card/div/div/div/div/h2           Farmácia
    ELement Should Contain              class:success                                                                   ATIVA
    ELement Should Contain              class:mb.ng-star-inserted                                                       Dados do benefício
    ELement Should Contain              xpath://*[@id="main-interna"]/main/div[2]/app-bloco/div/div[2]/div/div[1]/div/div[1]/p          INÍCIO DE VIGÊNCIA
    ELement Should Contain              xpath://*[@id="main-interna"]/main/div[2]/app-bloco/div/div[2]/div/div[1]/div/div[2]/p          10 fev, 2000
    ELement Should Contain              xpath://*[@id="main-interna"]/main/div[2]/app-bloco/div/div[2]/div/div[3]/div/div[1]/p          OPÇÃO
    ELement Should Contain              xpath://*[@id="main-interna"]/main/div[2]/app-bloco/div/div[2]/div/div[3]/div/div[2]/p          R$ 0,00
    ELement Should Contain              xpath://*[@id="main-interna"]/main/div[2]/app-bloco/div/div[2]/div/div[6]/div/div[1]/p          DESCONTO
    ELement Should Contain              xpath://*[@id="main-interna"]/main/div[2]/app-bloco/div/div[2]/div/div[6]/div/div[2]/p          R$ 0,00
    ELement Should Contain              xpath://*[@id="main-interna"]/main/div[2]/app-bloco/div/div[2]/div/div[7]/div/div[1]/p          DESCONTO TOTAL
    ELement Should Contain              xpath://*[@id="main-interna"]/main/div[2]/app-bloco/div/div[2]/div/div[7]/div/div[2]/p          R$ 0,00/mês

    sleep                               5