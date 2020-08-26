*** Setting ***
Resource        base.robot
Test Setup      Nova sessão
#Test Teardown   Encerra sessão

*** Test Cases ***
Login com Sucesso
    Go To                               ${url}    
    Login With                         29786269098                                 !234Qwer 
 

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

 #  Clicar no App de Solicitações
    Click Element                       xpath://*[@id="sidebar"]//*[@title="Solicitar"]                                  
    Sleep                               5
#=======================================================================================================
    # Seleciona Seguro Saúde
    Select From List by Label           class:select.mb         Seguro Saúde
    Sleep                                  2
    #validar tela
    Title Should Be                     Solicitar Seguro Saúde   
    Sleep                               2
    Capture Page Screenshot 
    #Criar solicitação
    Sleep                               3
    Click Element                       class:but.but-pri   
    #Valida mensagem na tela    
    Page Should Contain                 Erro
    Page Should Contain                 Nenhuma alteração foi feita.
    Capture Page Screenshot 
    Execute Javascript                  window.scrollTo (0, 1500)
    Sleep                               3
    #cancela solicitação
    Click Element                       xpath://*[@id="main-interna"]/main/div[3]/div[2]/button[1]
#=======================================================================================================
    # Seleciona Odonto 
    Sleep                               2
    Select From List by Label           class:select.mb         Odonto 
    Sleep                               2 
    Title Should Be                     Solicitar Seguro Odontológico 
    Sleep                               2 
    Capture Page Screenshot
    Sleep                               4
    Click Element                       xpath://*[@id="main-interna"]/main/div[2]/div/div[1]/div[2]/div[1]/div[1]/div[2]/label

    Sleep                               2
    Click Element                       class:but.but-pri                              
    Sleep                               3
    Execute Javascript                  window.scrollTo (0, 1500)
    Sleep                               2
    Click Element                       xpath://*[@id="main-interna"]/main/div[3]/div[2]/button[2]
    Sleep                               4             
    Capture Page Screenshot  

    # Cancela solicitação feita
    Click Element                       xpath://*[@id="main-interna"]/main/div[1]/app-card/div/a
    Sleep                               3
    Click Element                       xpath://*[@id="main-interna"]/div[3]/div/div[3]/ul/li[1]/button 
                                              
    #class:but.but-vermelho                          
    Input Text                          id:exampleFormControlTextarea1              Automação cancelando solicitação
    Sleep                               2
    Click Element                       xpath://*[@id="modalCancelar"]/div/div/div[3]/button[2]
    Sleep                               2
    Capture Page Screenshot
    Sleep                               2

    #  Clicar no App de Solicitações
    Click Element                       xpath://*[@id="quick-access"]/app-acesso-rapido/div/div/app-botao-aplicativo[5]/div/div/a
    Sleep                               2
