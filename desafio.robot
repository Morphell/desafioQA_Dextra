*** Setting ***
Library     SeleniumLibrary


        
***Test Cases***
Validar Cadastro no Site Americanas
#Logar
        Open Browser                    http://https://www.americanas.com.br/            chrome
        Maximize Browser Window
        
#
        Click Element                   class:usr-act-text
        Sleep                           3
        Click Element                   class:usr-signup


Validar mensagem de erro e-mail
        Input Text                      id:email-input                  teste@hotmail.com   
        Input Text                      id:password-input               !234Qwer  
        Wait Until Page Contains        E-mail já cadastrado     
        Capture Page Screenshot  

Validar mensagem de erro senha
        Input Text                      id:email-input                  email@servidor.com   
        Input Text                      id:password-input               !23  
        Wait Until Page Contains        fraca 
        Capture Page Screenshot 

Validar mensagem de erro cpf
        Input Text                      id:email-input                  email@servidor.com   
        Input Text                      id:password-input               !234Qweruu  
        Input Text                      id:cpf-input                    88888888888
        Input Text                      id:name-input                   Wagner da Silva
        Input Text                      id:birthday-input               27081966
        Click Element                   class:radio.inputGroup-radio
        Input Text                      id:phone-input                  11980534868
        Click Element                   class:btn.btn-primary.submit-button.cadastroForm-submit 
        Wait Until Page Contains        class:inputGroup-error          Campo inválido 
        Capture Page Screenshot 


Validar busca
        Input Text                      id:email-input                  wagner66@mailinator.com   
        Input Text                      id:password-input               !234Qwer
        Input Text                      id:cpf-input                    02867845483
        Input Text                      id:name-input                   Wagner da Silva
        Input Text                      id:birthday-input               27081966
        Click Element                   class:radio.inputGroup-radio
        Input Text                      id:phone-input                  11980534868
        Click Element                   class:btn.btn-primary.submit-button.cadastroForm-submit
        Sleep                           3
        Input Text                      id:h_search-input               Moto G6
        Click Element                   id:h_search-btn
        Sleep                           3
        Click Element                   clas:Info-bwhjk3-5.gWiKbT.ViewUI-sc-1ijittn-6.iXIDWU                   
        click Element                   id:btn-buy
       Capture Page Screenshot

        Input Text                      class:freightForm               03143001
        Click Element                   class:freightForm-okBtn.btn.btn-default.btn-xs.nowrap
        Sleep                           3
        Click Element                   class:Wrapper-sc-1i9za0i-3.kmswup.ViewUI-sc-1ijittn-6.iXIDWU
        Click Element                   id:buy-button
        Sleep                           3

        Input Text                      id:edit-recipientDocumentNumber         02867845483                            
        Input Text                      id:edit-cep                             03143001
        Input Text                      id:edit-number                          363
        Input Text                      id:edit-reference                       Ao lado da escola
        Click Element                   class:btn display-xs-block btn-primary ng-binding
        Sleep                           3

        Input Element                   class:creditCardForm-input.--sm .ng-valid-min.ng-valid-required.ng-dirty.ng-valid-number.ng-touched     10
        Wait Until Page Contains        10x de r$       
        Wait Until Page Contains        sem juros

                                    
        