*** Settings ***

Resource    ../locators/LoginPageLocators.robot
Resource    ../resources/config.resource
Resource    Base.robot
Library     SeleniumLibrary
Library     DateTime

*** Keywords ***

Quando clicar em Sign In

   Wait Until Element Is Visible       ${signIn}
   Click element                       ${signIn}

E preencher login de forma correta       [Arguments]        ${txtEmail}    ${txtPassword}

  Wait until element is visible    ${email}
  Input text                       ${email}                 ${txtEmail}
  Input text                       ${password}              ${txtPassword}
  Click element                    ${buttonLogin}


E preencher login de forma incorreto       [Arguments]        ${txtEmailIncorreto}    ${txtPasswordIncorreto}

  Wait until element is visible    ${email}
  Input text                       ${email}                 ${txtEmailIncorreto}
  Input text                       ${password}              ${txtPasswordIncorreto}
  Click element                    ${buttonLogin}