#=======================================================================================================

    Seleciona Previdência Privada 
  
    Select From List by Label           class:select.mb         Previdência Privada 
    Sleep                               2 
    Title Should Be                     Solicitar Previdência Privada 
    Sleep                               4
                                        #xpath://*[@id="main-interna"]/main/div[2]/div/div/div[1]/select/option[2]
                                              #//*[@id="main-interna"]/main/div[2]/div/div/div[1]/select/option[2]
    Click Element                       xpath://*[@id="main-interna"]/main/div[2]/div/div[1]/div[1]/select/option[2]
    Sleep                               2                                    
    Click Element                       xpath://*[@id="main-interna"]/main/div[2]/div/div[1]/div[2]/div[2]/div[1]/label
    click Element                       xpath://*[@id="main-interna"]/main/div[2]/div/div[1]/div[2]/div[4]/div[1]
    Sleep                               4
    Input Text                          xpath:/html/body/app-root/app-navegacao/div/app-previdencia-privada/div/main/div[2]/div/div[1]/div[2]/div[4]/div[2]/div/div/input                                 5   
    Sleep                               4
    
    Execute Javascript                  window.scrollTo (0, 1300)
    Sleep                               10 

                                       
    Click Element                       xpath://*[@id="main-interna"]/main/div[2]/div/div[1]/div[2]/div[6]/div[1]/label/span[2]
    Sleep                               3
    Click Element                       xpath://*[@id="main-interna"]/main/div[2]/div/div[2]/button[2]
    Sleep                               4
    Click Element                       xpath://*[@id="main-interna"]/main/div[3]/div/div[4]/div[1]/label[1]/span[1]
    Sleep                               2
    Click Element                       xpath://*[@id="main-interna"]/main/div[3]/div/div[4]/div[2]/label[1]/span[1]
    Sleep                               4
    Click Element                       xpath://*[@id="main-interna"]/main/div[3]/div/div[4]/div[3]/label[1]/span[1]
    Execute Javascript                  window.scrollTo (0, 1300)
    Sleep                               4    
    Click Element                       xpath://*[@id="main-interna"]/main/div[3]/div/div[4]/div[4]/label[2]/span[1]                                             
    #Screnshot                                           
    Sleep                               2                               
    Click Element                       xpath:/html/body/app-root/app-navegacao/div/app-previdencia-privada/div/main/div[3]/div[2]/button[2]
    Sleep                               4     
    Execute Javascript                  window.scrollTo (0, 1300)       
    Click Element                       xpath://*[@id="main-interna"]/main/div[4]/div[2]/button[2]
    Capture Page Screenshot                 
    Sleep                               8
    Click Element                       xpath:/html/body/app-root/app-navegacao/div/app-solicitacoes/div/main/div[1]/app-card/div/a   
    Capture Page Screenshot                 
    
    # Cancela solicitação feita
    Execute Javascript                  window.scrollTo (0, 0)  
    Sleep                               6                                                  
    Click Element                       xpath://*[@id="main-interna"]/div[3]/div/div[2]/ul/li[1]/button
    Input Text                          id:exampleFormControlTextarea1                          Automação cancelando solicitação
    Click Element                       xpath://*[@id="modalCancelar"]/div/div/div[3]/button[2]
    Capture Page Screenshot

    #Clicar no App de Solicitações
    Sleep                               10
    Click Element                       xpath://*[@id="quick-access"]/app-acesso-rapido/div/div/app-botao-aplicativo[5]/div/div/a                                 
    Sleep                               5
#==============================================================================
  #Seleciona Seguro de Vida 
    Select From List by Label           class:select.mb                             Seguro de Vida  
    Sleep                               2 
    Title Should Be                     Solicitar Seguro de Vida 
    Sleep                               4
    Click Element                       class:but.but-pri.w-100.ml-0.mb
    Input Text                          name:nome                           Automação Teste
    Select From List by Label           name:listGrauParentesco             Filho(a)
    Input Text                          name:datadenascimento               1966-08-27
    Input Text                          name:porcentagemBeneficiario        100
    Select From List by Label           name=sexo                           Masculino
    Click Element                       xpath://*[@id="exampleModal"]/div/div/div[3]/button[2]
    Sleep                               2
    Click Element                       xpath://*[@id="main-interna"]/main/div[2]/div[2]/button[2]    
    Execute Javascript                  window.scrollTo (0, 1300)
    Sleep                               2
    Click Element                       xpath://*[@id="main-interna"]/main/div[3]/div[2]/button[2]                                        
    Sleep                               3
    Capture Page Screenshot     

    #Cancela solicitação
    Sleep                               2
    Click Element                       xpath://*[@id="main-interna"]/main/div[4]/div[2]/button
    Sleep                               2
    Click Element                       xpath://*[@id="main-interna"]/main/div[1]/app-card/div/a
    Click Element                       xpath://*[@id="main-interna"]/div[3]/div/div[2]/ul/li[1]/button
    click Element                       xpath://*[@id="exampleFormControlTextarea1"]  
    Input Text                          xpath://*[@id="exampleFormControlTextarea1"]                        Automação cancelando solicitação 
    Click Element                       xpath://*[@id="modalCancelar"]/div/div/div[3]/button[2]   
    Sleep                               3
    Capture Page Screenshot

    #Volta para o menu de solicitações 
    Sleep                               2 
    Click Element                       xpath://*[@id="main-interna"]//*[@title="Solicitar"] 
    Sleep                               2 
