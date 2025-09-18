*** Settings ***
Library          SeleniumLibrary    timeout=2000

Resource    ../resources/config.resource
Resource    ../page-objects/LoginPage.robot
Resource    ../page-objects/HomePage.robot
Resource    ../page-objects/CatalogPage.robot

*** Test Cases ***
Validar login correto
    Dado que o navegador pagina inicial esteja aberto
    Quando clicar em Sign In
    E preencher login de forma correta           ${txtEmail}      ${txtPassword}
    Então validar que o texto da home não seja vazio

Validar login incorreto
    Dado que o navegador pagina inicial esteja aberto
    Quando clicar em Sign In
    E preencher login de forma incorreto           ${txtEmailIncorreta}      ${txtPasswordIncorreta}
    Então validar a mensagem de login invalido

Validar buscar por produtos correta
    Dado que o navegador pagina inicial esteja aberto
    Quando realizar a busca por um produto correto                 ${txtProdutos}
    Então validar o texto do resultado encontrado

Validar buscar por produtos incorreta
    Dado que o navegador pagina inicial esteja aberto
    Quando realizar a busca por um produto incorreto                 ${txtProdutosIncorreto}
    Então validar o texto do resultado não encontrado

Validar navegar pelo menu T-Shirt
    Dado que o navegador pagina inicial esteja aberto
    Quando acessar o menu T Shirt
    Então validar o texto da seção home