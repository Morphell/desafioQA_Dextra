*** Setting ***
Library     SeleniumLibrary

*** Variables ***
${url}                                  http://homologbeneficios.itsseg.com
#http://qabeneficios.itsseg.com

*** Keywords ***
Nova sessão
        Open Browser                    ${url}              chrome
        Set Window Size                 1366                768    
#Encerra sessão
        #Capture Page Screenshot
        #Close Browser 

