*** Settings ***
Resource    ../Config.robot

*** Variable ***
${IdCampoBusca}        id=search_query_top
${NameBtnBusca}        name=submit_search
${ImgConfirmBlouse}    xpath=//*[@id="center_column"]//*[@src='http://automationpractice.com/img/p/7/7-home_default.jpg']
${MsgErro_Alerta}      xpath=//*[@id="center_column"]/p