*** Settings ***
### SETUP Roda keyword antes da swite ou antes de um teste
### TEARDOWN Roda keyword depois de uma swuite ou de um teste
Resource         ../resource/TestSitePraticeSteps.robot
Test Setup       Abrir Navegador
Test Teardown    Fechar Navegador

*** Test Cases ***
Cenário de Teste 1: Produto Existente
   Acessar a página home do site
   Digitar nome do produto "Blouse" no campo de pesquisa
   Clicar no botao de pesquisa
   Conferir se o produto "Blouse" foi listado no site

Cenário de Teste 2: Produto Não Existente
   Acessar a página home do site
   Digitar nome do produto "ItemNãoExistente" no campo de pesquisa
   Clicar no botao de pesquisa
   Conferir mensagem de erro "No results were found for your search "ItemNãoExistente""