# #=======================================================================================================  
   #Seleciona Pack Filho 
    Select From List by Label           class:select.mb                 Pack Filhos VGBL - Previdência 
    Sleep                               2 
    Title Should Be                    Solicitar Previdência Privada VGBL Filhos 
    Sleep                               2 
    Capture Page Screenshot                                           

   # Volta para o menu de solicitações 
    Sleep                               2 
    Click Element                       xpath://*[@id="quick-access"]/app-acesso-rapido/div/div/app-botao-aplicativo[5]/div/div/a
    Sleep                               5

#=======================================================================================================   
    # Seleciona Resgate 
#     Select From List by Label           class:select.mb                 Resgate Previdência 
#     Sleep                               2 
#     Title Should Be                     Solicitar Resgate Previdência Privada 
#     Sleep                               2 
#     Capture Page Screenshot

#     Volta para o menu de solicitações 
#     Sleep                               2 
#     Click Element                       xpath://*[@id="main-interna"]//*[@title="Solicitar"] 
#     Sleep                               2
# =======================================================================================================
    Seleciona Ticket Dúvida 
    Select From List by Label           class:select.mb                 Ticket de Dúvidas 
    Sleep                               2 
    Title Should Be                     Solicitar Suporte 
    Sleep                               2 
    Capture Page Screenshot

    #Volta para o menu de solicitações 
    Sleep                               2 
    Click Element                       xpath://*[@id="main-interna"]//*[@title="Solicitar"] 
    Sleep                               5 
    # Seleciona Segunda Via 
    Select From List by Label           class:select.mb                 Segunda Via de Cartão 
    Sleep                               2 
    Title Should Be                     Solicitar Segunda Via 
    Sleep                               2 
    Capture Page Screenshot

    #Volta para o menu de solicitações 
    Sleep                               2 
    Click Element                       xpath://*[@id="quick-access"]//*[@title="Solicitar"] 
    Sleep                               5

    # Seleciona Vacina 
    Select From List by Label           class:select.mb                 Campanha de Vacinação 
    Sleep                               2 
    Title Should Be                     Solicitar Vacina 
    Sleep                               2 
    Click Element                       xpath://*[@id="main-interna"]/main/div[2]/div[1]/div[2]/select/option[2]
    Execute Javascript                  window.scrollTo (0, 1300)
    Sleep                               2
    Click Element                       xpath://*[@id="main-interna"]/main/div[2]/div[1]/div[3]/div[2]/div[2]/button
    Input Text                          name:nome                           Automação Teste
    Click Element                       xpath://*[@id="modalBeneficiario"]/div/div/div[2]/form/div[2]/select/option[6]
    Input Text                          id:idadeBeneficiario                17
    Click Element                       xpath://*[@id="modalBeneficiario"]/div/div/div[3]/button[3]
    Click Element                       xpath://*[@id="main-interna"]/main/div[2]/div[2]/button[2]
    Execute Javascript                  window.scrollTo (0, 1300)    
    Click Element                       xpath://*[@id="main-interna"]/main/div[3]/div[2]/button[2]
    Sleep                               2
    Click Element                       xpath://*[@id="main-interna"]/main/div[1]/app-card/div/a
    Sleep                               2
    Click Element                       xpath://*[@id="main-interna"]/div[3]/div/div[2]/ul/li[1]/button
    Sleep                               2
    Input Text                          xpath://*[@id="exampleFormControlTextarea1"]                        Automação cancelando solicitação
    Click Element                       xpath://*[@id="modalCancelar"]/div/div/div[3]/button[2]
    # Sleep                               2    
    # Click Element                       xpath:/html/body/app-root/app-navegacao/div/app-vacina/div/main/div[3]/div[2]/button[2]   
    # Sleep                               2
    Capture Page Screenshot
    #Volta para o menu de solicitações 
    Sleep                               2 
    Click Element                       xpath://*[@id="quick-access"]//*[@title="Solicitar"] 
    Sleep                               5

    Click Element                       class:router-link-active        Solicitações    
#=======================================================================================================