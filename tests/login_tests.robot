*** Settings ***
Documentation     Teste de Login no SauceDemo usando Robot Framework e SeleniumLibrary.
Library           SeleniumLibrary

# Setup e Teardown rodam antes e depois de cada teste
Test Setup        Abrir Navegador
Test Teardown     Fechar Navegador

*** Variables ***
${URL}            https://www.saucedemo.com/
${BROWSER}        chrome
${USUARIO_VALIDO}    standard_user
${SENHA_VALIDA}      secret_sauce 
${SENHA_INVALIDA}    senha_errada_123

*** Test Cases ***
Login Com Sucesso
    [Documentation]    Verifica se o usuário consegue logar com credenciais válidas.
    Input Text      id:user-name    ${USUARIO_VALIDO}
    Input Text      id:password     ${SENHA_VALIDA}
    Click Button    id:login-button
    Wait Until Element Is Visible    css:.title    timeout=10s
    Element Text Should Be           css:.title    Products

Login Com Senha Invalida
    [Documentation]    Verifica se a mensagem de erro aparece ao usar senha errada.
    Input Text      id:user-name    ${USUARIO_VALIDO}
    Input Text      id:password     ${SENHA_INVALIDA}
    Click Button    id:login-button
    Element Should Contain    css:h3[data-test='error']    Epic sadface: Username and password do not match

*** Keywords ***
Abrir Navegador
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Set Selenium Implicit Wait    10s

Fechar Navegador

    Close Browser