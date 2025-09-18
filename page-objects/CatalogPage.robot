*** Settings ***

Resource    ../locators/CatalogPageLocators.robot
Resource    ../resources/config.resource
Resource    Base.robot
Library     SeleniumLibrary
Library     DateTime

*** Keywords ***

Quando realizar a busca por um produto correto        [Arguments]       ${txtProduto}
     Wait until element is visible           ${search}
     Input text                              ${search}                  ${txtProduto}
     Click element                           ${buttonSearch}


Quando realizar a busca por um produto incorreto        [Arguments]       ${txtProduto}
     Wait until element is visible           ${search}
     Input text                              ${search}                  ${txtProduto}
     Click element                           ${buttonSearch}


Então validar o texto do resultado encontrado
     Wait until element is visible         ${resultadoEncontrado}
     ${texto}=    Get Text                 ${resultadoEncontrado}
     Should not be empty     ${texto}


Então validar o texto do resultado não encontrado
     Wait until element is visible         ${resultadoNaoEncontrado}
     ${texto}=    Get Text                 ${resultadoNaoEncontrado}
     Should not be empty     ${texto}

