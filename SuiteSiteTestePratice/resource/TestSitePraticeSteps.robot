# Configurações
*** Settings ***
Resource        ../Pages/TestSitePraticePage.robot
#-------------------------------------------------------

# Variáveis Globais
*** Variables ***

${BROSER}    chrome
${URL}       http://automationpractice.com/index.php
#-------------------------------------------------------
*** Keywords ****
### SETUP e TEARDOWN
Abrir Navegador
    Open Browser    ${URL}    ${BROSER}


Fechar Navegador
    Close Browser

### Passo a Passo cenário 1 ###
Acessar a página home do site
    Title Should Be            My Store
    Capture Page Screenshot

Digitar nome do produto "${PRODUTO}" no campo de pesquisa
    input text    ${IdCampoBusca}    ${PRODUTO}


Clicar no botao de pesquisa
    Click Element    ${NameBtnBusca}

Conferir se o produto "${PRODUTO}" foi listado no site
    wait until element is visible    css=#center_column > h1                                                                               
#    Title Should Be                  Search - My Store
    Page Should Contain image        ${ImgConfirmBlouse}
    Capture Page Screenshot
### cenário 2 ###



Conferir mensagem de erro "${MENSAGEM_ALERTA}"
    wait until element is visible    ${MsgErro_Alerta}
    Page Should Contain Element      ${MsgErro_Alerta}
    Capture Page Screenshot