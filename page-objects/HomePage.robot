*** Settings ***

Resource    ../locators/HomePageLocators.robot
Resource    ../resources/config.resource
Resource    Base.robot
Library     SeleniumLibrary
Library     DateTime

*** Keywords ***

Então validar a mensagem de login invalido
   Wait until element is visible    ${msgLoginInvalido}
   ${texto}=    Get Text            ${msgLoginInvalido}
   Should Be Equal              ${texto}                    ${txtMsgInvalido}

Então validar que o texto da home não seja vazio
   Wait until element is visible    ${myAccount}
   ${texto}=    Get Text            ${myAccount}
   Should Not Be Empty              ${texto}

Quando acessar o menu T Shirt
   Wait until element is visible    ${menuBlog}
   Click element                    ${menuBlog}

Então validar o texto da seção home
   Wait until element is visible    ${txtBlog}
   ${texto}=    Get Text            ${txtBlog}
   Should not be empty              ${txtBlog}